import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/search/search_options.dart'
    as search_search_options;
import 'package:yandex_maps_mapkit/src/search/session.dart' as search_session;
import 'package:yandex_maps_mapkit/src/search/suggest_session.dart'
    as search_suggest_session;

part 'search_manager.containers.dart';

/// Search manager type. Describes difference in online/offline search
/// handling.
@bindings_annotations.ContainerData(
    toNative: 'SearchManagerType.toPointer',
    toPlatform: '(val) => SearchManagerType.fromPointer(val, needFree: false)')
enum SearchManagerType {
  /// Online search manager. Always tries to use online search even if
  /// network is not available.
  Online,

  /// Offline search manager. Always tries to use offline search even if
  /// network is available.
  /// @attention This feature is not available in the free MapKit version.
  Offline,

  /// Combined search manager. Decision to use online or offline search is
  /// based on internal timeout. If server manages to respond within given
  /// time, then online search result is returned. Otherwise uses offline
  /// search.  Will combine online and offline search result in single
  /// session (hence the name). Timeout logic is applied on each resubmit
  /// until first response from offline search is returned to the listener.
  /// After that timeout is reduced to zero for all following resubmits.
  /// @attention This feature is not available in the free MapKit version.
  Combined,
  ;

  /// @nodoc
  @internal
  static SearchManagerType fromInt(core.int val) {
    return SearchManagerType.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(SearchManagerType e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static SearchManagerType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchManagerType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// Main interface to start search.
@bindings_annotations.ContainerData(
    toNative: 'SearchManager.getNativePtr',
    toPlatform:
        '(val) => SearchManager.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class SearchManager implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchManager_free.cast());

  /// @nodoc
  SearchManager.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SearchManager.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SearchManager? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static SearchManager? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchManager.fromNativePtr(ptr);
  }

  /// Search request for searching a user query near given geometry.
  ///
  /// [text] User query.
  /// [geometry] Geometry to search near. Supported types: point, bounding
  /// box, polyline and polygon. If the polyline is provided,
  /// setSortByDistance(polyline) is assumed on the first request. Polygon
  /// is expected to be a search window: 4 points in outer ring (or 5 if
  /// the last point is equal to the first) and no inner rings.
  /// [searchOptions] Various additional search parameters, see
  /// [search_search_options.SearchOptions] definition for details.
  /// [searchListener] Listener to handle search result.
  ///
  /// Return [search_session.SearchSession] which allows further searches,
  /// cancel and retry.
  search_session.SearchSession submit(
    mapkit_geometry_geometry.Geometry geometry,
    search_search_options.SearchOptions searchOptions,
    search_session.SearchSessionSearchListener searchListener, {
    required core.String text,
  }) {
    return search_session.SearchSession.fromNativePtr(_SearchManager_submit(
      ptr,
      to_native.toNativeString(text),
      mapkit_geometry_geometry.Geometry.toNative(geometry),
      search_search_options.SearchOptions.toNative(searchOptions),
      search_session.SearchSessionSearchListener.getNativePtr(searchListener),
    ));
  }

  /// Search request that is used to search for a user query along the
  /// given polyline inside the given window.
  ///
  /// [text] User query.
  /// [polyline] Polyline to search near;
  /// [search_session.SearchSession.setSortByDistance] is assumed on the
  /// first request.
  /// [geometry] Geometry to search near; supported types: point, bounding
  /// box, polyline and polygon. Polygon is expected to be a search window:
  /// 4 points in outer ring (or 5 if the last point is equal to first) and
  /// no inner rings.
  /// [searchOptions] Various additional search parameters, see
  /// [search_search_options.SearchOptions] definition for details.
  /// [searchListener] Listener to handle search result.
  ///
  /// Return [search_session.SearchSession] which allows further searches,
  /// cancel and retry. Session should be stored by user or search is
  /// automatically cancelled.
  search_session.SearchSession submitAlongPolyline(
    mapkit_geometry_geometry.Polyline polyline,
    mapkit_geometry_geometry.Geometry geometry,
    search_search_options.SearchOptions searchOptions,
    search_session.SearchSessionSearchListener searchListener, {
    required core.String text,
  }) {
    return search_session.SearchSession.fromNativePtr(
        _SearchManager_submitAlongPolyline(
      ptr,
      to_native.toNativeString(text),
      mapkit_geometry_geometry.Polyline.getNativePtr(polyline),
      mapkit_geometry_geometry.Geometry.toNative(geometry),
      search_search_options.SearchOptions.toNative(searchOptions),
      search_session.SearchSessionSearchListener.getNativePtr(searchListener),
    ));
  }

  /// Reverse search request (to search objects at the given coordinates)
  ///
  /// [point] Coordinates to search at.
  /// [zoom] Current zoom level. Skips objects that are too small for a
  /// given zoom level.
  /// [searchOptions] Additional search parameters, see
  /// [search_search_options.SearchOptions] definition for details.
  /// Currently the only supported options are
  /// [search_search_options.SearchOptions.origin],
  /// [search_search_options.SearchOptions.searchTypes] and
  /// [search_search_options.SearchOptions.snippets]. Only 'geo' and 'biz'
  /// types are supported and not at the same time.
  /// [searchListener] Listener to handle search result.
  ///
  /// Return [search_session.SearchSession] which allows further searches,
  /// cancel and retry. Session should be stored by user or search is
  /// automatically cancelled.
  search_session.SearchSession submitPoint(
    mapkit_geometry_point.Point point,
    search_search_options.SearchOptions searchOptions,
    search_session.SearchSessionSearchListener searchListener, {
    core.int? zoom,
  }) {
    return search_session.SearchSession.fromNativePtr(
        _SearchManager_submitPoint(
      ptr,
      mapkit_geometry_point.Point.toNative(point),
      to_native.toNativePtrInt(zoom),
      search_search_options.SearchOptions.toNative(searchOptions),
      search_session.SearchSessionSearchListener.getNativePtr(searchListener),
    ));
  }

  /// Search request for URI resolution.
  ///
  /// [uri] Object uri.
  /// [searchOptions] Additional search parameters, see
  /// [search_search_options.SearchOptions] definition for details.
  /// Currently the only supported options are
  /// [search_search_options.SearchOptions.origin] and
  /// [search_search_options.SearchOptions.snippets].
  /// [searchListener] Listener to handle search result.
  ///
  /// Return [search_session.SearchSession] which allows search cancel and
  /// retry. Should be stored by user or search is automatically cancelled.
  search_session.SearchSession resolveURI(
    search_search_options.SearchOptions searchOptions,
    search_session.SearchSessionSearchListener searchListener, {
    required core.String uri,
  }) {
    return search_session.SearchSession.fromNativePtr(_SearchManager_resolveURI(
      ptr,
      to_native.toNativeString(uri),
      search_search_options.SearchOptions.toNative(searchOptions),
      search_session.SearchSessionSearchListener.getNativePtr(searchListener),
    ));
  }

  /// Search request with URI. Allows multiple results in response.
  ///
  /// [uri] Object uri.
  /// [searchOptions] Additional search parameters, see
  /// [search_search_options.SearchOptions] definition for details.
  /// Currently the only supported options are
  /// [search_search_options.SearchOptions.origin],
  /// [search_search_options.SearchOptions.snippets] and.
  /// [search_search_options.SearchOptions.resultPageSize].
  /// [searchListener] Listener to handle search result.
  ///
  /// Return [search_session.SearchSession] which allows search cancel and
  /// retry. Should be stored by user or search is automatically cancelled.
  search_session.SearchSession searchByURI(
    search_search_options.SearchOptions searchOptions,
    search_session.SearchSessionSearchListener searchListener, {
    required core.String uri,
  }) {
    return search_session.SearchSession.fromNativePtr(
        _SearchManager_searchByURI(
      ptr,
      to_native.toNativeString(uri),
      search_search_options.SearchOptions.toNative(searchOptions),
      search_session.SearchSessionSearchListener.getNativePtr(searchListener),
    ));
  }

  /// Creates session for suggest requests.
  search_suggest_session.SearchSuggestSession createSuggestSession() {
    return search_suggest_session.SearchSuggestSession.fromNativePtr(
        _SearchManager_createSuggestSession(ptr));
  }
}

final _SearchManager_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchManager_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        native_types.NativeString,
        mapkit_geometry_geometry.GeometryNative,
        search_search_options.SearchOptionsNative,
        ffi.Pointer<ffi.Void>) _SearchManager_submit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        mapkit_geometry_geometry.GeometryNative,
                        search_search_options.SearchOptionsNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchManager_submit')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        mapkit_geometry_geometry.GeometryNative,
        search_search_options.SearchOptionsNative,
        ffi.Pointer<ffi.Void>) _SearchManager_submitAlongPolyline =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.GeometryNative,
                        search_search_options.SearchOptionsNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchManager_submitAlongPolyline')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        mapkit_geometry_point.PointNative,
        ffi.Pointer<ffi.Void>,
        search_search_options.SearchOptionsNative,
        ffi.Pointer<ffi.Void>) _SearchManager_submitPoint =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>,
                        search_search_options.SearchOptionsNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchManager_submitPoint')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        native_types.NativeString,
        search_search_options.SearchOptionsNative,
        ffi.Pointer<ffi.Void>) _SearchManager_resolveURI =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        search_search_options.SearchOptionsNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchManager_resolveURI')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        native_types.NativeString,
        search_search_options.SearchOptionsNative,
        ffi.Pointer<ffi.Void>) _SearchManager_searchByURI =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        search_search_options.SearchOptionsNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchManager_searchByURI')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchManager_createSuggestSession = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchManager_createSuggestSession')
        .asFunction();
