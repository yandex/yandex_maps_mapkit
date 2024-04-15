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

/// @nodoc
class _SearchResultListenerWrapper implements ffi.Finalizable {
  _SearchResultListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_SearchResultListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

/// Interface for callbacks on search events.
abstract class SearchResultListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<SearchResultListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<SearchResultListener, _SearchResultListenerWrapper?>();

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

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(SearchResultListener obj) {
    final ptr = _SearchResultListener_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>(
            _SearchResultListener_onSearchStart),
        ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Int64)>(_SearchResultListener_onSearchSuccess),
        ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
                ffi.Int64)>(_SearchResultListener_onSearchError),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _SearchResultListener_onPresentedResultsUpdate),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _SearchResultListener_onAllResultsClear));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _SearchResultListenerWrapper(ptr);
    _SearchResultListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchResultListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _SearchResultListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_search_search_layer_SearchResultListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi
            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>,
        ffi.Pointer<
            ffi
            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>,
        ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Int64)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)
    _SearchResultListener_new = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Int64)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_search_search_layer_SearchResultListener_new')
        .asFunction(isLeaf: true);

final _SearchResultListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchResultListener_free');
void _SearchResultListener_onSearchStart(
    ffi.Pointer<ffi.Void> _ptr, core.int requestType) {
  final listener = SearchResultListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onSearchStart(
        search_search_layer_request_type.RequestType.fromInt(requestType));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _SearchResultListener_onSearchSuccess(
    ffi.Pointer<ffi.Void> _ptr, core.int requestType) {
  final listener = SearchResultListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onSearchSuccess(
        search_search_layer_request_type.RequestType.fromInt(requestType));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _SearchResultListener_onSearchError(ffi.Pointer<ffi.Void> _ptr,
    ffi.Pointer<ffi.Void> error, core.int requestType) {
  final listener = SearchResultListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onSearchError(runtime_error.Error.fromNativePtr(error),
        search_search_layer_request_type.RequestType.fromInt(requestType));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _SearchResultListener_onPresentedResultsUpdate(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener = SearchResultListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onPresentedResultsUpdate();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _SearchResultListener_onAllResultsClear(ffi.Pointer<ffi.Void> _ptr) {
  final listener = SearchResultListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onAllResultsClear();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

/// @nodoc
class _PlacemarkListenerWrapper implements ffi.Finalizable {
  _PlacemarkListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer = ffi.NativeFinalizer(_PlacemarkListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

/// Interface for callbacks on placemark events.
abstract class PlacemarkListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<PlacemarkListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<PlacemarkListener, _PlacemarkListenerWrapper?>();

  /// Called when user taps on placemark.
  ///
  /// [searchResultItem] Corresponding search result.
  core.bool onTap(
      search_search_layer_search_result_item.SearchResultItem searchResultItem);

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(PlacemarkListener obj) {
    final ptr = _PlacemarkListener_new(ffi.Pointer.fromFunction<
            ffi.Bool Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
        _PlacemarkListener_onTap, false));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _PlacemarkListenerWrapper(ptr);
    _PlacemarkListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(PlacemarkListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(ffi.Pointer<ffi.Void>, core.int, core.int)
    _PlacemarkListenersetSendPort = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
            'yandex_flutter_search_search_layer_PlacemarkListener_setSendPort')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _PlacemarkListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<
                            ffi
                            .NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_search_search_layer_PlacemarkListener_new')
        .asFunction(isLeaf: true);

final _PlacemarkListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_PlacemarkListener_free');
core.bool _PlacemarkListener_onTap(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> searchResultItem) {
  final listener = PlacemarkListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return listener.onTap(
        search_search_layer_search_result_item.SearchResultItem.fromNativePtr(
            searchResultItem));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

/// The search layer handles the map search requests and displays the
/// results on the map automatically. It also handles the map movements
/// and resubmits searches when needed.
@bindings_annotations.WeakInterface('search.search_layer.SearchLayer')
@bindings_annotations.ContainerData(
    toNative: 'SearchLayer.getNativePtr',
    toPlatform:
        '(val) => SearchLayer.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class SearchLayer implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchLayer_free.cast());

  /// @nodoc
  SearchLayer.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SearchLayer.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory SearchLayer.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SearchLayer? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _SearchLayer_check(ptr);
  }

  @internal

  /// @nodoc
  static SearchLayer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchLayer.fromNativePtr(ptr);
  }

  /// Search layer visibility. Visible by default. While the layer is
  /// invisible resubmits are not performed on map moves, but all the state
  /// changing methods (`submitQuery`, `resubmit`, `deselectPlacemark`, and
  /// other) are executed as usual.
  core.bool get visible {
    return _SearchLayer_get_visible(ptr);
  }

  set visible(core.bool val) {
    return _SearchLayer_set_visible(ptr, val);
  }

  /// Submit search query with search options.
  ///
  /// [query] User query
  /// [searchOptions] Search options
  void submitQuery(
    search_search_options.SearchOptions searchOptions, {
    required core.String query,
  }) {
    _SearchLayer_submitQuery(
      ptr,
      to_native.toNativeString(query),
      search_search_options.SearchOptions.toNative(searchOptions),
    );
  }

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
  }) {
    _SearchLayer_submitQueryWithGeometry(
      ptr,
      to_native.toNativeString(query),
      mapkit_geometry_geometry.Geometry.toNative(geometry),
      search_search_options.SearchOptions.toNative(searchOptions),
    );
  }

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
  }) {
    _SearchLayer_searchByUri(
      ptr,
      to_native.toNativeString(uri),
      search_search_options.SearchOptions.toNative(searchOptions),
    );
  }

  /// Manual resubmit.
  void resubmit() {
    _SearchLayer_resubmit(ptr);
  }

  /// Enable or disable search requests (resubmits and submits) when the
  /// map is moved. Requests are enabled by default.
  ///
  /// [enable] Enable requests if true, disable otherwise.
  void enableRequestsOnMapMoves(core.bool enable) {
    _SearchLayer_enableRequestsOnMapMoves(ptr, enable);
  }

  /// Enable or disable moving the map on primary search response. Map
  /// moving is enabled by default.
  ///
  /// [enable] Enable map moving if true, disable otherwise.
  void enableMapMoveOnSearchResponse(core.bool enable) {
    _SearchLayer_enableMapMoveOnSearchResponse(ptr, enable);
  }

  /// Check if more results could be loaded.
  core.bool hasNextPage() {
    return _SearchLayer_hasNextPage(ptr);
  }

  /// Load the next page of results.
  void fetchNextPage() {
    _SearchLayer_fetchNextPage(ptr);
  }

  /// Clear the displayed search results from the map.
  void clear() {
    _SearchLayer_clear(ptr);
  }

  /// Get the list of search results.
  core.List<search_search_layer_search_result_item.SearchResultItem>
      getSearchResultsList() {
    return search_search_layer_search_result_item
            .SearchResultItemContainerExtension
        .toPlatformVector(_SearchLayer_getSearchResultsList(ptr));
  }

  /// Get the last search response metadata.
  search_search_metadata.SearchMetadata? searchMetadata() {
    return search_search_metadata.SearchMetadata.fromOptionalPtr(
        _SearchLayer_searchMetadata(ptr));
  }

  /// Set the search manager. Do not use this method; it is for internal
  /// use only.
  ///
  /// [searchManager] Search manager
  void setSearchManager(search_search_manager.SearchManager searchManager) {
    _SearchLayer_setSearchManager(
        ptr, search_search_manager.SearchManager.getNativePtr(searchManager));
  }

  /// Add the search result listener, which will receive notifications from
  /// the search layer.
  ///
  /// The class does not retain the object in the 'searchResultListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [searchResultListener] Search result listener to add.
  void addSearchResultListener(SearchResultListener searchResultListener) {
    _SearchLayer_addSearchResultListener(
        ptr, SearchResultListener.getNativePtr(searchResultListener));
  }

  /// Remove search result listener.
  ///
  /// [searchResultListener] Search result listener to remove.
  void removeSearchResultListener(SearchResultListener searchResultListener) {
    _SearchLayer_removeSearchResultListener(
        ptr, SearchResultListener.getNativePtr(searchResultListener));
  }

  /// Add a placemark listener, which will receive notifications from the
  /// search layer.
  ///
  /// The class does not retain the object in the 'placemarkListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [placemarkListener] Placemark listener to add.
  void addPlacemarkListener(PlacemarkListener placemarkListener) {
    _SearchLayer_addPlacemarkListener(
        ptr, PlacemarkListener.getNativePtr(placemarkListener));
  }

  /// Remove placemark listener
  ///
  /// [placemarkListener] Placemark listener to remove.
  void removePlacemarkListener(PlacemarkListener placemarkListener) {
    _SearchLayer_removePlacemarkListener(
        ptr, PlacemarkListener.getNativePtr(placemarkListener));
  }

  /// Set sort order of the results by distance from given geometry.
  void setSortByDistance(mapkit_geometry_geometry.Geometry origin) {
    _SearchLayer_setSortByDistance(
        ptr, mapkit_geometry_geometry.Geometry.toNative(origin));
  }

  /// When sorting by distance from polyline sets position on this
  /// polyline. Has the same effect as sorting by distance from the
  /// sub-polyline from `position` to the end of the polyline. Throws if no
  /// polyline is set or position is out of range.
  ///
  /// [position] new polyline position value
  void setPolylinePosition(mapkit_geometry_geometry.PolylinePosition position) {
    _SearchLayer_setPolylinePosition(
        ptr, mapkit_geometry_geometry.PolylinePosition.toNative(position));
  }

  /// Reset the sort if it was previously set.
  void resetSort() {
    _SearchLayer_resetSort(ptr);
  }

  /// Set search filters.
  ///
  /// [filters] Business filters
  void setFilterCollection(
      search_filter_collection.SearchFilterCollection? filters) {
    _SearchLayer_setFilterCollection(ptr,
        search_filter_collection.SearchFilterCollection.getNativePtr(filters));
  }

  /// search.FilterCollection)} instead.
  void setFilters(
      core.List<search_business_filter.SearchBusinessFilter> filters) {
    _SearchLayer_setFilters(
        ptr,
        search_business_filter.SearchBusinessFilterContainerExtension
            .toNativeVector(filters));
  }

  /// Set a custom assets provider, which provides images, sizes and icon
  /// styles for placemarks.
  ///
  /// The class does not retain the object in the 'provider' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [provider] Assets provider (must not be null)
  void setAssetsProvider(
      search_search_layer_assets_provider.AssetsProvider provider) {
    _SearchLayer_setAssetsProvider(
        ptr,
        search_search_layer_assets_provider.AssetsProvider.getNativePtr(
            provider));
  }

  /// Reset the assets provider to default.
  void resetAssetsProvider() {
    _SearchLayer_resetAssetsProvider(ptr);
  }

  /// Select the placemark by ID.
  ///
  /// [geoObjectId] Placemark identifier
  void selectPlacemark(core.String geoObjectId) {
    _SearchLayer_selectPlacemark(ptr, to_native.toNativeString(geoObjectId));
  }

  /// Selected placemark ID.
  /// Return Placemark identifier if any placemark is selected, otherwise
  /// none.
  core.String? selectedPlacemarkId() {
    return to_platform
        .toPlatformFromPointerString(_SearchLayer_selectedPlacemarkId(ptr));
  }

  /// Deselect all placemarks.
  void deselectPlacemark() {
    _SearchLayer_deselectPlacemark(ptr);
  }

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
  }) {
    _SearchLayer_forceUpdateIcon(
      ptr,
      to_native.toNativeString(geoObjectId),
      search_search_layer_assets_provider.PlacemarkIconType.toInt(iconType),
      to_native.toNativeImageProvider(image),
      mapkit_map_icon_style.IconStyle.toNative(style),
    );
  }

  /// Force reloading all visible pins from AssetProvider. Use when there
  /// is a reason to update ALL the icons simultaneously (for example icon
  /// theme change, day/night mode, and other). This can be a pretty
  /// expensive operation, as it wipes all the map objects off of the layer
  /// and creates them from scratch. Use only if absolutely necessary.
  void forceUpdateMapObjects() {
    _SearchLayer_forceUpdateMapObjects(ptr);
  }

  /// If enabled, the search layer will obtain and set advertising icons
  /// without asking AssetsProvider.
  ///
  /// [enable] Enable mode if true, disable otherwise
  void obtainAdIcons(core.bool enable) {
    _SearchLayer_obtainAdIcons(ptr, enable);
  }

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
  }) {
    _SearchLayer_setInsets(ptr, top, left, bottom, right);
  }
}

