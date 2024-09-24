part of 'highway.dart';

final class DrivingHighwayNative extends ffi.Struct {
  external mapkit_geometry_geometry.SubpolylineNative position;
}

final DrivingHighwayNative Function(mapkit_geometry_geometry.SubpolylineNative)
    _DrivingHighwayNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingHighwayNative Function(
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_directions_driving_DrivingHighway_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingHighwayImpl.toPointer',
    toPlatform: '(val) => DrivingHighwayImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingHighway')
extension DrivingHighwayImpl on DrivingHighway {
  static DrivingHighway fromNative(DrivingHighwayNative native) {
    return DrivingHighway(
        mapkit_geometry_geometry.SubpolylineImpl.fromNative(native.position));
  }

  static DrivingHighwayNative toNative(DrivingHighway obj) {
    return _DrivingHighwayNativeInit(
        mapkit_geometry_geometry.SubpolylineImpl.toNative(obj.position));
  }

  static DrivingHighway? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        DrivingHighwayImpl.fromNative(ptr.cast<DrivingHighwayNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingHighway? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingHighwayNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
