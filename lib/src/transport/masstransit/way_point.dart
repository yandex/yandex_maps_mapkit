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

abstract final class MasstransitWayPoint implements ffi.Finalizable {
  factory MasstransitWayPoint(
          mapkit_geometry_point.Point position,
          mapkit_geometry_point.Point? selectedArrivalPoint,
          mapkit_geometry_point.Point? selectedDeparturePoint,
          core.String? context) =>
      MasstransitWayPointImpl(
          position, selectedArrivalPoint, selectedDeparturePoint, context);

  mapkit_geometry_point.Point get position;
  mapkit_geometry_point.Point? get selectedArrivalPoint;
  mapkit_geometry_point.Point? get selectedDeparturePoint;
  core.String? get context;

  @core.override
  core.int get hashCode => core.Object.hashAll(
      [position, selectedArrivalPoint, selectedDeparturePoint, context]);

  @core.override
  core.bool operator ==(covariant MasstransitWayPoint other) {
    if (core.identical(this, other)) {
      return true;
    }
    return position == other.position &&
        selectedArrivalPoint == other.selectedArrivalPoint &&
        selectedDeparturePoint == other.selectedDeparturePoint &&
        context == other.context;
  }

  @core.override
  core.String toString() {
    return "MasstransitWayPoint(position: $position, selectedArrivalPoint: $selectedArrivalPoint, selectedDeparturePoint: $selectedDeparturePoint, context: $context)";
  }
}
