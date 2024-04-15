import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'flags.containers.dart';

/// @nodoc
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
    toNative: 'DrivingFlags.toPointer',
    toPlatform: '(val) => DrivingFlags.fromPointer(val, needFree: false)')
class DrivingFlags {
  final core.bool blocked;
  final core.bool hasFerries;
  final core.bool hasTolls;
  final core.bool requiresAccessPass;
  final core.bool forParking;
  final core.bool futureBlocked;
  final core.bool deadJam;
  final core.bool builtOffline;
  final core.bool predicted;
  final core.bool hasRuggedRoads;
  final core.bool hasFordCrossing;
  final core.bool hasVehicleRestrictions;
  final core.bool hasUnpavedRoads;
  final core.bool hasInPoorConditionRoads;
  final core.bool hasRailwayCrossing;
  final core.bool hasCheckpoints;
  final core.bool scheduledDeparture;
  final core.bool hasNonTransactionalTolls;

  const DrivingFlags({
    required this.blocked,
    required this.hasFerries,
    required this.hasTolls,
    required this.requiresAccessPass,
    required this.forParking,
    required this.futureBlocked,
    required this.deadJam,
    required this.builtOffline,
    required this.predicted,
    required this.hasRuggedRoads,
    required this.hasFordCrossing,
    required this.hasVehicleRestrictions,
    required this.hasUnpavedRoads,
    required this.hasInPoorConditionRoads,
    required this.hasRailwayCrossing,
    required this.hasCheckpoints,
    required this.scheduledDeparture,
    required this.hasNonTransactionalTolls,
  });

  /// @nodoc
  @internal
  DrivingFlags.fromNative(DrivingFlagsNative native)
      : this(
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

  /// @nodoc
  @internal
  static DrivingFlagsNative toNative(DrivingFlags c) {
    return _DrivingFlagsNativeInit(
        c.blocked,
        c.hasFerries,
        c.hasTolls,
        c.requiresAccessPass,
        c.forParking,
        c.futureBlocked,
        c.deadJam,
        c.builtOffline,
        c.predicted,
        c.hasRuggedRoads,
        c.hasFordCrossing,
        c.hasVehicleRestrictions,
        c.hasUnpavedRoads,
        c.hasInPoorConditionRoads,
        c.hasRailwayCrossing,
        c.hasCheckpoints,
        c.scheduledDeparture,
        c.hasNonTransactionalTolls);
  }

  /// @nodoc
  @internal
  static DrivingFlags? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingFlags.fromNative(ptr.cast<DrivingFlagsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingFlags? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingFlagsNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
