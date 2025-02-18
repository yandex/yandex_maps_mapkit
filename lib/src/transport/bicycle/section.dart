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

part 'section.containers.dart';
part 'section.impl.dart';

/// Section of the route.
abstract final class BicycleSection implements ffi.Finalizable {
  factory BicycleSection(transport_bicycle_weight.BicycleWeight weight,
          mapkit_geometry_geometry.Subpolyline geometry) =>
      BicycleSectionImpl(weight, geometry);

  BicycleSection._();

  /// Quantitative characteristics of a route or route section.
  transport_bicycle_weight.BicycleWeight get weight;

  /// Path of the route polyline for this section.
  mapkit_geometry_geometry.Subpolyline get geometry;

  @core.override
  core.int get hashCode => core.Object.hashAll([weight, geometry]);

  @core.override
  core.bool operator ==(covariant BicycleSection other) {
    if (core.identical(this, other)) {
      return true;
    }
    return weight == other.weight && geometry == other.geometry;
  }

  @core.override
  core.String toString() {
    return "BicycleSection(weight: $weight, geometry: $geometry)";
  }
}
