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

/// Interface denoting ongoing search session. Allows search cancellation
/// and retry.  For many request types allows further searches.
@bindings_annotations.ContainerData(
    toNative: 'SearchSession.getNativePtr',
    toPlatform:
        '(val) => SearchSession.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class SearchSession implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchSession_free.cast());

  /// @nodoc
  SearchSession.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SearchSession.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SearchSession? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static SearchSession? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchSession.fromNativePtr(ptr);
  }

  /// Cancels the current request.
  void cancel() {
    _Session_cancel(ptr);
  }

  /// Retries the last request. If there is an active request, it is
  /// cancelled.
  ///
  /// [searchListener] Listener to handle search result.
  void retry(SearchSessionSearchListener searchListener) {
    _Session_retry(
        ptr, SearchSessionSearchListener.getNativePtr(searchListener));
  }

  /// Check the availability of the next result page.
  /// Return True if there are more search results and one can call
  /// [SearchSession.fetchNextPage], false otherwise.
  core.bool hasNextPage() {
    return _Session_hasNextPage(ptr);
  }

  /// Request the next page of search results. Ignored if the current
  /// request isn't ready. Will throw if called when
  /// [SearchSession.hasNextPage] is false.
  ///
  /// [searchListener] Listener to handle search result.
  void fetchNextPage(SearchSessionSearchListener searchListener) {
    _Session_fetchNextPage(
        ptr, SearchSessionSearchListener.getNativePtr(searchListener));
  }

  void setFilters(
      core.List<search_business_filter.SearchBusinessFilter> filters) {
    _Session_setFilters(
        ptr,
        search_business_filter.SearchBusinessFilterContainerExtension
            .toNativeVector(filters));
  }

  /// Requests sorting by distance for future resubmits. Supported geometry
  /// types: point, polyline.
  ///
  /// [origin] Origin to sort by distance from.
  void setSortByDistance(mapkit_geometry_geometry.Geometry origin) {
    _Session_setSortByDistance(
        ptr, mapkit_geometry_geometry.Geometry.toNative(origin));
  }

  /// Resets the sort if it was previously set (for example by
  /// [SearchSession.setSortByDistance]) for future resubmits.
  void resetSort() {
    _Session_resetSort(ptr);
  }

  /// Sets the search area for future resubmits. Supported geometry types:
  /// bounding box, polyline, polygon. Polygon is expected to be a search
  /// window: 4 points in outer ring (or 5 if last point is equal to first)
  /// and no inner rings.
  ///
  /// [area] Search area for future resubmits.
  void setSearchArea(mapkit_geometry_geometry.Geometry area) {
    _Session_setSearchArea(
        ptr, mapkit_geometry_geometry.Geometry.toNative(area));
  }

  /// Set searchOptions for future resubmits.
  ///
  /// [searchOptions] Additional search parameters, see
  /// [search_search_options.SearchOptions]. Supported options:
  /// [search_search_options.SearchOptions.origin],
  /// [search_search_options.SearchOptions.userPosition].
  void setSearchOptions(search_search_options.SearchOptions searchOptions) {
    _Session_setSearchOptions(
        ptr, search_search_options.SearchOptions.toNative(searchOptions));
  }

  /// Redo the last search with currently set values of search area, search
  /// options, filters, sort type and sort origin. Isn't applicable to
  /// reverse geosearch and URI resolving. Ignored it the current request
  /// is the first one; cancels current request otherwise.
  ///
  /// [searchListener] Listener to handle search result.
  void resubmit(SearchSessionSearchListener searchListener) {
    _Session_resubmit(
        ptr, SearchSessionSearchListener.getNativePtr(searchListener));
  }
}

final _SearchSession_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchSession_free');

final void Function(ffi.Pointer<ffi.Void>) _Session_cancel = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchSession_cancel')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Session_retry = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSession_retry')
        .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _Session_hasNextPage = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchSession_hasNextPage')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Session_fetchNextPage = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSession_fetchNextPage')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Session_setFilters = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSession_setFilters')
        .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_geometry.GeometryNative)
    _Session_setSortByDistance = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.GeometryNative)>>(
            'yandex_flutter_search_SearchSession_setSortByDistance')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Session_resetSort = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchSession_resetSort')
    .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_geometry.GeometryNative)
    _Session_setSearchArea = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.GeometryNative)>>(
            'yandex_flutter_search_SearchSession_setSearchArea')
        .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, search_search_options.SearchOptionsNative)
    _Session_setSearchOptions = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        search_search_options.SearchOptionsNative)>>(
            'yandex_flutter_search_SearchSession_setSearchOptions')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Session_resubmit = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSession_resubmit')
        .asFunction();

class SearchSessionSearchListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, SearchSessionSearchListener>{};

  SearchSessionSearchListener(
      {required void Function(search_response.SearchResponse response)
          onSearchResponse,
      required void Function(runtime_error.Error error) onSearchError})
      : _ptr = _SearchSessionSearchListener_new(
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _SearchSessionSearchListener_onSearchResponse),
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _SearchSessionSearchListener_onSearchError)),
        _onSearchResponse = onSearchResponse,
        _onSearchError = onSearchError {
    _pointerToListener[_ptr] = this;
    _SearchSessionSearchListenersetSendPort(
        _ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());
  }

  /// Callback for results processing.
  ///
  /// [response] Response with search result.
  void onSearchResponse(search_response.SearchResponse response) =>
      _onSearchResponse(response);

  /// Callback for error processing.
  ///
  /// [error] Error information.
  void onSearchError(runtime_error.Error error) => _onSearchError(error);

  final ffi.Pointer<ffi.Void> _ptr;

  final void Function(search_response.SearchResponse) _onSearchResponse;
  final void Function(runtime_error.Error) _onSearchError;

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchSessionSearchListener? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _SearchSessionSearchListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_search_Session_SearchSessionSearchListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _SearchSessionSearchListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_search_Session_SearchSessionSearchListener_new')
        .asFunction(isLeaf: true);

void _SearchSessionSearchListener_onSearchResponse(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> response) {
  final listener = SearchSessionSearchListener._pointerToListener[_ptr]!;

  try {
    listener.onSearchResponse(
        search_response.SearchResponse.fromNativePtr(response));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

void _SearchSessionSearchListener_onSearchError(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> error) {
  final listener = SearchSessionSearchListener._pointerToListener[_ptr]!;

  try {
    listener.onSearchError(runtime_error.Error.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}
