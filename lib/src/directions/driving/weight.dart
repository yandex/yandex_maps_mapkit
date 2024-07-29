import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/localized_value.dart'
    as mapkit_localized_value;

part 'weight.containers.dart';
part 'weight.impl.dart';

/// Quantitative characteristics of any segment of the route.

final class DrivingWeight {
  /// Time to travel, not considering traffic.
  final mapkit_localized_value.LocalizedValue time;

  /// Time to travel, considering traffic.
  final mapkit_localized_value.LocalizedValue timeWithTraffic;

  /// Distance to travel.
  final mapkit_localized_value.LocalizedValue distance;

  const DrivingWeight(this.time, this.timeWithTraffic, this.distance);

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([time, timeWithTraffic, distance]);

  @core.override
  core.bool operator ==(covariant DrivingWeight other) {
    if (core.identical(this, other)) {
      return true;
    }
    return time == other.time &&
        timeWithTraffic == other.timeWithTraffic &&
        distance == other.distance;
  }

  @core.override
  core.String toString() {
    return "DrivingWeight(time: $time, timeWithTraffic: $timeWithTraffic, distance: $distance)";
  }
}
