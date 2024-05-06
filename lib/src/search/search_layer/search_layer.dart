import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_mapkit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_mapkit/src/bindings/image/image_provider.dart'
    as image_provider;
import 'package:yandex_maps_mapkit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_mapkit/src/mapkit/map/icon_style.dart'
    as mapkit_map_icon_style;
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as runtime_error;
import 'package:yandex_maps_mapkit/src/search/business_filter.dart'
    as search_business_filter;
import 'package:yandex_maps_mapkit/src/search/filter_collection.dart'
    as search_filter_collection;
import 'package:yandex_maps_mapkit/src/search/search_layer/assets_provider.dart'
    as search_search_layer_assets_provider;
import 'package:yandex_maps_mapkit/src/search/search_layer/request_type.dart'
    as search_search_layer_request_type;
import 'package:yandex_maps_mapkit/src/search/search_layer/search_result_item.dart'
    as search_search_layer_search_result_item;
import 'package:yandex_maps_mapkit/src/search/search_manager.dart'
    as search_search_manager;
import 'package:yandex_maps_mapkit/src/search/search_metadata.dart'
    as search_search_metadata;
import 'package:yandex_maps_mapkit/src/search/search_options.dart'
    as search_search_options;

part 'search_layer.containers.dart';
part 'search_layer.impl.dart';

/// Interface for callbacks on search events.
abstract class SearchResultListener {
  /// Called when the search starts.
  ///
  /// [requestType] Type of the started request.
  void onSearchStart(search_search_layer_request_type.RequestType requestType);

  /// Called after a succesful search.
  ///
  /// [requestType] Type of the finished request.
  void onSearchSuccess(
      search_search_layer_request_type.RequestType requestType);

  /// Called on any search error.
  ///
  /// [error] Error occured.
  /// [requestType] Type of the finished request.
  void onSearchError(runtime_error.Error error,
      search_search_layer_request_type.RequestType requestType);

  /// Called when presented results are updated and thus search results
  /// list can change.
  void onPresentedResultsUpdate();

  /// Called before all results are cleared.
  void onAllResultsClear();
}

/// Interface for callbacks on placemark events.
abstract class PlacemarkListener {
  /// Called when user taps on placemark.
  ///
  /// [searchResultItem] Corresponding search result.
  core.bool onTap(
      search_search_layer_search_result_item.SearchResultItem searchResultItem);
}

/// The search layer handles the map search requests and displays the
/// results on the map automatically. It also handles the map movements
/// and resubmits searches when needed.
abstract class SearchLayer implements ffi.Finalizable {
  /// Search layer visibility. Visible by default. While the layer is
  /// invisible resubmits are not performed on map moves, but all the state
  /// changing methods (`submitQuery`, `resubmit`, `deselectPlacemark`, and
  /// other) are executed as usual.
  core.bool get visible;
  set visible(core.bool val);

  /// Submit search query with search options.
  ///
  /// [query] User query
  /// [searchOptions] Search options
  void submitQuery(
    search_search_options.SearchOptions searchOptions, {
    required core.String query,
  });

  /// Submit search query with search options near provided geometry.
  ///
  /// [query] User query.
  /// [geometry] Geometry to search near. Supported types: point, bounding
  /// box, polyline and polygon. Polygon is expected to be a search window:
  /// 4 points in outer ring (or 5 if the last point is equal to the first)
  /// and no inner rings.
  /// [searchOptions] Search options.
  void submitQueryWithGeometry(
    mapkit_geometry_geometry.Geometry geometry,
    search_search_options.SearchOptions searchOptions, {
    required core.String query,
  });

  /// Submit search request for URI resolution. Allows multiple objects in
  /// response.
  ///
  /// [uri] Object URI.
  /// [searchOptions] Additional search parameters. See
  /// [search_search_options.SearchOptions] definition for details, and
  /// 'searchByURI' method in [search_search_manager.SearchManager] for
  /// currently supported options.
  void searchByUri(
    search_search_options.SearchOptions searchOptions, {
    required core.String uri,
  });

  /// Manual resubmit.
  void resubmit();

  /// Enable or disable search requests (resubmits and submits) when the
  /// map is moved. Requests are enabled by default.
  ///
  /// [enable] Enable requests if true, disable otherwise.
  void enableRequestsOnMapMoves(core.bool enable);

  /// Enable or disable moving the map on primary search response. Map
  /// moving is enabled by default.
  ///
  /// [enable] Enable map moving if true, disable otherwise.
  void enableMapMoveOnSearchResponse(core.bool enable);

