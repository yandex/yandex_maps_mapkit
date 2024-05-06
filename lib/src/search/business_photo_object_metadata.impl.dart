part of 'business_photo_object_metadata.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessPhotoObjectMetadataImpl.toPointer',
    toPlatform:
        '(val) => SearchBusinessPhotoObjectMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchBusinessPhotoObjectMetadata')
final class SearchBusinessPhotoObjectMetadataImpl
    implements SearchBusinessPhotoObjectMetadata {
  SearchBusinessPhotoObjectMetadataImpl(
      core.int count, core.List<SearchBusinessPhotoObjectMetadataPhoto> photos)
      : this.fromNativePtr(_SearchBusinessPhotoObjectMetadata_init(
            count,
            SearchBusinessPhotoObjectMetadataPhotoContainerExtension
                .toNativeVector(photos)));

  @core.override
  late final count = _SearchBusinessPhotoObjectMetadata_get_count(_ptr);
  @core.override
  late final photos =
      SearchBusinessPhotoObjectMetadataPhotoContainerExtension.toPlatformVector(
          _SearchBusinessPhotoObjectMetadata_get_photos(_ptr));

  @core.override
  final _SearchBusinessPhotoObjectMetadataFactory runtimeFactory =
      const _SearchBusinessPhotoObjectMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchBusinessPhotoObjectMetadata_free.cast());

  SearchBusinessPhotoObjectMetadataImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchBusinessPhotoObjectMetadata? obj) {
    return (obj as SearchBusinessPhotoObjectMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchBusinessPhotoObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchBusinessPhotoObjectMetadataImpl.fromNativePtr(ptr);
  }

  static SearchBusinessPhotoObjectMetadata? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchBusinessPhotoObjectMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      SearchBusinessPhotoObjectMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchBusinessPhotoObjectMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

class _SearchBusinessPhotoObjectMetadataFactory
    extends struct_factory.StructFactory<SearchBusinessPhotoObjectMetadata> {
  const _SearchBusinessPhotoObjectMetadataFactory();

  @core.override
  SearchBusinessPhotoObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchBusinessPhotoObjectMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  SearchBusinessPhotoObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchBusinessPhotoObjectMetadataImpl.fromNativePtr(
        _SearchBusinessPhotoObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchBusinessPhotoObjectMetadata obj) {
    return _SearchBusinessPhotoObjectMetadata_upcast(
        SearchBusinessPhotoObjectMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchBusinessPhotoObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessPhotoObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessPhotoObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function()
    _SearchBusinessPhotoObjectMetadata_name = lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_name')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessPhotoObjectMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchBusinessPhotoObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(core.int, ffi.Pointer<ffi.Void>)
    _SearchBusinessPhotoObjectMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Uint32, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_init')
        .asFunction(isLeaf: true);

final core.int Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessPhotoObjectMetadata_get_count = lib.library
        .lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_get_count')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchBusinessPhotoObjectMetadata_get_photos = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_get_photos')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessPhotoObjectMetadataPhotoImpl.toPointer',
    toPlatform:
        '(val) => SearchBusinessPhotoObjectMetadataPhotoImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchBusinessPhotoObjectMetadataPhoto')
final class SearchBusinessPhotoObjectMetadataPhotoImpl
    implements SearchBusinessPhotoObjectMetadataPhoto {
  SearchBusinessPhotoObjectMetadataPhotoImpl(core.String id,
      core.List<SearchBusinessPhotoObjectMetadataPhotoPhotoLink> links)
      : this.fromNativePtr(_SearchBusinessPhotoObjectMetadataPhoto_init(
            to_native.toNativeString(id),
            SearchBusinessPhotoObjectMetadataPhotoPhotoLinkContainerExtension
                .toNativeVector(links)));

  @core.override
  late final id = to_platform
      .toPlatformString(_SearchBusinessPhotoObjectMetadataPhoto_get_id(_ptr));
  @core.override
  late final links =
      SearchBusinessPhotoObjectMetadataPhotoPhotoLinkContainerExtension
          .toPlatformVector(
              _SearchBusinessPhotoObjectMetadataPhoto_get_links(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchBusinessPhotoObjectMetadataPhoto_free.cast());

  SearchBusinessPhotoObjectMetadataPhotoImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchBusinessPhotoObjectMetadataPhoto? obj) {
    return (obj as SearchBusinessPhotoObjectMetadataPhotoImpl?)?._ptr ??
        ffi.nullptr;
  }

  static SearchBusinessPhotoObjectMetadataPhoto? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchBusinessPhotoObjectMetadataPhotoImpl.fromNativePtr(ptr);
  }

  static SearchBusinessPhotoObjectMetadataPhoto? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchBusinessPhotoObjectMetadataPhotoImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      SearchBusinessPhotoObjectMetadataPhoto? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value =
        _SearchBusinessPhotoObjectMetadataPhoto_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchBusinessPhotoObjectMetadataPhoto_clone = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_SearchBusinessPhotoObjectMetadataPhoto_clone')
    .asFunction(isLeaf: true);

final _SearchBusinessPhotoObjectMetadataPhoto_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_search_BusinessPhotoObjectMetadata_SearchBusinessPhotoObjectMetadataPhoto_free');

final ffi.Pointer<ffi.Void> Function(
    native_types.NativeString,
    ffi
        .Pointer<ffi.Void>) _SearchBusinessPhotoObjectMetadataPhoto_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    native_types.NativeString, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_SearchBusinessPhotoObjectMetadataPhoto_init')
    .asFunction(isLeaf: true);

final native_types.NativeString Function(
    ffi
        .Pointer<ffi.Void>) _SearchBusinessPhotoObjectMetadataPhoto_get_id = lib
    .library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_SearchBusinessPhotoObjectMetadataPhoto_get_id')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchBusinessPhotoObjectMetadataPhoto_get_links = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_SearchBusinessPhotoObjectMetadataPhoto_get_links')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessPhotoObjectMetadataPhotoPhotoLinkImpl.toPointer',
    toPlatform:
        '(val) => SearchBusinessPhotoObjectMetadataPhotoPhotoLinkImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchBusinessPhotoObjectMetadataPhotoPhotoLink')
