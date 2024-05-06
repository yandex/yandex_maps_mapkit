part of 'traffic_type.dart';

@bindings_annotations.ContainerData(
    toNative: 'BicycleTrafficTypeIDImpl.toPointer',
    toPlatform:
        '(val) => BicycleTrafficTypeIDImpl.fromPointer(val, needFree: false)',
    platformType: 'BicycleTrafficTypeID')
extension BicycleTrafficTypeIDImpl on BicycleTrafficTypeID {
  static core.int toInt(BicycleTrafficTypeID e) {
    return e.index;
  }

  static BicycleTrafficTypeID fromInt(core.int val) {
    return BicycleTrafficTypeID.values[val];
  }

  static BicycleTrafficTypeID? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(BicycleTrafficTypeID? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
