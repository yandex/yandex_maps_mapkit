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

part 'lane.containers.dart';
part 'lane.impl.dart';

/// The direction of the lane.
enum DrivingLaneDirection {
  /// Unknown lane direction.
  UnknownDirection,

  /// 180 degree turn to the left.
  Left180,

  /// 135 degree turn to the left.
  Left135,

  /// 90 degree turn to the left.
  Left90,

  /// 45 degree turn to the left.
  Left45,

  /// Lane going straight ahead.
  StraightAhead,

  /// 45 degree turn to the right.
  Right45,

  /// 90 degree turn to the right.
  Right90,

  /// 135 degree turn to the right.
  Right135,

  /// 180 degree turn to the right.
  Right180,
  LeftFromRight,
  RightFromLeft,

  /// A shift to the left in the lane.
  LeftShift,

  /// A shift to the right in the lane.
  RightShift,
  ;
}

/// The type of lane.
enum DrivingLaneKind {
  /// Unknown lane type.
  UnknownKind,

  /// Common use lane.
  PlainLane,

  /// A lane for buses.
  BusLane,

  /// A lane for trams.
  TramLane,

  /// A lane for taxis.
  TaxiLane,

  /// A lane for bikes.
  BikeLane,
  ;
}

abstract final class DrivingLane implements ffi.Finalizable {
  factory DrivingLane(
          DrivingLaneKind laneKind,
          core.List<DrivingLaneDirection> directions,
          DrivingLaneDirection? highlightedDirection) =>
      DrivingLaneImpl(laneKind, directions, highlightedDirection);

  DrivingLaneKind get laneKind;
  core.List<DrivingLaneDirection> get directions;
  DrivingLaneDirection? get highlightedDirection;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([laneKind, directions, highlightedDirection]);

  @core.override
  core.bool operator ==(covariant DrivingLane other) {
    if (core.identical(this, other)) {
      return true;
    }
    return laneKind == other.laneKind &&
        directions == other.directions &&
        highlightedDirection == other.highlightedDirection;
  }

  @core.override
  core.String toString() {
    return "DrivingLane(laneKind: $laneKind, directions: $directions, highlightedDirection: $highlightedDirection)";
  }
}

abstract final class DrivingLaneSign implements ffi.Finalizable {
  factory DrivingLaneSign(mapkit_geometry_geometry.PolylinePosition position,
          core.bool? annotated, core.List<DrivingLane> lanes) =>
      DrivingLaneSignImpl(position, annotated, lanes);

  mapkit_geometry_geometry.PolylinePosition get position;
  core.bool? get annotated;
  core.List<DrivingLane> get lanes;

  @core.override
  core.int get hashCode => core.Object.hashAll([position, annotated, lanes]);

  @core.override
  core.bool operator ==(covariant DrivingLaneSign other) {
    if (core.identical(this, other)) {
      return true;
    }
    return position == other.position &&
        annotated == other.annotated &&
        lanes == other.lanes;
  }

  @core.override
  core.String toString() {
    return "DrivingLaneSign(position: $position, annotated: $annotated, lanes: $lanes)";
  }
}
