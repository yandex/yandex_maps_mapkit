part of 'display_type.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchDisplayTypeImpl.toPointer',
    toPlatform:
        '(val) => SearchDisplayTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchDisplayType')
extension SearchDisplayTypeImpl on SearchDisplayType {
  static core.int toInt(SearchDisplayType e) {
    return e.index;
  }

  static SearchDisplayType fromInt(core.int val) {
    return SearchDisplayType.values[val];
  }

  static SearchDisplayType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(SearchDisplayType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
