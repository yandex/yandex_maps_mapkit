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
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as runtime_error;
import 'package:yandex_maps_mapkit/src/search/business_filter.dart'
    as search_business_filter;
import 'package:yandex_maps_mapkit/src/search/response.dart' as search_response;
import 'package:yandex_maps_mapkit/src/search/search_options.dart'
    as search_search_options;

part 'session.containers.dart';
part 'session.impl.dart';

/// Interface denoting ongoing search session. Allows search cancellation
/// and retry.  For many request types allows further searches.
abstract class SearchSession implements ffi.Finalizable {
  /// Cancels the current request.
  void cancel();

  /// Retries the last request. If there is an active request, it is
  /// cancelled.
  ///
  /// [searchListener] Listener to handle search result.
  void retry(SearchSessionSearchListener searchListener);

  /// Check the availability of the next result page.
  /// Return True if there are more search results and one can call
  /// [SearchSession.fetchNextPage], false otherwise.
  core.bool hasNextPage();

  /// Request the next page of search results. Ignored if the current
  /// request isn't ready. Will throw if called when {\@link
  /// search.Session#hasNextPage()} is false.
  ///
  /// [searchListener] Listener to handle search result.
  void fetchNextPage(SearchSessionSearchListener searchListener);

  void setFilters(
      core.List<search_business_filter.SearchBusinessFilter> filters);

  /// Requests sorting by distance for future resubmits. Supported geometry
  /// types: point, polyline.
  ///
  /// [origin] Origin to sort by distance from.
  void setSortByDistance(mapkit_geometry_geometry.Geometry origin);

  /// Resets the sort if it was previously set (for example by
  /// [SearchSession.setSortByDistance]) for future resubmits.
  void resetSort();

  /// Sets the search area for future resubmits. Supported geometry types:
  /// bounding box, polyline, polygon. Polygon is expected to be a search
  /// window: 4 points in outer ring (or 5 if last point is equal to first)
  /// and no inner rings.
  ///
  /// [area] Search area for future resubmits.
  void setSearchArea(mapkit_geometry_geometry.Geometry area);

  /// Set searchOptions for future resubmits.
  ///
  /// [searchOptions] Additional search parameters, see
  /// [search_search_options.SearchOptions]. Supported options:
  /// [search_search_options.SearchOptions.origin],
  /// [search_search_options.SearchOptions.userPosition].
  void setSearchOptions(search_search_options.SearchOptions searchOptions);

  /// Redo the last search with currently set values of search area, search
  /// options, filters, sort type and sort origin. Isn't applicable to
  /// reverse geosearch and URI resolving. Ignored it the current request
  /// is the first one; cancels current request otherwise.
  ///
  /// [searchListener] Listener to handle search result.
  void resubmit(SearchSessionSearchListener searchListener);
}

abstract final class SearchSessionSearchListener {
  factory SearchSessionSearchListener(
      {required void Function(search_response.SearchResponse response)
          onSearchResponse,
      required void Function(runtime_error.Error error) onSearchError}) {
    return SearchSessionSearchListenerImpl(
      onSearchResponse: onSearchResponse,
      onSearchError: onSearchError,
    );
  }

  /// Callback for results processing.
  ///
  /// [response] Response with search result.
  void onSearchResponse(search_response.SearchResponse response);

  /// Callback for error processing.
  ///
  /// [error] Error information.
  void onSearchError(runtime_error.Error error);
}
