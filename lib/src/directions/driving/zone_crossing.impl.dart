part of 'zone_crossing.dart';

final class DrivingZoneCrossingNative extends ffi.Struct {
  external mapkit_geometry_geometry.SubpolylineNative position;
}

final DrivingZoneCrossingNative Function(
        mapkit_geometry_geometry.SubpolylineNative)
    _DrivingZoneCrossingNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingZoneCrossingNative Function(
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_directions_driving_DrivingZoneCrossing_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingZoneCrossingImpl.toPointer',
    toPlatform:
        '(val) => DrivingZoneCrossingImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingZoneCrossing')
extension DrivingZoneCrossingImpl on DrivingZoneCrossing {
  static DrivingZoneCrossing fromNative(DrivingZoneCrossingNative native) {
    return DrivingZoneCrossing(
        mapkit_geometry_geometry.SubpolylineImpl.fromNative(native.position));
  }

  static DrivingZoneCrossingNative toNative(DrivingZoneCrossing obj) {
    return _DrivingZoneCrossingNativeInit(
        mapkit_geometry_geometry.SubpolylineImpl.toNative(obj.position));
  }

  static DrivingZoneCrossing? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingZoneCrossingImpl.fromNative(
        ptr.cast<DrivingZoneCrossingNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingZoneCrossing? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingZoneCrossingNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
