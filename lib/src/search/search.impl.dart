part of 'search.dart';

@bindings_annotations.WeakInterface('search.Search')
@bindings_annotations.ContainerData(
    toNative: 'SearchImpl.getNativePtr',
    toPlatform:
        '(val) => SearchImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'Search')
class SearchImpl implements Search, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Search_free.cast());

  /// @nodoc
  SearchImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SearchImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory SearchImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Search? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as SearchImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _Search_check(ptr);
  }

  @internal

  /// @nodoc
  static Search? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchImpl.fromNativePtr(ptr);
  }

  search_search_layer_search_layer.SearchLayer createSearchLayer(
      mapkit_map_map_window.MapWindow mapWindow) {
    final result =
        search_search_layer_search_layer.SearchLayerImpl.fromNativePtr(
            _Search_createSearchLayer(ptr,
                mapkit_map_map_window.MapWindowImpl.getNativePtr(mapWindow)));
    exception.checkCallResult();
    return result;
  }

  search_search_manager.SearchManager createSearchManager(
      search_search_manager.SearchManagerType searchManagerType) {
    final result = search_search_manager.SearchManagerImpl.fromNativePtr(
        _Search_createSearchManager(
            ptr,
            search_search_manager.SearchManagerTypeImpl.toInt(
                searchManagerType)));
    exception.checkCallResult();
    return result;
  }
}

final _Search_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_Search_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _Search_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_Search_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Search_createSearchLayer = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_Search_createSearchLayer')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>, core.int)
    _Search_createSearchManager = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Int64)>>(
            'yandex_flutter_search_Search_createSearchManager')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _Search_set = lib.library
    .lookup<
        ffi.NativeFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Int64)>>('yandex_flutter_search_Search_set_')
    .asFunction(isLeaf: true);

Search get _instance {
  return SearchImpl.fromNativePtr(_SearchFactory_get_instance());
}

final ffi.Pointer<ffi.Void> Function() _SearchFactory_get_instance = lib.library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
        'yandex_flutter_search_SearchFactory_get_instance')
    .asFunction(isLeaf: true);
