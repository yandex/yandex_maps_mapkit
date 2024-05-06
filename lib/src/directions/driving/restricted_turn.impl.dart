part of 'restricted_turn.dart';

final class DrivingRestrictedTurnNative extends ffi.Struct {
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingRestrictedTurnNative Function(
        mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingRestrictedTurnNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingRestrictedTurnNative Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingRestrictedTurn_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingRestrictedTurnImpl.toPointer',
    toPlatform:
        '(val) => DrivingRestrictedTurnImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingRestrictedTurn')
extension DrivingRestrictedTurnImpl on DrivingRestrictedTurn {
  static DrivingRestrictedTurn fromNative(DrivingRestrictedTurnNative native) {
    return DrivingRestrictedTurn(
        mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
            native.position));
  }

  static DrivingRestrictedTurnNative toNative(DrivingRestrictedTurn obj) {
    return _DrivingRestrictedTurnNativeInit(
        mapkit_geometry_geometry.PolylinePositionImpl.toNative(obj.position));
  }

  static DrivingRestrictedTurn? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingRestrictedTurnImpl.fromNative(
        ptr.cast<DrivingRestrictedTurnNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingRestrictedTurn? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingRestrictedTurnNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