final _SearchLayer_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _SearchLayer_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_check')
    .asFunction(isLeaf: true);

final core.bool Function(ffi.Pointer<ffi.Void>) _SearchLayer_get_visible = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_get_visible')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.bool) _SearchLayer_set_visible =
    lib
        .library
        .lookup<
                ffi
                .NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
            'yandex_flutter_search_search_layer_SearchLayer_set_visible')
        .asFunction();

final void Function(ffi.Pointer<ffi.Void>, native_types.NativeString,
        search_search_options.SearchOptionsNative) _SearchLayer_submitQuery =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        search_search_options.SearchOptionsNative)>>(
            'yandex_flutter_search_search_layer_SearchLayer_submitQuery')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    native_types.NativeString,
    mapkit_geometry_geometry.GeometryNative,
    search_search_options
        .SearchOptionsNative) _SearchLayer_submitQueryWithGeometry = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>,
                    native_types.NativeString,
                    mapkit_geometry_geometry.GeometryNative,
                    search_search_options.SearchOptionsNative)>>(
        'yandex_flutter_search_search_layer_SearchLayer_submitQueryWithGeometry')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeString,
        search_search_options.SearchOptionsNative) _SearchLayer_searchByUri =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        search_search_options.SearchOptionsNative)>>(
            'yandex_flutter_search_search_layer_SearchLayer_searchByUri')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _SearchLayer_resubmit = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_resubmit')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _SearchLayer_enableRequestsOnMapMoves = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_search_search_layer_SearchLayer_enableRequestsOnMapMoves')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _SearchLayer_enableMapMoveOnSearchResponse = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_search_search_layer_SearchLayer_enableMapMoveOnSearchResponse')
    .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _SearchLayer_hasNextPage = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_hasNextPage')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _SearchLayer_fetchNextPage = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_fetchNextPage')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _SearchLayer_clear = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_clear')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchLayer_getSearchResultsList = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_getSearchResultsList')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchLayer_searchMetadata = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchLayer_searchMetadata')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchLayer_setSearchManager = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchLayer_setSearchManager')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _SearchLayer_addSearchResultListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_addSearchResultListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _SearchLayer_removeSearchResultListener = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_removeSearchResultListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _SearchLayer_addPlacemarkListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_addPlacemarkListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _SearchLayer_removePlacemarkListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_removePlacemarkListener')
    .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_geometry.GeometryNative)
    _SearchLayer_setSortByDistance = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.GeometryNative)>>(
            'yandex_flutter_search_search_layer_SearchLayer_setSortByDistance')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    mapkit_geometry_geometry
        .PolylinePositionNative) _SearchLayer_setPolylinePosition = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>,
                    mapkit_geometry_geometry.PolylinePositionNative)>>(
        'yandex_flutter_search_search_layer_SearchLayer_setPolylinePosition')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _SearchLayer_resetSort = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_resetSort')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _SearchLayer_setFilterCollection = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_setFilterCollection')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchLayer_setFilters = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchLayer_setFilters')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchLayer_setAssetsProvider = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchLayer_setAssetsProvider')
        .asFunction();
