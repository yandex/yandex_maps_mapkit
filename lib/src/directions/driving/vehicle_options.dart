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
import 'package:yandex_maps_mapkit/src/directions/driving/vehicle_type.dart'
    as directions_driving_vehicle_type;

part 'vehicle_options.containers.dart';
part 'vehicle_options.impl.dart';

final class DrivingVehicleOptions {
  /// Sets the vehicle type for special routing.
  final directions_driving_vehicle_type.DrivingVehicleType vehicleType;

  /// Real vehicle weight.
  ///
  final core.double? weight;

  /// Maximal weight supported by a vehicle axle.
  ///
  final core.double? axleWeight;

  /// Maximal allowed weight for the vehicle.
  ///
  final core.double? maxWeight;

  /// Vehicle height.
  ///
  final core.double? height;

  /// Vehicle width.
  ///
  final core.double? width;

  /// Vehicle length.
  ///
  final core.double? length;

  /// Vehicle cargo weight.
  ///
  final core.double? payload;

  /// Vehicle eco class.
  ///
  final core.int? ecoClass;

  /// The vehicle has a trailer attached.
  ///
  final core.bool? hasTrailer;

  /// The vehicle is permitted for busway.
  ///
  final core.bool? buswayPermitted;

  const DrivingVehicleOptions({
    this.vehicleType =
        directions_driving_vehicle_type.DrivingVehicleType.Default,
    this.weight,
    this.axleWeight,
    this.maxWeight,
    this.height,
    this.width,
    this.length,
    this.payload,
    this.ecoClass,
    this.hasTrailer,
    this.buswayPermitted,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        vehicleType,
        weight,
        axleWeight,
        maxWeight,
        height,
        width,
        length,
        payload,
        ecoClass,
        hasTrailer,
        buswayPermitted
      ]);

  @core.override
  core.bool operator ==(covariant DrivingVehicleOptions other) {
    if (core.identical(this, other)) {
      return true;
    }
    return vehicleType == other.vehicleType &&
        weight == other.weight &&
        axleWeight == other.axleWeight &&
        maxWeight == other.maxWeight &&
        height == other.height &&
        width == other.width &&
        length == other.length &&
        payload == other.payload &&
        ecoClass == other.ecoClass &&
        hasTrailer == other.hasTrailer &&
        buswayPermitted == other.buswayPermitted;
  }

  @core.override
  core.String toString() {
    return "DrivingVehicleOptions(vehicleType: $vehicleType, weight: $weight, axleWeight: $axleWeight, maxWeight: $maxWeight, height: $height, width: $width, length: $length, payload: $payload, ecoClass: $ecoClass, hasTrailer: $hasTrailer, buswayPermitted: $buswayPermitted)";
  }
}
