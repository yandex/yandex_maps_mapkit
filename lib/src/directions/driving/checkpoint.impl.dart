part of 'checkpoint.dart';

final class DrivingCheckpointNative extends ffi.Struct {
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingCheckpointNative Function(
        mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingCheckpointNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingCheckpointNative Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingCheckpoint_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingCheckpointImpl.toPointer',
    toPlatform:
        '(val) => DrivingCheckpointImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingCheckpoint')
extension DrivingCheckpointImpl on DrivingCheckpoint {
  static DrivingCheckpoint fromNative(DrivingCheckpointNative native) {
    return DrivingCheckpoint(
        mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
            native.position));
  }

  static DrivingCheckpointNative toNative(DrivingCheckpoint obj) {
    return _DrivingCheckpointNativeInit(
        mapkit_geometry_geometry.PolylinePositionImpl.toNative(obj.position));
  }

  static DrivingCheckpoint? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingCheckpointImpl.fromNative(
        ptr.cast<DrivingCheckpointNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingCheckpoint? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingCheckpointNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
