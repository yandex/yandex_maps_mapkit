part of 'masstransit_1x_object_metadata.dart';

final class SearchLineNative extends ffi.Struct {
  external native_types.NativeString name;
}

final SearchLineNative Function(native_types.NativeString)
    _SearchLineNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchLineNative Function(native_types.NativeString)>>(
            'yandex_flutter_search_SearchLine_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchLineImpl.toPointer',
    toPlatform: '(val) => SearchLineImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchLine')
extension SearchLineImpl on SearchLine {
  static SearchLine fromNative(SearchLineNative native) {
    return SearchLine(name: to_platform.toPlatformString(native.name));
  }

  static SearchLineNative toNative(SearchLine obj) {
    return _SearchLineNativeInit(to_native.toNativeString(obj.name));
  }

  static SearchLine? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchLineImpl.fromNative(ptr.cast<SearchLineNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchLine? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchLineNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
