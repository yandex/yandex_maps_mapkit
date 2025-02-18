part of 'subtitle.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchSubtitleItemImpl.getNativePtr',
    toPlatform:
        '(val) => SearchSubtitleItemImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchSubtitleItem')
final class SearchSubtitleItemImpl extends SearchSubtitleItem {
  SearchSubtitleItemImpl(core.String type, core.String? text,
      core.List<runtime_key_value_pair.KeyValuePair> properties)
      : this.fromNativePtr(_SearchSubtitleItem_init(
            to_native.toNativeString(type),
            to_native.toNativePtrString(text),
            runtime_key_value_pair.KeyValuePairContainerExtension
                .toNativeVector(properties)));

  @core.override
  late final type =
      to_platform.toPlatformString(_SearchSubtitleItem_get_type(_ptr));
  @core.override
  late final text = to_platform
      .toPlatformFromPointerString(_SearchSubtitleItem_get_text(_ptr));
  @core.override
  late final properties =
      runtime_key_value_pair.KeyValuePairContainerExtension.toPlatformVector(
          _SearchSubtitleItem_get_properties(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchSubtitleItem_free.cast());

  SearchSubtitleItemImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchSubtitleItem? obj) {
    return (obj as SearchSubtitleItemImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchSubtitleItem? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchSubtitleItemImpl.fromNativePtr(ptr);
  }

  static SearchSubtitleItem? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchSubtitleItemImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchSubtitleItem_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchSubtitleItem_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchSubtitleItem_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(native_types.NativeString,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleItem_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchSubtitleItem_get_type = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleItem_get_type')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchSubtitleItem_get_text = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleItem_get_text')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchSubtitleItem_get_properties = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleItem_get_properties')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchSubtitleMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => SearchSubtitleMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchSubtitleMetadata')
final class SearchSubtitleMetadataImpl extends SearchSubtitleMetadata {
  SearchSubtitleMetadataImpl(core.List<SearchSubtitleItem> subtitleItems,
      core.List<SearchSubtitleItem> serpSubtitleItems)
      : this.fromNativePtr(_SearchSubtitleMetadata_init(
            SearchSubtitleItemContainerExtension.toNativeVector(subtitleItems),
            SearchSubtitleItemContainerExtension.toNativeVector(
                serpSubtitleItems)));

  @core.override
  late final subtitleItems =
      SearchSubtitleItemContainerExtension.toPlatformVector(
          _SearchSubtitleMetadata_get_subtitleItems(_ptr));
  @core.override
  late final serpSubtitleItems =
      SearchSubtitleItemContainerExtension.toPlatformVector(
          _SearchSubtitleMetadata_get_serpSubtitleItems(_ptr));

  @core.override
  final _SearchSubtitleMetadataFactory runtimeFactory =
      const _SearchSubtitleMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchSubtitleMetadata_free.cast());

  SearchSubtitleMetadataImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchSubtitleMetadata? obj) {
    return (obj as SearchSubtitleMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchSubtitleMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchSubtitleMetadataImpl.fromNativePtr(ptr);
  }

  static SearchSubtitleMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchSubtitleMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _SearchSubtitleMetadataFactory
    extends struct_factory.StructFactory<SearchSubtitleMetadata> {
  const _SearchSubtitleMetadataFactory();

  @core.override
  SearchSubtitleMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchSubtitleMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  SearchSubtitleMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchSubtitleMetadataImpl.fromNativePtr(
        _SearchSubtitleMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchSubtitleMetadata obj) {
    return _SearchSubtitleMetadata_upcast(
        SearchSubtitleMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchSubtitleMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchSubtitleMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchSubtitleMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _SearchSubtitleMetadata_name = lib
    .library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_search_SearchSubtitleMetadata_name')
    .asFunction(isLeaf: true);

final _SearchSubtitleMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchSubtitleMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchSubtitleMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchSubtitleMetadata_get_subtitleItems = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleMetadata_get_subtitleItems')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchSubtitleMetadata_get_serpSubtitleItems = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchSubtitleMetadata_get_serpSubtitleItems')
    .asFunction(isLeaf: true);
