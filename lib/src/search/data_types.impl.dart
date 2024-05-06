part of 'data_types.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchTypeImpl.toPointer',
    toPlatform: '(val) => SearchTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchType')
extension SearchTypeImpl on SearchType {
  static core.int toInt(SearchType e) {
    return e.value;
  }

  static SearchType fromInt(core.int val) {
    return SearchType(val);
  }

  static SearchType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(SearchType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SearchSnippetImpl.toPointer',
    toPlatform: '(val) => SearchSnippetImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchSnippet')
extension SearchSnippetImpl on SearchSnippet {
  static core.int toInt(SearchSnippet e) {
    return e.value;
  }

  static SearchSnippet fromInt(core.int val) {
    return SearchSnippet(val);
  }

  static SearchSnippet? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(SearchSnippet? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