final void Function(
    ffi
        .Pointer<ffi.Void>) _SearchLayer_resetAssetsProvider = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_resetAssetsProvider')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeString)
    _SearchLayer_selectPlacemark = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeString)>>(
            'yandex_flutter_search_search_layer_SearchLayer_selectPlacemark')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchLayer_selectedPlacemarkId = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_selectedPlacemarkId')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _SearchLayer_deselectPlacemark = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_deselectPlacemark')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeString, core.int,
        ffi.Pointer<ffi.Void>, mapkit_map_icon_style.IconStyleNative)
    _SearchLayer_forceUpdateIcon = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>,
                        mapkit_map_icon_style.IconStyleNative)>>(
            'yandex_flutter_search_search_layer_SearchLayer_forceUpdateIcon')
        .asFunction();
final void Function(
    ffi
        .Pointer<ffi.Void>) _SearchLayer_forceUpdateMapObjects = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_forceUpdateMapObjects')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.bool)
    _SearchLayer_obtainAdIcons = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
            'yandex_flutter_search_search_layer_SearchLayer_obtainAdIcons')
        .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, core.int, core.int, core.int, core.int)
    _SearchLayer_setInsets = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint32,
                        ffi.Uint32, ffi.Uint32, ffi.Uint32)>>(
            'yandex_flutter_search_search_layer_SearchLayer_setInsets')
        .asFunction();
