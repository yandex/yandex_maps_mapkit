part of 'railway_crossing.dart';

@bindings_annotations.ContainerData(
    toNative: 'DrivingRailwayCrossingTypeImpl.toPointer',
    toPlatform:
        '(val) => DrivingRailwayCrossingTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingRailwayCrossingType')
extension DrivingRailwayCrossingTypeImpl on DrivingRailwayCrossingType {
  static core.int toInt(DrivingRailwayCrossingType e) {
    return e.index;
  }

  static DrivingRailwayCrossingType fromInt(core.int val) {
    return DrivingRailwayCrossingType.values[val];
  }

  static DrivingRailwayCrossingType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingRailwayCrossingType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

final class DrivingRailwayCrossingNative extends ffi.Struct {
  @ffi.Int64()
  external core.int type;
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingRailwayCrossingNative Function(
        core.int, mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingRailwayCrossingNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingRailwayCrossingNative Function(ffi.Int64,
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingRailwayCrossing_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingRailwayCrossingImpl.toPointer',
    toPlatform:
        '(val) => DrivingRailwayCrossingImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingRailwayCrossing')
extension DrivingRailwayCrossingImpl on DrivingRailwayCrossing {
  static DrivingRailwayCrossing fromNative(
      DrivingRailwayCrossingNative native) {
    return DrivingRailwayCrossing(
        DrivingRailwayCrossingTypeImpl.fromInt(native.type),
        mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
            native.position));
  }

  static DrivingRailwayCrossingNative toNative(DrivingRailwayCrossing obj) {
    return _DrivingRailwayCrossingNativeInit(
        DrivingRailwayCrossingTypeImpl.toInt(obj.type),
        mapkit_geometry_geometry.PolylinePositionImpl.toNative(obj.position));
  }

  static DrivingRailwayCrossing? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingRailwayCrossingImpl.fromNative(
        ptr.cast<DrivingRailwayCrossingNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingRailwayCrossing? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingRailwayCrossingNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
