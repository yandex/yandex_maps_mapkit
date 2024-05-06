part of 'ford_crossing.dart';

final class DrivingFordCrossingNative extends ffi.Struct {
  external mapkit_geometry_geometry.SubpolylineNative position;
}

final DrivingFordCrossingNative Function(
        mapkit_geometry_geometry.SubpolylineNative)
    _DrivingFordCrossingNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingFordCrossingNative Function(
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_directions_driving_DrivingFordCrossing_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingFordCrossingImpl.toPointer',
    toPlatform:
        '(val) => DrivingFordCrossingImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingFordCrossing')
extension DrivingFordCrossingImpl on DrivingFordCrossing {
  static DrivingFordCrossing fromNative(DrivingFordCrossingNative native) {
    return DrivingFordCrossing(
        mapkit_geometry_geometry.SubpolylineImpl.fromNative(native.position));
  }

  static DrivingFordCrossingNative toNative(DrivingFordCrossing obj) {
    return _DrivingFordCrossingNativeInit(
        mapkit_geometry_geometry.SubpolylineImpl.toNative(obj.position));
  }

  static DrivingFordCrossing? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingFordCrossingImpl.fromNative(
        ptr.cast<DrivingFordCrossingNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingFordCrossing? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingFordCrossingNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
