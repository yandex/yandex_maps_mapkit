part of 'pedestrian_crossing.dart';

final class DrivingPedestrianCrossingNative extends ffi.Struct {
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingPedestrianCrossingNative Function(
        mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingPedestrianCrossingNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingPedestrianCrossingNative Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingPedestrianCrossing_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingPedestrianCrossingImpl.toPointer',
    toPlatform:
        '(val) => DrivingPedestrianCrossingImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingPedestrianCrossing')
extension DrivingPedestrianCrossingImpl on DrivingPedestrianCrossing {
  static DrivingPedestrianCrossing fromNative(
      DrivingPedestrianCrossingNative native) {
    return DrivingPedestrianCrossing(
        mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
            native.position));
  }

  static DrivingPedestrianCrossingNative toNative(
      DrivingPedestrianCrossing obj) {
    return _DrivingPedestrianCrossingNativeInit(
        mapkit_geometry_geometry.PolylinePositionImpl.toNative(obj.position));
  }

  static DrivingPedestrianCrossing? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingPedestrianCrossingImpl.fromNative(
        ptr.cast<DrivingPedestrianCrossingNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingPedestrianCrossing? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingPedestrianCrossingNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
