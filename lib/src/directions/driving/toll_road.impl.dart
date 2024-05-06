part of 'toll_road.dart';

final class DrivingTollRoadNative extends ffi.Struct {
  external mapkit_geometry_geometry.SubpolylineNative position;
}

final DrivingTollRoadNative Function(mapkit_geometry_geometry.SubpolylineNative)
    _DrivingTollRoadNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingTollRoadNative Function(
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_directions_driving_DrivingTollRoad_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingTollRoadImpl.toPointer',
    toPlatform:
        '(val) => DrivingTollRoadImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingTollRoad')
extension DrivingTollRoadImpl on DrivingTollRoad {
  static DrivingTollRoad fromNative(DrivingTollRoadNative native) {
    return DrivingTollRoad(
        mapkit_geometry_geometry.SubpolylineImpl.fromNative(native.position));
  }

  static DrivingTollRoadNative toNative(DrivingTollRoad obj) {
    return _DrivingTollRoadNativeInit(
        mapkit_geometry_geometry.SubpolylineImpl.toNative(obj.position));
  }

  static DrivingTollRoad? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        DrivingTollRoadImpl.fromNative(ptr.cast<DrivingTollRoadNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingTollRoad? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingTollRoadNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
