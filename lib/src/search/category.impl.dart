part of 'category.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchCategoryImpl.getNativePtr',
    toPlatform: '(val) => SearchCategoryImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchCategory')
final class SearchCategoryImpl implements SearchCategory {
  SearchCategoryImpl(
      core.String name, core.String? categoryClass, core.List<core.String> tags)
      : this.fromNativePtr(_SearchCategory_init(
            to_native.toNativeString(name),
            to_native.toNativePtrString(categoryClass),
            to_native.toNativeVectorString(tags)));

  @core.override
  late final name =
      to_platform.toPlatformString(_SearchCategory_get_name(_ptr));
  @core.override
  late final categoryClass = to_platform
      .toPlatformFromPointerString(_SearchCategory_get_categoryClass(_ptr));
  @core.override
  late final tags = to_platform.toVectorString(_SearchCategory_get_tags(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchCategory_free.cast());

  SearchCategoryImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchCategory? obj) {
    return (obj as SearchCategoryImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchCategory? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : SearchCategoryImpl.fromNativePtr(ptr);
  }

  static SearchCategory? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchCategoryImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchCategory_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchCategory_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchCategory_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(native_types.NativeString,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCategory_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchCategory_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCategory_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCategory_get_categoryClass = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCategory_get_categoryClass')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCategory_get_tags = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCategory_get_tags')
        .asFunction(isLeaf: true);
