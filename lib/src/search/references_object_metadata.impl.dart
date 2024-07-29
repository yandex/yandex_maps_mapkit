part of 'references_object_metadata.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchReferenceTypeImpl.getNativePtr',
    toPlatform:
        '(val) => SearchReferenceTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchReferenceType')
final class SearchReferenceTypeImpl implements SearchReferenceType {
  SearchReferenceTypeImpl(core.String id, core.String scope)
      : this.fromNativePtr(_SearchReferenceType_init(
            to_native.toNativeString(id), to_native.toNativeString(scope)));

  @core.override
  late final id =
      to_platform.toPlatformString(_SearchReferenceType_get_id(_ptr));
  @core.override
  late final scope =
      to_platform.toPlatformString(_SearchReferenceType_get_scope(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchReferenceType_free.cast());

  SearchReferenceTypeImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchReferenceType? obj) {
    return (obj as SearchReferenceTypeImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchReferenceType? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchReferenceTypeImpl.fromNativePtr(ptr);
  }

  static SearchReferenceType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchReferenceTypeImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchReferenceType_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchReferenceType_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString, native_types.NativeString)
    _SearchReferenceType_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString, native_types.NativeString)>>(
            'yandex_flutter_search_SearchReferenceType_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchReferenceType_get_id = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchReferenceType_get_id')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchReferenceType_get_scope = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchReferenceType_get_scope')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchReferencesObjectMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => SearchReferencesObjectMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchReferencesObjectMetadata')
final class SearchReferencesObjectMetadataImpl
    implements SearchReferencesObjectMetadata {
  SearchReferencesObjectMetadataImpl(core.List<SearchReferenceType> references)
      : this.fromNativePtr(_SearchReferencesObjectMetadata_init(
            SearchReferenceTypeContainerExtension.toNativeVector(references)));

  @core.override
  late final references =
      SearchReferenceTypeContainerExtension.toPlatformVector(
          _SearchReferencesObjectMetadata_get_references(_ptr));

  @core.override
  final _SearchReferencesObjectMetadataFactory runtimeFactory =
      const _SearchReferencesObjectMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchReferencesObjectMetadata_free.cast());

  SearchReferencesObjectMetadataImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchReferencesObjectMetadata? obj) {
    return (obj as SearchReferencesObjectMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchReferencesObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchReferencesObjectMetadataImpl.fromNativePtr(ptr);
  }

  static SearchReferencesObjectMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchReferencesObjectMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _SearchReferencesObjectMetadataFactory
    extends struct_factory.StructFactory<SearchReferencesObjectMetadata> {
  const _SearchReferencesObjectMetadataFactory();

  @core.override
  SearchReferencesObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchReferencesObjectMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  SearchReferencesObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchReferencesObjectMetadataImpl.fromNativePtr(
        _SearchReferencesObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchReferencesObjectMetadata obj) {
    return _SearchReferencesObjectMetadata_upcast(
        SearchReferencesObjectMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchReferencesObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchReferencesObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchReferencesObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchReferencesObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchReferencesObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function()
    _SearchReferencesObjectMetadata_name = lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchReferencesObjectMetadata_name')
        .asFunction(isLeaf: true);

final _SearchReferencesObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchReferencesObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchReferencesObjectMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchReferencesObjectMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchReferencesObjectMetadata_get_references = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchReferencesObjectMetadata_get_references')
    .asFunction(isLeaf: true);
