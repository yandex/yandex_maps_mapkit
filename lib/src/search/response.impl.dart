part of 'response.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchResponseImpl.getNativePtr',
    toPlatform: '(val) => SearchResponseImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchResponse')
final class SearchResponseImpl implements SearchResponse {
  SearchResponseImpl(
      search_search_metadata.SearchMetadata metadata,
      mapkit_geo_object_collection.GeoObjectCollection collection,
      core.bool isOffline)
      : this.fromNativePtr(_SearchResponse_init(
            search_search_metadata.SearchMetadataImpl.getNativePtr(metadata),
            mapkit_geo_object_collection.GeoObjectCollectionImpl.getNativePtr(
                collection),
            isOffline));

  @core.override
  late final metadata = search_search_metadata.SearchMetadataImpl.fromNativePtr(
      _SearchResponse_get_metadata(_ptr));
  @core.override
  late final collection =
      mapkit_geo_object_collection.GeoObjectCollectionImpl.fromNativePtr(
          _SearchResponse_get_collection(_ptr));
  @core.override
  late final isOffline = _SearchResponse_get_isOffline(_ptr);

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchResponse_free.cast());

  SearchResponseImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchResponse? obj) {
    return (obj as SearchResponseImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchResponse? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : SearchResponseImpl.fromNativePtr(ptr);
  }

  static SearchResponse? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchResponseImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchResponse_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchResponse_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, core.bool)
    _SearchResponse_init = lib
        .library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Bool)>>('yandex_flutter_search_SearchResponse_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchResponse_get_metadata = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchResponse_get_metadata')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchResponse_get_collection = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchResponse_get_collection')
        .asFunction(isLeaf: true);
final core.bool Function(ffi.Pointer<ffi.Void>) _SearchResponse_get_isOffline =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchResponse_get_isOffline')
        .asFunction(isLeaf: true);
