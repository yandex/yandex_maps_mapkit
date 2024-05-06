part of 'chain.dart';

final class SearchChainNative extends ffi.Struct {
  external native_types.NativeString id;
  external native_types.NativeString name;
}

final SearchChainNative Function(
        native_types.NativeString, native_types.NativeString)
    _SearchChainNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchChainNative Function(
                        native_types.NativeString, native_types.NativeString)>>(
            'yandex_flutter_search_SearchChain_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchChainImpl.toPointer',
    toPlatform: '(val) => SearchChainImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchChain')
extension SearchChainImpl on SearchChain {
  static SearchChain fromNative(SearchChainNative native) {
    return SearchChain(
        id: to_platform.toPlatformString(native.id),
        name: to_platform.toPlatformString(native.name));
  }

  static SearchChainNative toNative(SearchChain obj) {
    return _SearchChainNativeInit(
        to_native.toNativeString(obj.id), to_native.toNativeString(obj.name));
  }

  static SearchChain? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        SearchChainImpl.fromNative(ptr.cast<SearchChainNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchChain? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchChainNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
