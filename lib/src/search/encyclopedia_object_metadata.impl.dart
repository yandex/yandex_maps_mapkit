part of 'encyclopedia_object_metadata.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchEncyclopediaObjectMetadataImpl.toPointer',
    toPlatform:
        '(val) => SearchEncyclopediaObjectMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchEncyclopediaObjectMetadata')
final class SearchEncyclopediaObjectMetadataImpl
    implements SearchEncyclopediaObjectMetadata {
  SearchEncyclopediaObjectMetadataImpl(core.String? title,
      core.String? description, mapkit_attribution.Attribution? attribution)
      : this.fromNativePtr(_SearchEncyclopediaObjectMetadata_init(
            to_native.toNativePtrString(title),
            to_native.toNativePtrString(description),
            mapkit_attribution.AttributionImpl.toPointer(attribution)));

  @core.override
  late final title = to_platform.toPlatformFromPointerString(
      _SearchEncyclopediaObjectMetadata_get_title(_ptr));
  @core.override
  late final description = to_platform.toPlatformFromPointerString(
      _SearchEncyclopediaObjectMetadata_get_description(_ptr));
  @core.override
  late final attribution = mapkit_attribution.AttributionImpl.fromPointer(
      _SearchEncyclopediaObjectMetadata_get_attribution(_ptr));

  @core.override
  final _SearchEncyclopediaObjectMetadataFactory runtimeFactory =
      const _SearchEncyclopediaObjectMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchEncyclopediaObjectMetadata_free.cast());

  SearchEncyclopediaObjectMetadataImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchEncyclopediaObjectMetadata? obj) {
    return (obj as SearchEncyclopediaObjectMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchEncyclopediaObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchEncyclopediaObjectMetadataImpl.fromNativePtr(ptr);
  }

  static SearchEncyclopediaObjectMetadata? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchEncyclopediaObjectMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      SearchEncyclopediaObjectMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchEncyclopediaObjectMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

class _SearchEncyclopediaObjectMetadataFactory
    extends struct_factory.StructFactory<SearchEncyclopediaObjectMetadata> {
  const _SearchEncyclopediaObjectMetadataFactory();

  @core.override
  SearchEncyclopediaObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchEncyclopediaObjectMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  SearchEncyclopediaObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchEncyclopediaObjectMetadataImpl.fromNativePtr(
        _SearchEncyclopediaObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchEncyclopediaObjectMetadata obj) {
    return _SearchEncyclopediaObjectMetadata_upcast(
        SearchEncyclopediaObjectMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchEncyclopediaObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchEncyclopediaObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEncyclopediaObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchEncyclopediaObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEncyclopediaObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function()
    _SearchEncyclopediaObjectMetadata_name = lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchEncyclopediaObjectMetadata_name')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchEncyclopediaObjectMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEncyclopediaObjectMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchEncyclopediaObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchEncyclopediaObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchEncyclopediaObjectMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEncyclopediaObjectMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchEncyclopediaObjectMetadata_get_title = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEncyclopediaObjectMetadata_get_title')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchEncyclopediaObjectMetadata_get_description = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchEncyclopediaObjectMetadata_get_description')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchEncyclopediaObjectMetadata_get_attribution = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchEncyclopediaObjectMetadata_get_attribution')
    .asFunction(isLeaf: true);
