import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'avoidance_flags.containers.dart';
part 'avoidance_flags.impl.dart';

final class DrivingAvoidanceFlags {
  /// The 'avoidTolls' option instructs the router to return routes that
  /// avoid tolls when possible.
  final core.bool avoidTolls;

  /// The 'avoidUnpaved' option instructs the router to return routes that
  /// avoid unpaved roads when possible.
  final core.bool avoidUnpaved;

  /// The 'avoidPoorCondition' option instructs the router to return routes
  /// that avoid roads in poor conditions when possible.
  final core.bool avoidPoorCondition;

  /// The 'avoidPoorConditions' option instructs the router to return
  /// routes that avoid railway crossings when possible.
  final core.bool avoidRailwayCrossing;

  /// The 'avoidBoatFerry' option instructs the router to return routes
  /// that avoid ferries when possible.
  final core.bool avoidBoatFerry;

  /// The 'avoidFordCrossing' option instructs the router to return routes
  /// that avoid ford crossings when possible.
  final core.bool avoidFordCrossing;

  /// The 'avoidTunnel' option instructs the router to return routes that
  /// avoid tunnels when possible.
  final core.bool avoidTunnel;

  /// The 'avoidHighway' option instructs the router to return routes that
  /// avoid highways when possible.
  final core.bool avoidHighway;

  const DrivingAvoidanceFlags({
    this.avoidTolls = false,
    this.avoidUnpaved = false,
    this.avoidPoorCondition = false,
    this.avoidRailwayCrossing = false,
    this.avoidBoatFerry = false,
    this.avoidFordCrossing = false,
    this.avoidTunnel = false,
    this.avoidHighway = false,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        avoidTolls,
        avoidUnpaved,
        avoidPoorCondition,
        avoidRailwayCrossing,
        avoidBoatFerry,
        avoidFordCrossing,
        avoidTunnel,
        avoidHighway
      ]);

  @core.override
  core.bool operator ==(covariant DrivingAvoidanceFlags other) {
    if (core.identical(this, other)) {
      return true;
    }
    return avoidTolls == other.avoidTolls &&
        avoidUnpaved == other.avoidUnpaved &&
        avoidPoorCondition == other.avoidPoorCondition &&
        avoidRailwayCrossing == other.avoidRailwayCrossing &&
        avoidBoatFerry == other.avoidBoatFerry &&
        avoidFordCrossing == other.avoidFordCrossing &&
        avoidTunnel == other.avoidTunnel &&
        avoidHighway == other.avoidHighway;
  }

  @core.override
  core.String toString() {
    return "DrivingAvoidanceFlags(avoidTolls: $avoidTolls, avoidUnpaved: $avoidUnpaved, avoidPoorCondition: $avoidPoorCondition, avoidRailwayCrossing: $avoidRailwayCrossing, avoidBoatFerry: $avoidBoatFerry, avoidFordCrossing: $avoidFordCrossing, avoidTunnel: $avoidTunnel, avoidHighway: $avoidHighway)";
  }
}
