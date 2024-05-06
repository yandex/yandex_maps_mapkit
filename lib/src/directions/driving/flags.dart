import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'flags.containers.dart';
part 'flags.impl.dart';

final class DrivingFlags {
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

  @core.override
  core.int get hashCode => core.Object.hashAll([
        blocked,
        hasFerries,
        hasTolls,
        requiresAccessPass,
        forParking,
        futureBlocked,
        deadJam,
        builtOffline,
        predicted,
        hasRuggedRoads,
        hasFordCrossing,
        hasVehicleRestrictions,
        hasUnpavedRoads,
        hasInPoorConditionRoads,
        hasRailwayCrossing,
        hasCheckpoints,
        scheduledDeparture,
        hasNonTransactionalTolls
      ]);

  @core.override
  core.bool operator ==(covariant DrivingFlags other) {
    if (core.identical(this, other)) {
      return true;
    }
    return blocked == other.blocked &&
        hasFerries == other.hasFerries &&
        hasTolls == other.hasTolls &&
        requiresAccessPass == other.requiresAccessPass &&
        forParking == other.forParking &&
        futureBlocked == other.futureBlocked &&
        deadJam == other.deadJam &&
        builtOffline == other.builtOffline &&
        predicted == other.predicted &&
        hasRuggedRoads == other.hasRuggedRoads &&
        hasFordCrossing == other.hasFordCrossing &&
        hasVehicleRestrictions == other.hasVehicleRestrictions &&
        hasUnpavedRoads == other.hasUnpavedRoads &&
        hasInPoorConditionRoads == other.hasInPoorConditionRoads &&
        hasRailwayCrossing == other.hasRailwayCrossing &&
        hasCheckpoints == other.hasCheckpoints &&
        scheduledDeparture == other.scheduledDeparture &&
        hasNonTransactionalTolls == other.hasNonTransactionalTolls;
  }

  @core.override
  core.String toString() {
    return "DrivingFlags(blocked: $blocked, hasFerries: $hasFerries, hasTolls: $hasTolls, requiresAccessPass: $requiresAccessPass, forParking: $forParking, futureBlocked: $futureBlocked, deadJam: $deadJam, builtOffline: $builtOffline, predicted: $predicted, hasRuggedRoads: $hasRuggedRoads, hasFordCrossing: $hasFordCrossing, hasVehicleRestrictions: $hasVehicleRestrictions, hasUnpavedRoads: $hasUnpavedRoads, hasInPoorConditionRoads: $hasInPoorConditionRoads, hasRailwayCrossing: $hasRailwayCrossing, hasCheckpoints: $hasCheckpoints, scheduledDeparture: $scheduledDeparture, hasNonTransactionalTolls: $hasNonTransactionalTolls)";
  }
}
