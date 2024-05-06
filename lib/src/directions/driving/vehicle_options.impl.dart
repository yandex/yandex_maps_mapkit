part of 'vehicle_options.dart';

final class DrivingVehicleOptionsNative extends ffi.Struct {
  @ffi.Int64()
  external core.int vehicleType;
  external ffi.Pointer<ffi.Void> weight;
  external ffi.Pointer<ffi.Void> axleWeight;
  external ffi.Pointer<ffi.Void> maxWeight;
  external ffi.Pointer<ffi.Void> height;
  external ffi.Pointer<ffi.Void> width;
  external ffi.Pointer<ffi.Void> length;
  external ffi.Pointer<ffi.Void> payload;
  external ffi.Pointer<ffi.Void> ecoClass;
  external ffi.Pointer<ffi.Void> hasTrailer;
  external ffi.Pointer<ffi.Void> buswayPermitted;
}

final DrivingVehicleOptionsNative Function(
        core.int,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingVehicleOptionsNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingVehicleOptionsNative Function(
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingVehicleOptions_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingVehicleOptionsImpl.toPointer',
    toPlatform:
        '(val) => DrivingVehicleOptionsImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingVehicleOptions')
extension DrivingVehicleOptionsImpl on DrivingVehicleOptions {
  static DrivingVehicleOptions fromNative(DrivingVehicleOptionsNative native) {
    return DrivingVehicleOptions(
        vehicleType:
            directions_driving_vehicle_type.DrivingVehicleTypeImpl.fromInt(
                native.vehicleType),
        weight: to_platform.toPlatformFromPointerFloat(native.weight),
        axleWeight: to_platform.toPlatformFromPointerFloat(native.axleWeight),
        maxWeight: to_platform.toPlatformFromPointerFloat(native.maxWeight),
        height: to_platform.toPlatformFromPointerFloat(native.height),
        width: to_platform.toPlatformFromPointerFloat(native.width),
        length: to_platform.toPlatformFromPointerFloat(native.length),
        payload: to_platform.toPlatformFromPointerFloat(native.payload),
        ecoClass: to_platform.toPlatformFromPointerUint32(native.ecoClass),
        hasTrailer: to_platform.toPlatformFromPointerBool(native.hasTrailer),
        buswayPermitted:
            to_platform.toPlatformFromPointerBool(native.buswayPermitted));
  }

  static DrivingVehicleOptionsNative toNative(DrivingVehicleOptions obj) {
    return _DrivingVehicleOptionsNativeInit(
        directions_driving_vehicle_type.DrivingVehicleTypeImpl.toInt(
            obj.vehicleType),
        to_native.toNativePtrFloat(obj.weight),
        to_native.toNativePtrFloat(obj.axleWeight),
        to_native.toNativePtrFloat(obj.maxWeight),
        to_native.toNativePtrFloat(obj.height),
        to_native.toNativePtrFloat(obj.width),
        to_native.toNativePtrFloat(obj.length),
        to_native.toNativePtrFloat(obj.payload),
        to_native.toNativePtrUint32(obj.ecoClass),
        to_native.toNativePtrBool(obj.hasTrailer),
        to_native.toNativePtrBool(obj.buswayPermitted));
  }

  static DrivingVehicleOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingVehicleOptionsImpl.fromNative(
        ptr.cast<DrivingVehicleOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingVehicleOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingVehicleOptionsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
