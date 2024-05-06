part of 'precision.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchPrecisionImpl.toPointer',
    toPlatform:
        '(val) => SearchPrecisionImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchPrecision')
extension SearchPrecisionImpl on SearchPrecision {
  static core.int toInt(SearchPrecision e) {
    return e.index;
  }

  static SearchPrecision fromInt(core.int val) {
    return SearchPrecision.values[val];
  }

  static SearchPrecision? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(SearchPrecision? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
