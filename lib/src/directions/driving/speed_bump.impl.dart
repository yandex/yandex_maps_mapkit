part of 'speed_bump.dart';

final class DrivingSpeedBumpNative extends ffi.Struct {
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingSpeedBumpNative Function(
        mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingSpeedBumpNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingSpeedBumpNative Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingSpeedBump_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingSpeedBumpImpl.toPointer',
    toPlatform:
        '(val) => DrivingSpeedBumpImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingSpeedBump')
extension DrivingSpeedBumpImpl on DrivingSpeedBump {
  static DrivingSpeedBump fromNative(DrivingSpeedBumpNative native) {
    return DrivingSpeedBump(
        mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
            native.position));
  }

  static DrivingSpeedBumpNative toNative(DrivingSpeedBump obj) {
    return _DrivingSpeedBumpNativeInit(
        mapkit_geometry_geometry.PolylinePositionImpl.toNative(obj.position));
  }

  static DrivingSpeedBump? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        DrivingSpeedBumpImpl.fromNative(ptr.cast<DrivingSpeedBumpNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingSpeedBump? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingSpeedBumpNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
