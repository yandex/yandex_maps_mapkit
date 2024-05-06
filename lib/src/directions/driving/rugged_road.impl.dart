part of 'rugged_road.dart';

final class DrivingRuggedRoadNative extends ffi.Struct {
  external mapkit_geometry_geometry.SubpolylineNative position;
  @ffi.Bool()
  external core.bool unpaved;
  @ffi.Bool()
  external core.bool inPoorCondition;
}

final DrivingRuggedRoadNative Function(
        mapkit_geometry_geometry.SubpolylineNative, core.bool, core.bool)
    _DrivingRuggedRoadNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingRuggedRoadNative Function(
                        mapkit_geometry_geometry.SubpolylineNative,
                        ffi.Bool,
                        ffi.Bool)>>(
            'yandex_flutter_directions_driving_DrivingRuggedRoad_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingRuggedRoadImpl.toPointer',
    toPlatform:
        '(val) => DrivingRuggedRoadImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingRuggedRoad')
extension DrivingRuggedRoadImpl on DrivingRuggedRoad {
  static DrivingRuggedRoad fromNative(DrivingRuggedRoadNative native) {
    return DrivingRuggedRoad(
        mapkit_geometry_geometry.SubpolylineImpl.fromNative(native.position),
        unpaved: native.unpaved,
        inPoorCondition: native.inPoorCondition);
  }

  static DrivingRuggedRoadNative toNative(DrivingRuggedRoad obj) {
    return _DrivingRuggedRoadNativeInit(
        mapkit_geometry_geometry.SubpolylineImpl.toNative(obj.position),
        obj.unpaved,
        obj.inPoorCondition);
  }

  static DrivingRuggedRoad? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingRuggedRoadImpl.fromNative(
        ptr.cast<DrivingRuggedRoadNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingRuggedRoad? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingRuggedRoadNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
