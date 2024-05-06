part of 'request_type.dart';

@bindings_annotations.ContainerData(
    toNative: 'RequestTypeImpl.toPointer',
    toPlatform: '(val) => RequestTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'RequestType')
extension RequestTypeImpl on RequestType {
  static core.int toInt(RequestType e) {
    return e.index;
  }

  static RequestType fromInt(core.int val) {
    return RequestType.values[val];
  }

  static RequestType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(RequestType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
