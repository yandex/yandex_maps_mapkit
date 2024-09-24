import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'non_avoided_features.containers.dart';
part 'non_avoided_features.impl.dart';

final class DrivingNonAvoidedFeatures {
  final core.bool tolls;
  final core.bool ferries;
  final core.bool fordCrossings;
  final core.bool highways;
  final core.bool railwayCrossings;
  final core.bool tunnels;
  final core.bool inPoorConditionRoads;
  final core.bool unpavedRoads;
  final core.bool avoidZones;

  const DrivingNonAvoidedFeatures({
    required this.tolls,
    required this.ferries,
    required this.fordCrossings,
    required this.highways,
    required this.railwayCrossings,
    required this.tunnels,
    required this.inPoorConditionRoads,
    required this.unpavedRoads,
    required this.avoidZones,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        tolls,
        ferries,
        fordCrossings,
        highways,
        railwayCrossings,
        tunnels,
        inPoorConditionRoads,
        unpavedRoads,
        avoidZones
      ]);

  @core.override
  core.bool operator ==(covariant DrivingNonAvoidedFeatures other) {
    if (core.identical(this, other)) {
      return true;
    }
    return tolls == other.tolls &&
        ferries == other.ferries &&
        fordCrossings == other.fordCrossings &&
        highways == other.highways &&
        railwayCrossings == other.railwayCrossings &&
        tunnels == other.tunnels &&
        inPoorConditionRoads == other.inPoorConditionRoads &&
        unpavedRoads == other.unpavedRoads &&
        avoidZones == other.avoidZones;
  }

  @core.override
  core.String toString() {
    return "DrivingNonAvoidedFeatures(tolls: $tolls, ferries: $ferries, fordCrossings: $fordCrossings, highways: $highways, railwayCrossings: $railwayCrossings, tunnels: $tunnels, inPoorConditionRoads: $inPoorConditionRoads, unpavedRoads: $unpavedRoads, avoidZones: $avoidZones)";
  }
}
