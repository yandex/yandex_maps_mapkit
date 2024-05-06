part of 'vehicle_restrictions.dart';

final class DrivingVehicleRestrictionNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> weightLimit;
  external ffi.Pointer<ffi.Void> axleWeightLimit;
  external ffi.Pointer<ffi.Void> maxWeightLimit;
  external ffi.Pointer<ffi.Void> heightLimit;
  external ffi.Pointer<ffi.Void> widthLimit;
  external ffi.Pointer<ffi.Void> lengthLimit;
  external ffi.Pointer<ffi.Void> payloadLimit;
  external ffi.Pointer<ffi.Void> minEcoClass;
  external ffi.Pointer<ffi.Void> trailerNotAllowed;
  external ffi.Pointer<ffi.Void> legal;
}

final DrivingVehicleRestrictionNative Function(
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingVehicleRestrictionNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingVehicleRestrictionNative Function(
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
            'yandex_flutter_directions_driving_DrivingVehicleRestriction_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingVehicleRestrictionImpl.toPointer',
    toPlatform:
        '(val) => DrivingVehicleRestrictionImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingVehicleRestriction')
extension DrivingVehicleRestrictionImpl on DrivingVehicleRestriction {
  static DrivingVehicleRestriction fromNative(
      DrivingVehicleRestrictionNative native) {
    return DrivingVehicleRestriction(
        weightLimit: to_platform.toPlatformFromPointerFloat(native.weightLimit),
        axleWeightLimit:
            to_platform.toPlatformFromPointerFloat(native.axleWeightLimit),
        maxWeightLimit:
            to_platform.toPlatformFromPointerFloat(native.maxWeightLimit),
        heightLimit: to_platform.toPlatformFromPointerFloat(native.heightLimit),
        widthLimit: to_platform.toPlatformFromPointerFloat(native.widthLimit),
        lengthLimit: to_platform.toPlatformFromPointerFloat(native.lengthLimit),
        payloadLimit:
            to_platform.toPlatformFromPointerFloat(native.payloadLimit),
        minEcoClass:
            to_platform.toPlatformFromPointerUint32(native.minEcoClass),
        trailerNotAllowed:
            to_platform.toPlatformFromPointerBool(native.trailerNotAllowed),
        legal: to_platform.toPlatformFromPointerBool(native.legal));
  }

  static DrivingVehicleRestrictionNative toNative(
      DrivingVehicleRestriction obj) {
    return _DrivingVehicleRestrictionNativeInit(
        to_native.toNativePtrFloat(obj.weightLimit),
        to_native.toNativePtrFloat(obj.axleWeightLimit),
        to_native.toNativePtrFloat(obj.maxWeightLimit),
        to_native.toNativePtrFloat(obj.heightLimit),
        to_native.toNativePtrFloat(obj.widthLimit),
        to_native.toNativePtrFloat(obj.lengthLimit),
        to_native.toNativePtrFloat(obj.payloadLimit),
        to_native.toNativePtrUint32(obj.minEcoClass),
        to_native.toNativePtrBool(obj.trailerNotAllowed),
        to_native.toNativePtrBool(obj.legal));
  }

  static DrivingVehicleRestriction? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingVehicleRestrictionImpl.fromNative(
        ptr.cast<DrivingVehicleRestrictionNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingVehicleRestriction? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingVehicleRestrictionNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class DrivingRoadVehicleRestrictionNative extends ffi.Struct {
  external DrivingVehicleRestrictionNative vehicleRestriction;
  external mapkit_geometry_geometry.SubpolylineNative position;
}

final DrivingRoadVehicleRestrictionNative Function(
    DrivingVehicleRestrictionNative,
    mapkit_geometry_geometry
        .SubpolylineNative) _DrivingRoadVehicleRestrictionNativeInit = lib
    .library
    .lookup<
            ffi.NativeFunction<
                DrivingRoadVehicleRestrictionNative Function(
                    DrivingVehicleRestrictionNative,
                    mapkit_geometry_geometry.SubpolylineNative)>>(
        'yandex_flutter_directions_driving_DrivingRoadVehicleRestriction_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingRoadVehicleRestrictionImpl.toPointer',
    toPlatform:
        '(val) => DrivingRoadVehicleRestrictionImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingRoadVehicleRestriction')
extension DrivingRoadVehicleRestrictionImpl on DrivingRoadVehicleRestriction {
  static DrivingRoadVehicleRestriction fromNative(
      DrivingRoadVehicleRestrictionNative native) {
    return DrivingRoadVehicleRestriction(
        DrivingVehicleRestrictionImpl.fromNative(native.vehicleRestriction),
        mapkit_geometry_geometry.SubpolylineImpl.fromNative(native.position));
  }

  static DrivingRoadVehicleRestrictionNative toNative(
      DrivingRoadVehicleRestriction obj) {
    return _DrivingRoadVehicleRestrictionNativeInit(
        DrivingVehicleRestrictionImpl.toNative(obj.vehicleRestriction),
        mapkit_geometry_geometry.SubpolylineImpl.toNative(obj.position));
  }

  static DrivingRoadVehicleRestriction? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingRoadVehicleRestrictionImpl.fromNative(
        ptr.cast<DrivingRoadVehicleRestrictionNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingRoadVehicleRestriction? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingRoadVehicleRestrictionNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class DrivingManoeuvreVehicleRestrictionNative extends ffi.Struct {
  external DrivingVehicleRestrictionNative vehicleRestriction;
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingManoeuvreVehicleRestrictionNative Function(
        DrivingVehicleRestrictionNative,
        mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingManoeuvreVehicleRestrictionNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingManoeuvreVehicleRestrictionNative Function(
                        DrivingVehicleRestrictionNative,
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingManoeuvreVehicleRestriction_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingManoeuvreVehicleRestrictionImpl.toPointer',
    toPlatform:
        '(val) => DrivingManoeuvreVehicleRestrictionImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingManoeuvreVehicleRestriction')
extension DrivingManoeuvreVehicleRestrictionImpl
    on DrivingManoeuvreVehicleRestriction {
  static DrivingManoeuvreVehicleRestriction fromNative(
      DrivingManoeuvreVehicleRestrictionNative native) {
    return DrivingManoeuvreVehicleRestriction(
        DrivingVehicleRestrictionImpl.fromNative(native.vehicleRestriction),
        mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
            native.position));
  }

  static DrivingManoeuvreVehicleRestrictionNative toNative(
      DrivingManoeuvreVehicleRestriction obj) {
    return _DrivingManoeuvreVehicleRestrictionNativeInit(
        DrivingVehicleRestrictionImpl.toNative(obj.vehicleRestriction),
        mapkit_geometry_geometry.PolylinePositionImpl.toNative(obj.position));
  }

  static DrivingManoeuvreVehicleRestriction? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingManoeuvreVehicleRestrictionImpl.fromNative(
        ptr.cast<DrivingManoeuvreVehicleRestrictionNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      DrivingManoeuvreVehicleRestriction? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingManoeuvreVehicleRestrictionNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
