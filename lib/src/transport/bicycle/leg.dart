import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_mapkit/src/transport/bicycle/weight.dart'
    as transport_bicycle_weight;

part 'leg.containers.dart';
part 'leg.impl.dart';

/// Leg of the route.
abstract final class BicycleLeg implements ffi.Finalizable {
  factory BicycleLeg(transport_bicycle_weight.BicycleWeight weight,
          mapkit_geometry_geometry.Subpolyline geometry) =>
      BicycleLegImpl(weight, geometry);

  BicycleLeg._();

  /// Quantitative characteristics of the route leg.
  transport_bicycle_weight.BicycleWeight get weight;

  /// Path of the route polyline for the route leg.
  mapkit_geometry_geometry.Subpolyline get geometry;

  @core.override
  core.int get hashCode => core.Object.hashAll([weight, geometry]);

  @core.override
  core.bool operator ==(covariant BicycleLeg other) {
    if (core.identical(this, other)) {
      return true;
    }
    return weight == other.weight && geometry == other.geometry;
  }

  @core.override
  core.String toString() {
    return "BicycleLeg(weight: $weight, geometry: $geometry)";
  }
}
