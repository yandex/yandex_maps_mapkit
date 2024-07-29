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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;

part 'vehicle_restrictions.containers.dart';
part 'vehicle_restrictions.impl.dart';

final class DrivingVehicleRestriction {
  /// Actual weight limit, tons. See Driving Rules sign 3.11.
  ///
  final core.double? weightLimit;

  /// Axle load weight limit, tons. See Driving Rules sign 3.12.
  ///
  final core.double? axleWeightLimit;

  /// Maximal allowed weight limit, tons. See Driving Rules sign 3.4, table
  /// 8.11.
  ///
  final core.double? maxWeightLimit;

  /// Height limit, meters. See Driving Rules sign 3.13.
  ///
  final core.double? heightLimit;

  /// Width limit, meters. See Driving Rules sign 3.14.
  ///
  final core.double? widthLimit;

  /// Length limit, meters. See Driving Rules sign 3.15.
  ///
  final core.double? lengthLimit;

  /// Payload limit, tons.
  ///
  final core.double? payloadLimit;

  /// Minimal allowed engine ecological class. See Driving Rules sign 5.35
  /// and 5.36.
  ///
  final core.int? minEcoClass;

  /// Trailer is not allowed. See Driving Rules sign 3.7.
  ///
  final core.bool? trailerNotAllowed;

  /// Legal or physical limitation.
  ///
  final core.bool? legal;

  const DrivingVehicleRestriction({
    this.weightLimit,
    this.axleWeightLimit,
    this.maxWeightLimit,
    this.heightLimit,
    this.widthLimit,
    this.lengthLimit,
    this.payloadLimit,
    this.minEcoClass,
    this.trailerNotAllowed,
    this.legal,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        weightLimit,
        axleWeightLimit,
        maxWeightLimit,
        heightLimit,
        widthLimit,
        lengthLimit,
        payloadLimit,
        minEcoClass,
        trailerNotAllowed,
        legal
      ]);

  @core.override
  core.bool operator ==(covariant DrivingVehicleRestriction other) {
    if (core.identical(this, other)) {
      return true;
    }
    return weightLimit == other.weightLimit &&
        axleWeightLimit == other.axleWeightLimit &&
        maxWeightLimit == other.maxWeightLimit &&
        heightLimit == other.heightLimit &&
        widthLimit == other.widthLimit &&
        lengthLimit == other.lengthLimit &&
        payloadLimit == other.payloadLimit &&
        minEcoClass == other.minEcoClass &&
        trailerNotAllowed == other.trailerNotAllowed &&
        legal == other.legal;
  }

  @core.override
  core.String toString() {
    return "DrivingVehicleRestriction(weightLimit: $weightLimit, axleWeightLimit: $axleWeightLimit, maxWeightLimit: $maxWeightLimit, heightLimit: $heightLimit, widthLimit: $widthLimit, lengthLimit: $lengthLimit, payloadLimit: $payloadLimit, minEcoClass: $minEcoClass, trailerNotAllowed: $trailerNotAllowed, legal: $legal)";
  }
}

final class DrivingRoadVehicleRestriction {
  final DrivingVehicleRestriction vehicleRestriction;
  final mapkit_geometry_geometry.Subpolyline position;

  const DrivingRoadVehicleRestriction(this.vehicleRestriction, this.position);

  @core.override
  core.int get hashCode => core.Object.hashAll([vehicleRestriction, position]);

  @core.override
  core.bool operator ==(covariant DrivingRoadVehicleRestriction other) {
    if (core.identical(this, other)) {
      return true;
    }
    return vehicleRestriction == other.vehicleRestriction &&
        position == other.position;
  }

  @core.override
  core.String toString() {
    return "DrivingRoadVehicleRestriction(vehicleRestriction: $vehicleRestriction, position: $position)";
  }
}

final class DrivingManoeuvreVehicleRestriction {
  final DrivingVehicleRestriction vehicleRestriction;
  final mapkit_geometry_geometry.PolylinePosition position;

  const DrivingManoeuvreVehicleRestriction(
      this.vehicleRestriction, this.position);

  @core.override
  core.int get hashCode => core.Object.hashAll([vehicleRestriction, position]);

  @core.override
  core.bool operator ==(covariant DrivingManoeuvreVehicleRestriction other) {
    if (core.identical(this, other)) {
      return true;
    }
    return vehicleRestriction == other.vehicleRestriction &&
        position == other.position;
  }

  @core.override
  core.String toString() {
    return "DrivingManoeuvreVehicleRestriction(vehicleRestriction: $vehicleRestriction, position: $position)";
  }
}
