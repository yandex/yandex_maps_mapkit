part of 'related_places_object_metadata.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchRelatedPlacesObjectMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => SearchRelatedPlacesObjectMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchRelatedPlacesObjectMetadata')
final class SearchRelatedPlacesObjectMetadataImpl
    extends SearchRelatedPlacesObjectMetadata {
  SearchRelatedPlacesObjectMetadataImpl(
      core.List<search_related_places.SearchPlaceInfo> similarPlaces)
      : this.fromNativePtr(_SearchRelatedPlacesObjectMetadata_init(
            search_related_places.SearchPlaceInfoContainerExtension
                .toNativeVector(similarPlaces)));

  @core.override
  late final similarPlaces =
      search_related_places.SearchPlaceInfoContainerExtension.toPlatformVector(
          _SearchRelatedPlacesObjectMetadata_get_similarPlaces(_ptr));

  @core.override
  final _SearchRelatedPlacesObjectMetadataFactory runtimeFactory =
      const _SearchRelatedPlacesObjectMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchRelatedPlacesObjectMetadata_free.cast());

  SearchRelatedPlacesObjectMetadataImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchRelatedPlacesObjectMetadata? obj) {
    return (obj as SearchRelatedPlacesObjectMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchRelatedPlacesObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchRelatedPlacesObjectMetadataImpl.fromNativePtr(ptr);
  }

  static SearchRelatedPlacesObjectMetadata? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchRelatedPlacesObjectMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _SearchRelatedPlacesObjectMetadataFactory
    extends struct_factory.StructFactory<SearchRelatedPlacesObjectMetadata> {
  const _SearchRelatedPlacesObjectMetadataFactory();

  @core.override
  SearchRelatedPlacesObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchRelatedPlacesObjectMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  SearchRelatedPlacesObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchRelatedPlacesObjectMetadataImpl.fromNativePtr(
        _SearchRelatedPlacesObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchRelatedPlacesObjectMetadata obj) {
    return _SearchRelatedPlacesObjectMetadata_upcast(
        SearchRelatedPlacesObjectMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchRelatedPlacesObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchRelatedPlacesObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchRelatedPlacesObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchRelatedPlacesObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchRelatedPlacesObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function()
    _SearchRelatedPlacesObjectMetadata_name = lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchRelatedPlacesObjectMetadata_name')
        .asFunction(isLeaf: true);

final _SearchRelatedPlacesObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchRelatedPlacesObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchRelatedPlacesObjectMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchRelatedPlacesObjectMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchRelatedPlacesObjectMetadata_get_similarPlaces = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchRelatedPlacesObjectMetadata_get_similarPlaces')
    .asFunction(isLeaf: true);