  /// Check if more results could be loaded.
  core.bool hasNextPage();

  /// Load the next page of results.
  void fetchNextPage();

  /// Clear the displayed search results from the map.
  void clear();

  /// Get the list of search results.
  core.List<search_search_layer_search_result_item.SearchResultItem>
      getSearchResultsList();

  /// Get the last search response metadata.
  search_search_metadata.SearchMetadata? searchMetadata();

  /// Set the search manager. Do not use this method; it is for internal
  /// use only.
  ///
  /// [searchManager] Search manager
  void setSearchManager(search_search_manager.SearchManager searchManager);

  /// Add the search result listener, which will receive notifications from
  /// the search layer.
  ///
  /// The class does not retain the object in the 'searchResultListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [searchResultListener] Search result listener to add.
  void addSearchResultListener(SearchResultListener searchResultListener);

  /// Remove search result listener.
  ///
  /// [searchResultListener] Search result listener to remove.
  void removeSearchResultListener(SearchResultListener searchResultListener);

  /// Add a placemark listener, which will receive notifications from the
  /// search layer.
  ///
  /// The class does not retain the object in the 'placemarkListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [placemarkListener] Placemark listener to add.
  void addPlacemarkListener(PlacemarkListener placemarkListener);

  /// Remove placemark listener
  ///
  /// [placemarkListener] Placemark listener to remove.
  void removePlacemarkListener(PlacemarkListener placemarkListener);

  /// Set sort order of the results by distance from given geometry.
  void setSortByDistance(mapkit_geometry_geometry.Geometry origin);

  /// When sorting by distance from polyline sets position on this
  /// polyline. Has the same effect as sorting by distance from the
  /// sub-polyline from `position` to the end of the polyline. Throws if no
  /// polyline is set or position is out of range.
  ///
  /// [position] new polyline position value
  void setPolylinePosition(mapkit_geometry_geometry.PolylinePosition position);

  /// Reset the sort if it was previously set.
  void resetSort();

  /// Set search filters.
  ///
  /// [filters] Business filters
  void setFilterCollection(
      search_filter_collection.SearchFilterCollection? filters);

  /// search.FilterCollection)} instead.
  void setFilters(
      core.List<search_business_filter.SearchBusinessFilter> filters);

  /// Set a custom assets provider, which provides images, sizes and icon
  /// styles for placemarks.
  ///
  /// The class does not retain the object in the 'provider' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [provider] Assets provider (must not be null)
  void setAssetsProvider(
      search_search_layer_assets_provider.AssetsProvider provider);

  /// Reset the assets provider to default.
  void resetAssetsProvider();

  /// Select the placemark by ID.
  ///
  /// [geoObjectId] Placemark identifier
  void selectPlacemark(core.String geoObjectId);

  /// Selected placemark ID.
  /// Return Placemark identifier if any placemark is selected, otherwise
  /// none.
  core.String? selectedPlacemarkId();

  /// Deselect all placemarks.
  void deselectPlacemark();

  /// Update the icon image for each suitable placemark. If the placemark
  /// is not found, the image will be put in a queue and will be applied
  /// once when the placemark is created. This is not the normal way to set
  /// the image. It is highly advisable to return the right image from
  /// AssetsProvider.
  ///
  /// [geoObjectId] Placemark identifier
  /// [iconType] Icon type
  /// [image] Icon image
  /// [style] Icon style
  void forceUpdateIcon(
    search_search_layer_assets_provider.PlacemarkIconType iconType,
    image_provider.ImageProvider image,
    mapkit_map_icon_style.IconStyle style, {
    required core.String geoObjectId,
  });

  /// Force reloading all visible pins from AssetProvider. Use when there
  /// is a reason to update ALL the icons simultaneously (for example icon
  /// theme change, day/night mode, and other). This can be a pretty
  /// expensive operation, as it wipes all the map objects off of the layer
  /// and creates them from scratch. Use only if absolutely necessary.
  void forceUpdateMapObjects();

  /// If enabled, the search layer will obtain and set advertising icons
  /// without asking AssetsProvider.
  ///
  /// [enable] Enable mode if true, disable otherwise
  void obtainAdIcons(core.bool enable);

  /// Apply insets (in pixels) to the screen. If inset is not zero, search
  /// in the cut-off area will not be performed.
  ///
  /// [top] Top inset.
  /// [left] Left inset.
  /// [bottom] Bottom inset.
  /// [right] Right inset.
  void setInsets({
    required core.int top,
    required core.int left,
    required core.int bottom,
    required core.int right,
  });
}
