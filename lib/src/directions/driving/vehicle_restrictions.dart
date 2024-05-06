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
  final core.double? weightLimit;
  final core.double? axleWeightLimit;
  final core.double? maxWeightLimit;
  final core.double? heightLimit;
  final core.double? widthLimit;
  final core.double? lengthLimit;
  final core.double? payloadLimit;
  final core.int? minEcoClass;
  final core.bool? trailerNotAllowed;
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
