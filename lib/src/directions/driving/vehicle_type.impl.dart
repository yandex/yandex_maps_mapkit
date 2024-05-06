part of 'vehicle_type.dart';

@bindings_annotations.ContainerData(
    toNative: 'DrivingVehicleTypeImpl.toPointer',
    toPlatform:
        '(val) => DrivingVehicleTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingVehicleType')
extension DrivingVehicleTypeImpl on DrivingVehicleType {
  static core.int toInt(DrivingVehicleType e) {
    return e.index;
  }

  static DrivingVehicleType fromInt(core.int val) {
    return DrivingVehicleType.values[val];
  }

  static DrivingVehicleType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(DrivingVehicleType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
