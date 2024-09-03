part of 'search_manager.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchManagerTypeImpl.toPointer',
    toPlatform:
        '(val) => SearchManagerTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchManagerType')
extension SearchManagerTypeImpl on SearchManagerType {
  static core.int toInt(SearchManagerType e) {
    return e.index;
  }

  static SearchManagerType fromInt(core.int val) {
    return SearchManagerType.values[val];
  }

  static SearchManagerType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchManagerType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SearchManagerImpl.getNativePtr',
    toPlatform:
        '(val) => SearchManagerImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'SearchManager')
class SearchManagerImpl implements SearchManager, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchManager_free.cast());

  /// @nodoc
  SearchManagerImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SearchManagerImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SearchManager? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as SearchManagerImpl).ptr;
  }

  @internal

  /// @nodoc
  static SearchManager? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchManagerImpl.fromNativePtr(ptr);
  }

  search_session.SearchSession submit(
    mapkit_geometry_geometry.Geometry geometry,
    search_search_options.SearchOptions searchOptions,
    search_session.SearchSessionSearchListener searchListener, {
    required core.String text,
  }) {
    final result =
        search_session.SearchSessionImpl.fromNativePtr(_SearchManager_submit(
      ptr,
      to_native.toNativeString(text),
      mapkit_geometry_geometry.GeometryImpl.toNative(geometry),
      search_search_options.SearchOptionsImpl.toNative(searchOptions),
      search_session.SearchSessionSearchListenerImpl.getNativePtr(
          searchListener),
    ));
    return result;
  }

  search_session.SearchSession submitAlongPolyline(
    mapkit_geometry_geometry.Polyline polyline,
    mapkit_geometry_geometry.Geometry geometry,
    search_search_options.SearchOptions searchOptions,
    search_session.SearchSessionSearchListener searchListener, {
    required core.String text,
  }) {
    final result = search_session.SearchSessionImpl.fromNativePtr(
        _SearchManager_submitAlongPolyline(
      ptr,
      to_native.toNativeString(text),
      mapkit_geometry_geometry.PolylineImpl.getNativePtr(polyline),
      mapkit_geometry_geometry.GeometryImpl.toNative(geometry),
      search_search_options.SearchOptionsImpl.toNative(searchOptions),
      search_session.SearchSessionSearchListenerImpl.getNativePtr(
          searchListener),
    ));
    return result;
  }

  search_session.SearchSession submitPoint(
    mapkit_geometry_point.Point point,
    search_search_options.SearchOptions searchOptions,
    search_session.SearchSessionSearchListener searchListener, {
    core.int? zoom,
  }) {
    final result = search_session.SearchSessionImpl.fromNativePtr(
        _SearchManager_submitPoint(
      ptr,
      mapkit_geometry_point.PointImpl.toNative(point),
      to_native.toNativePtrInt(zoom),
      search_search_options.SearchOptionsImpl.toNative(searchOptions),
      search_session.SearchSessionSearchListenerImpl.getNativePtr(
          searchListener),
    ));
    return result;
  }

  search_session.SearchSession resolveURI(
    search_search_options.SearchOptions searchOptions,
    search_session.SearchSessionSearchListener searchListener, {
    required core.String uri,
  }) {
    final result = search_session.SearchSessionImpl.fromNativePtr(
        _SearchManager_resolveURI(
      ptr,
      to_native.toNativeString(uri),
      search_search_options.SearchOptionsImpl.toNative(searchOptions),
      search_session.SearchSessionSearchListenerImpl.getNativePtr(
          searchListener),
    ));
    return result;
  }

  search_session.SearchSession searchByURI(
    search_search_options.SearchOptions searchOptions,
    search_session.SearchSessionSearchListener searchListener, {
    required core.String uri,
  }) {
    final result = search_session.SearchSessionImpl.fromNativePtr(
        _SearchManager_searchByURI(
      ptr,
      to_native.toNativeString(uri),
      search_search_options.SearchOptionsImpl.toNative(searchOptions),
      search_session.SearchSessionSearchListenerImpl.getNativePtr(
          searchListener),
    ));
    return result;
  }

  search_suggest_session.SearchSuggestSession createSuggestSession() {
    final result =
        search_suggest_session.SearchSuggestSessionImpl.fromNativePtr(
            _SearchManager_createSuggestSession(ptr));
    return result;
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
final void Function(ffi.Pointer<ffi.Void>, core.int) _SearchManager_set = lib
    .library
    .lookup<
        ffi.NativeFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Int64)>>('yandex_flutter_search_SearchManager_set_')
    .asFunction(isLeaf: true);
