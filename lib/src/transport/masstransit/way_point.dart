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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;

part 'way_point.containers.dart';
part 'way_point.impl.dart';

/// A waypoint is the origin, destination or intermediate destination on
/// the route. For each waypoint, the corresponding selected arrival
/// point can be stored.
abstract final class MasstransitWayPoint implements ffi.Finalizable {
  factory MasstransitWayPoint(
          mapkit_geometry_point.Point position,
          mapkit_geometry_point.Point? selectedArrivalPoint,
          mapkit_geometry_point.Point? selectedDeparturePoint,
          core.String? context,
          core.String? levelId,
          core.String? levelName) =>
      MasstransitWayPointImpl(position, selectedArrivalPoint,
          selectedDeparturePoint, context, levelId, levelName);

  MasstransitWayPoint._();

  /// Coordinates of the original waypoint from the request.
  mapkit_geometry_point.Point get position;

  /// Coordinates of the arrival point that was selected for arrival at the
  /// waypoint.
  ///
  mapkit_geometry_point.Point? get selectedArrivalPoint;

  /// Coordinates of the arrival point that was selected for departure from
  /// the waypoint.
  ///
  mapkit_geometry_point.Point? get selectedDeparturePoint;

  /// request's context for this point
  ///
  core.String? get context;

  /// Indoor level (floor) id
  ///
  core.String? get levelId;

  /// Indoor level (floor) name
  ///
  core.String? get levelName;

  @core.override
  core.int get hashCode => core.Object.hashAll([
        position,
        selectedArrivalPoint,
        selectedDeparturePoint,
        context,
        levelId,
        levelName
      ]);

  @core.override
  core.bool operator ==(covariant MasstransitWayPoint other) {
    if (core.identical(this, other)) {
      return true;
    }
    return position == other.position &&
        selectedArrivalPoint == other.selectedArrivalPoint &&
        selectedDeparturePoint == other.selectedDeparturePoint &&
        context == other.context &&
        levelId == other.levelId &&
        levelName == other.levelName;
  }

  @core.override
  core.String toString() {
    return "MasstransitWayPoint(position: $position, selectedArrivalPoint: $selectedArrivalPoint, selectedDeparturePoint: $selectedDeparturePoint, context: $context, levelId: $levelId, levelName: $levelName)";
  }
}
