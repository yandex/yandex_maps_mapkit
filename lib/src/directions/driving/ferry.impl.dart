part of 'ferry.dart';

final class DrivingFerryNative extends ffi.Struct {
  external mapkit_geometry_geometry.SubpolylineNative position;
}

final DrivingFerryNative Function(mapkit_geometry_geometry.SubpolylineNative)
    _DrivingFerryNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingFerryNative Function(
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_directions_driving_DrivingFerry_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingFerryImpl.toPointer',
    toPlatform: '(val) => DrivingFerryImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingFerry')
extension DrivingFerryImpl on DrivingFerry {
  static DrivingFerry fromNative(DrivingFerryNative native) {
    return DrivingFerry(
        mapkit_geometry_geometry.SubpolylineImpl.fromNative(native.position));
  }

  static DrivingFerryNative toNative(DrivingFerry obj) {
    return _DrivingFerryNativeInit(
        mapkit_geometry_geometry.SubpolylineImpl.toNative(obj.position));
  }

  static DrivingFerry? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        DrivingFerryImpl.fromNative(ptr.cast<DrivingFerryNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingFerry? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingFerryNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
