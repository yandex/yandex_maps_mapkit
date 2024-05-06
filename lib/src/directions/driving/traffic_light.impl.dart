part of 'traffic_light.dart';

final class DrivingTrafficLightNative extends ffi.Struct {
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingTrafficLightNative Function(
        mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingTrafficLightNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingTrafficLightNative Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingTrafficLight_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingTrafficLightImpl.toPointer',
    toPlatform:
        '(val) => DrivingTrafficLightImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingTrafficLight')
extension DrivingTrafficLightImpl on DrivingTrafficLight {
  static DrivingTrafficLight fromNative(DrivingTrafficLightNative native) {
    return DrivingTrafficLight(
        mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
            native.position));
  }

  static DrivingTrafficLightNative toNative(DrivingTrafficLight obj) {
    return _DrivingTrafficLightNativeInit(
        mapkit_geometry_geometry.PolylinePositionImpl.toNative(obj.position));
  }

  static DrivingTrafficLight? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingTrafficLightImpl.fromNative(
        ptr.cast<DrivingTrafficLightNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingTrafficLight? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingTrafficLightNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
