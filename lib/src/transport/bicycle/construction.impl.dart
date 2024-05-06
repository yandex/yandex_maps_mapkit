part of 'construction.dart';

@bindings_annotations.ContainerData(
    toNative: 'BicycleConstructionIDImpl.toPointer',
    toPlatform:
        '(val) => BicycleConstructionIDImpl.fromPointer(val, needFree: false)',
    platformType: 'BicycleConstructionID')
extension BicycleConstructionIDImpl on BicycleConstructionID {
  static core.int toInt(BicycleConstructionID e) {
    return e.index;
  }

  static BicycleConstructionID fromInt(core.int val) {
    return BicycleConstructionID.values[val];
  }

  static BicycleConstructionID? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(BicycleConstructionID? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
