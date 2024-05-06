part of 'error.dart';

@bindings_annotations.WeakInterface('search.CacheUnavailableError')
@bindings_annotations.ContainerData(
    toNative: 'SearchCacheUnavailableErrorImpl.getNativePtr',
    toPlatform:
        '(val) => SearchCacheUnavailableErrorImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'SearchCacheUnavailableError')
class SearchCacheUnavailableErrorImpl extends runtime_error.ErrorImpl
    implements SearchCacheUnavailableError, ffi.Finalizable {
  static final _finalizer =
      ffi.NativeFinalizer(_SearchCacheUnavailableError_free.cast());

  /// @nodoc
  SearchCacheUnavailableErrorImpl.fromExternalPtr(ffi.Pointer<ffi.Void> ptr)
      : super.fromExternalPtr(ptr);

  /// @nodoc
  @internal
  SearchCacheUnavailableErrorImpl.fromNativePtrImpl(ffi.Pointer<ffi.Void> ptr)
      : super.fromExternalPtr(ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory SearchCacheUnavailableErrorImpl.fromNativePtr(
          ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SearchCacheUnavailableError? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as SearchCacheUnavailableErrorImpl).ptr;
  }

  core.bool isValid() {
    return _SearchCacheUnavailableError_check(ptr);
  }

  @internal

  /// @nodoc
  static SearchCacheUnavailableError? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchCacheUnavailableErrorImpl.fromNativePtr(ptr);
  }
}

final _SearchCacheUnavailableError_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchCacheUnavailableError_free');
final core.bool Function(ffi.Pointer<ffi.Void>)
    _SearchCacheUnavailableError_check = lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCacheUnavailableError_check')
        .asFunction(isLeaf: true);
