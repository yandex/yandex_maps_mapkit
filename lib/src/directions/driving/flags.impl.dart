part of 'flags.dart';

final class DrivingFlagsNative extends ffi.Struct {
  @ffi.Bool()
  external core.bool blocked;
  @ffi.Bool()
  external core.bool hasFerries;
  @ffi.Bool()
  external core.bool hasTolls;
  @ffi.Bool()
  external core.bool requiresAccessPass;
  @ffi.Bool()
  external core.bool forParking;
  @ffi.Bool()
  external core.bool futureBlocked;
  @ffi.Bool()
  external core.bool deadJam;
  @ffi.Bool()
  external core.bool builtOffline;
  @ffi.Bool()
  external core.bool predicted;
  @ffi.Bool()
  external core.bool hasRuggedRoads;
  @ffi.Bool()
  external core.bool hasFordCrossing;
  @ffi.Bool()
  external core.bool hasVehicleRestrictions;
  @ffi.Bool()
  external core.bool hasUnpavedRoads;
  @ffi.Bool()
  external core.bool hasInPoorConditionRoads;
  @ffi.Bool()
  external core.bool hasRailwayCrossing;
  @ffi.Bool()
  external core.bool hasCheckpoints;
  @ffi.Bool()
  external core.bool scheduledDeparture;
  @ffi.Bool()
  external core.bool hasNonTransactionalTolls;
}

final DrivingFlagsNative Function(
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    core
        .bool) _DrivingFlagsNativeInit = lib.library
    .lookup<
        ffi.NativeFunction<
            DrivingFlagsNative Function(
                ffi.Bool,
                ffi.Bool,
                ffi.Bool,
                ffi.Bool,
                ffi.Bool,
                ffi.Bool,
                ffi.Bool,
                ffi.Bool,
                ffi.Bool,
                ffi.Bool,
                ffi.Bool,
                ffi.Bool,
                ffi.Bool,
                ffi.Bool,
                ffi.Bool,
                ffi.Bool,
                ffi.Bool,
                ffi.Bool)>>('yandex_flutter_directions_driving_DrivingFlags_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingFlagsImpl.toPointer',
    toPlatform: '(val) => DrivingFlagsImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingFlags')
extension DrivingFlagsImpl on DrivingFlags {
  static DrivingFlags fromNative(DrivingFlagsNative native) {
    return DrivingFlags(
        blocked: native.blocked,
        hasFerries: native.hasFerries,
        hasTolls: native.hasTolls,
        requiresAccessPass: native.requiresAccessPass,
        forParking: native.forParking,
        futureBlocked: native.futureBlocked,
        deadJam: native.deadJam,
        builtOffline: native.builtOffline,
        predicted: native.predicted,
        hasRuggedRoads: native.hasRuggedRoads,
        hasFordCrossing: native.hasFordCrossing,
        hasVehicleRestrictions: native.hasVehicleRestrictions,
        hasUnpavedRoads: native.hasUnpavedRoads,
        hasInPoorConditionRoads: native.hasInPoorConditionRoads,
        hasRailwayCrossing: native.hasRailwayCrossing,
        hasCheckpoints: native.hasCheckpoints,
        scheduledDeparture: native.scheduledDeparture,
        hasNonTransactionalTolls: native.hasNonTransactionalTolls);
  }

  static DrivingFlagsNative toNative(DrivingFlags obj) {
    return _DrivingFlagsNativeInit(
        obj.blocked,
        obj.hasFerries,
        obj.hasTolls,
        obj.requiresAccessPass,
        obj.forParking,
        obj.futureBlocked,
        obj.deadJam,
        obj.builtOffline,
        obj.predicted,
        obj.hasRuggedRoads,
        obj.hasFordCrossing,
        obj.hasVehicleRestrictions,
        obj.hasUnpavedRoads,
        obj.hasInPoorConditionRoads,
        obj.hasRailwayCrossing,
        obj.hasCheckpoints,
        obj.scheduledDeparture,
        obj.hasNonTransactionalTolls);
  }

  static DrivingFlags? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        DrivingFlagsImpl.fromNative(ptr.cast<DrivingFlagsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingFlags? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingFlagsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
