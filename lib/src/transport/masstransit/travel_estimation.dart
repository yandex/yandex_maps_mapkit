import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/time.dart' as mapkit_time;

part 'travel_estimation.containers.dart';
part 'travel_estimation.impl.dart';

/// Arrival and departure time estimations for time-dependent routes or
/// sections of time-dependent routes.

final class MasstransitTravelEstimation {
  /// Departure time for a route or a route section.
  final mapkit_time.Time departureTime;

  /// Arrival time for a route or a route section.
  final mapkit_time.Time arrivalTime;

  const MasstransitTravelEstimation(this.departureTime, this.arrivalTime);

  @core.override
  core.int get hashCode => core.Object.hashAll([departureTime, arrivalTime]);

  @core.override
  core.bool operator ==(covariant MasstransitTravelEstimation other) {
    if (core.identical(this, other)) {
      return true;
    }
    return departureTime == other.departureTime &&
        arrivalTime == other.arrivalTime;
  }

  @core.override
  core.String toString() {
    return "MasstransitTravelEstimation(departureTime: $departureTime, arrivalTime: $arrivalTime)";
  }
}
