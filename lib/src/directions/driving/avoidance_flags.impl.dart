part of 'avoidance_flags.dart';

final class DrivingAvoidanceFlagsNative extends ffi.Struct {
  @ffi.Bool()
  external core.bool avoidTolls;
  @ffi.Bool()
  external core.bool avoidUnpaved;
  @ffi.Bool()
  external core.bool avoidPoorCondition;
  @ffi.Bool()
  external core.bool avoidRailwayCrossing;
  @ffi.Bool()
  external core.bool avoidBoatFerry;
  @ffi.Bool()
  external core.bool avoidFordCrossing;
  @ffi.Bool()
  external core.bool avoidTunnel;
  @ffi.Bool()
  external core.bool avoidHighway;
}

final DrivingAvoidanceFlagsNative Function(core.bool, core.bool, core.bool,
        core.bool, core.bool, core.bool, core.bool, core.bool)
    _DrivingAvoidanceFlagsNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingAvoidanceFlagsNative Function(
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Bool)>>(
            'yandex_flutter_directions_driving_DrivingAvoidanceFlags_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingAvoidanceFlagsImpl.toPointer',
    toPlatform:
        '(val) => DrivingAvoidanceFlagsImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingAvoidanceFlags')
extension DrivingAvoidanceFlagsImpl on DrivingAvoidanceFlags {
  static DrivingAvoidanceFlags fromNative(DrivingAvoidanceFlagsNative native) {
    return DrivingAvoidanceFlags(
        avoidTolls: native.avoidTolls,
        avoidUnpaved: native.avoidUnpaved,
        avoidPoorCondition: native.avoidPoorCondition,
        avoidRailwayCrossing: native.avoidRailwayCrossing,
        avoidBoatFerry: native.avoidBoatFerry,
        avoidFordCrossing: native.avoidFordCrossing,
        avoidTunnel: native.avoidTunnel,
        avoidHighway: native.avoidHighway);
  }

  static DrivingAvoidanceFlagsNative toNative(DrivingAvoidanceFlags obj) {
    return _DrivingAvoidanceFlagsNativeInit(
        obj.avoidTolls,
        obj.avoidUnpaved,
        obj.avoidPoorCondition,
        obj.avoidRailwayCrossing,
        obj.avoidBoatFerry,
        obj.avoidFordCrossing,
        obj.avoidTunnel,
        obj.avoidHighway);
  }

  static DrivingAvoidanceFlags? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingAvoidanceFlagsImpl.fromNative(
        ptr.cast<DrivingAvoidanceFlagsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingAvoidanceFlags? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingAvoidanceFlagsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
