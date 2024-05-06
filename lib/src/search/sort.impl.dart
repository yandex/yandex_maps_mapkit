part of 'sort.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchSortTypeImpl.toPointer',
    toPlatform: '(val) => SearchSortTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchSortType')
extension SearchSortTypeImpl on SearchSortType {
  static core.int toInt(SearchSortType e) {
    return e.index;
  }

  static SearchSortType fromInt(core.int val) {
    return SearchSortType.values[val];
  }

  static SearchSortType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchSortType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SearchSortOriginImpl.toPointer',
    toPlatform:
        '(val) => SearchSortOriginImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchSortOrigin')
extension SearchSortOriginImpl on SearchSortOrigin {
  static core.int toInt(SearchSortOrigin e) {
    return e.index;
  }

  static SearchSortOrigin fromInt(core.int val) {
    return SearchSortOrigin.values[val];
  }

  static SearchSortOrigin? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchSortOrigin? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

final class SearchSortNative extends ffi.Struct {
  @ffi.Int64()
  external core.int type;
  external ffi.Pointer<ffi.Void> origin;
}

final SearchSortNative Function(core.int, ffi.Pointer<ffi.Void>)
    _SearchSortNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchSortNative Function(
                        ffi.Int64, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSort_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchSortImpl.toPointer',
    toPlatform: '(val) => SearchSortImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchSort')
extension SearchSortImpl on SearchSort {
  static SearchSort fromNative(SearchSortNative native) {
    return SearchSort(SearchSortTypeImpl.fromInt(native.type),
        origin: SearchSortOriginImpl.fromPointer(native.origin));
  }

  static SearchSortNative toNative(SearchSort obj) {
    return _SearchSortNativeInit(SearchSortTypeImpl.toInt(obj.type),
        SearchSortOriginImpl.toPointer(obj.origin));
  }

  static SearchSort? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchSortImpl.fromNative(ptr.cast<SearchSortNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchSort? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchSortNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
