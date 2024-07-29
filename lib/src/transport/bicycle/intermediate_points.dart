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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;

part 'intermediate_points.containers.dart';
part 'intermediate_points.impl.dart';

/// Via points (throughpoints) are key points on the route geometry that
/// the route passes through. Via points are taken from the request.
abstract final class BicycleViaPoint implements ffi.Finalizable {
  factory BicycleViaPoint(mapkit_geometry_geometry.PolylinePosition position) =>
      BicycleViaPointImpl(position);

  /// Via point position on the route geometry.
  mapkit_geometry_geometry.PolylinePosition get position;

  @core.override
  core.int get hashCode => core.Object.hashAll([position]);

  @core.override
  core.bool operator ==(covariant BicycleViaPoint other) {
    if (core.identical(this, other)) {
      return true;
    }
    return position == other.position;
  }

  @core.override
  core.String toString() {
    return "BicycleViaPoint(position: $position)";
  }
}

/// A waypoint is the origin, destination or intermediate destination on
/// the route. For each way point, the corresponding selected arrival
/// point can be stored.
abstract final class BicycleWayPoint implements ffi.Finalizable {
  factory BicycleWayPoint(mapkit_geometry_point.Point position,
          mapkit_geometry_point.Point? selectedArrivalPoint) =>
      BicycleWayPointImpl(position, selectedArrivalPoint);

  /// Coordinates of the original waypoint from the request.
  mapkit_geometry_point.Point get position;

  /// Coordinates of the selected arrival point.
  ///
  mapkit_geometry_point.Point? get selectedArrivalPoint;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([position, selectedArrivalPoint]);

  @core.override
  core.bool operator ==(covariant BicycleWayPoint other) {
    if (core.identical(this, other)) {
      return true;
    }
    return position == other.position &&
        selectedArrivalPoint == other.selectedArrivalPoint;
  }

  @core.override
  core.String toString() {
    return "BicycleWayPoint(position: $position, selectedArrivalPoint: $selectedArrivalPoint)";
  }
}