final class SearchBusinessPhotoObjectMetadataPhotoPhotoLinkImpl
    implements SearchBusinessPhotoObjectMetadataPhotoPhotoLink {
  SearchBusinessPhotoObjectMetadataPhotoPhotoLinkImpl(
      core.String? type, core.String uri)
      : this.fromNativePtr(
            _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_init(
                to_native.toNativePtrString(type),
                to_native.toNativeString(uri)));

  @core.override
  late final type = to_platform.toPlatformFromPointerString(
      _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_get_type(_ptr));
  @core.override
  late final uri = to_platform.toPlatformString(
      _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_get_uri(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(
      _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_free.cast());

  SearchBusinessPhotoObjectMetadataPhotoPhotoLinkImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchBusinessPhotoObjectMetadataPhotoPhotoLink? obj) {
    return (obj as SearchBusinessPhotoObjectMetadataPhotoPhotoLinkImpl?)
            ?._ptr ??
        ffi.nullptr;
  }

  static SearchBusinessPhotoObjectMetadataPhotoPhotoLink? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchBusinessPhotoObjectMetadataPhotoPhotoLinkImpl.fromNativePtr(
            ptr);
  }

  static SearchBusinessPhotoObjectMetadataPhotoPhotoLink? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        SearchBusinessPhotoObjectMetadataPhotoPhotoLinkImpl.fromNativePtr(
            ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      SearchBusinessPhotoObjectMetadataPhotoPhotoLink? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_clone(
        getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_clone = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_Photo_SearchBusinessPhotoObjectMetadataPhotoPhotoLink_clone')
    .asFunction(isLeaf: true);

final _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_search_BusinessPhotoObjectMetadata_Photo_SearchBusinessPhotoObjectMetadataPhotoPhotoLink_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    native_types
        .NativeString) _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, native_types.NativeString)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_Photo_SearchBusinessPhotoObjectMetadataPhotoPhotoLink_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi
        .Void>) _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_get_type = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_Photo_SearchBusinessPhotoObjectMetadataPhotoPhotoLink_get_type')
    .asFunction(isLeaf: true);
final native_types.NativeString Function(
    ffi.Pointer<
        ffi
        .Void>) _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_get_uri = lib
    .library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_Photo_SearchBusinessPhotoObjectMetadataPhotoPhotoLink_get_uri')
    .asFunction(isLeaf: true);
