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

/// Overall characteristics of the route.

final class DrivingFlags {
  /// Route is blocked.
  final core.bool blocked;

  /// Route has ferries on it.
  final core.bool hasFerries;

  /// Route has toll posts, which are always paid.
  final core.bool hasTolls;

  /// Route requires special access.
  final core.bool requiresAccessPass;

  /// Route is made for parking.
  final core.bool forParking;

  /// Route will be blocked soon.
  final core.bool futureBlocked;

  /// Route has a severe traffic jam.
  final core.bool deadJam;

  /// Route was built by using offline data.
  final core.bool builtOffline;

  /// Predicted optimal route.
  final core.bool predicted;

  /// Route has rugged roads on it.
  final core.bool hasRuggedRoads;

  /// Route has ford crossing on it.
  final core.bool hasFordCrossing;

  /// Route has vehicle restrictions on it.
  final core.bool hasVehicleRestrictions;

  /// Route has unpaved roads on it.
  final core.bool hasUnpavedRoads;

  /// Route has poor condition roads on it.
  final core.bool hasInPoorConditionRoads;

  /// Route has railway crossing on it.
  final core.bool hasRailwayCrossing;

  /// Route has checkpoints on it.
  final core.bool hasCheckpoints;

  /// Route was requested with custom departure time.
  final core.bool scheduledDeparture;

  /// Route has conditionally-toll-free toll posts
  final core.bool hasNonTransactionalTolls;

  /// Route has tunnels on it.
  final core.bool hasTunnels;

  /// Route has highways on it.
  final core.bool hasHighways;

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
    required this.hasTunnels,
    required this.hasHighways,
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
        hasNonTransactionalTolls,
        hasTunnels,
        hasHighways
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
        hasNonTransactionalTolls == other.hasNonTransactionalTolls &&
        hasTunnels == other.hasTunnels &&
        hasHighways == other.hasHighways;
  }

  @core.override
  core.String toString() {
    return "DrivingFlags(blocked: $blocked, hasFerries: $hasFerries, hasTolls: $hasTolls, requiresAccessPass: $requiresAccessPass, forParking: $forParking, futureBlocked: $futureBlocked, deadJam: $deadJam, builtOffline: $builtOffline, predicted: $predicted, hasRuggedRoads: $hasRuggedRoads, hasFordCrossing: $hasFordCrossing, hasVehicleRestrictions: $hasVehicleRestrictions, hasUnpavedRoads: $hasUnpavedRoads, hasInPoorConditionRoads: $hasInPoorConditionRoads, hasRailwayCrossing: $hasRailwayCrossing, hasCheckpoints: $hasCheckpoints, scheduledDeparture: $scheduledDeparture, hasNonTransactionalTolls: $hasNonTransactionalTolls, hasTunnels: $hasTunnels, hasHighways: $hasHighways)";
  }
}
