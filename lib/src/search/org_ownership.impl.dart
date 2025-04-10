part of 'org_ownership.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchOrgOwnershipObjectMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => SearchOrgOwnershipObjectMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchOrgOwnershipObjectMetadata')
final class SearchOrgOwnershipObjectMetadataImpl
    extends SearchOrgOwnershipObjectMetadata {
  SearchOrgOwnershipObjectMetadataImpl(core.bool? canBeClaimed)
      : this.fromNativePtr(_SearchOrgOwnershipObjectMetadata_init(
            to_native.toNativePtrBool(canBeClaimed)));

  @core.override
  late final canBeClaimed = to_platform.toPlatformFromPointerBool(
      _SearchOrgOwnershipObjectMetadata_get_canBeClaimed(_ptr));

  @core.override
  final _SearchOrgOwnershipObjectMetadataFactory runtimeFactory =
      const _SearchOrgOwnershipObjectMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchOrgOwnershipObjectMetadata_free.cast());

  SearchOrgOwnershipObjectMetadataImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchOrgOwnershipObjectMetadata? obj) {
    return (obj as SearchOrgOwnershipObjectMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchOrgOwnershipObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchOrgOwnershipObjectMetadataImpl.fromNativePtr(ptr);
  }

  static SearchOrgOwnershipObjectMetadata? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchOrgOwnershipObjectMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _SearchOrgOwnershipObjectMetadataFactory
    extends struct_factory.StructFactory<SearchOrgOwnershipObjectMetadata> {
  const _SearchOrgOwnershipObjectMetadataFactory();

  @core.override
  SearchOrgOwnershipObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchOrgOwnershipObjectMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  SearchOrgOwnershipObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchOrgOwnershipObjectMetadataImpl.fromNativePtr(
        _SearchOrgOwnershipObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchOrgOwnershipObjectMetadata obj) {
    return _SearchOrgOwnershipObjectMetadata_upcast(
        SearchOrgOwnershipObjectMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchOrgOwnershipObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchOrgOwnershipObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchOrgOwnershipObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchOrgOwnershipObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchOrgOwnershipObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function()
    _SearchOrgOwnershipObjectMetadata_name = lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchOrgOwnershipObjectMetadata_name')
        .asFunction(isLeaf: true);

final _SearchOrgOwnershipObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchOrgOwnershipObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchOrgOwnershipObjectMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchOrgOwnershipObjectMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchOrgOwnershipObjectMetadata_get_canBeClaimed = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchOrgOwnershipObjectMetadata_get_canBeClaimed')
    .asFunction(isLeaf: true);
