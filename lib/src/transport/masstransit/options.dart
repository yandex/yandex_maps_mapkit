import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'options.containers.dart';
part 'options.impl.dart';

/// Desired departure/arrival time settings. Only one the departureTime
/// and arrivalTime fields should be specified.

final class TimeOptions {
  /// Desired departure time in UTC for a time-dependent route request. The
  /// value is specified in milliseconds. This option cannot be used with
  /// arrivalTime.
  ///
  final core.DateTime? departureTime;

  /// Desired arrival time in UTC for a time-dependent route request. The
  /// value is specified in milliseconds. This option cannot be used with
  /// departureTime.
  ///
  final core.DateTime? arrivalTime;

  const TimeOptions({
    this.departureTime,
    this.arrivalTime,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([departureTime, arrivalTime]);

  @core.override
  core.bool operator ==(covariant TimeOptions other) {
    if (core.identical(this, other)) {
      return true;
    }
    return departureTime == other.departureTime &&
        arrivalTime == other.arrivalTime;
  }

  @core.override
  core.String toString() {
    return "TimeOptions(departureTime: $departureTime, arrivalTime: $arrivalTime)";
  }
}

final class FitnessOptions {
  /// If true, router will try avoid steep (in height meaning) routes.
  final core.bool avoidSteep;

  /// If true, router will try avoid stairs.
  final core.bool avoidStairs;

  const FitnessOptions({
    this.avoidSteep = false,
    this.avoidStairs = false,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([avoidSteep, avoidStairs]);

  @core.override
  core.bool operator ==(covariant FitnessOptions other) {
    if (core.identical(this, other)) {
      return true;
    }
    return avoidSteep == other.avoidSteep && avoidStairs == other.avoidStairs;
  }

  @core.override
  core.String toString() {
    return "FitnessOptions(avoidSteep: $avoidSteep, avoidStairs: $avoidStairs)";
  }
}

/// Settings for router, which help personalize or optimize routes

final class RouteOptions {
  final FitnessOptions fitnessOptions;

  const RouteOptions(this.fitnessOptions);

  @core.override
  core.int get hashCode => core.Object.hashAll([fitnessOptions]);

  @core.override
  core.bool operator ==(covariant RouteOptions other) {
    if (core.identical(this, other)) {
      return true;
    }
    return fitnessOptions == other.fitnessOptions;
  }

  @core.override
  core.String toString() {
    return "RouteOptions(fitnessOptions: $fitnessOptions)";
  }
}
