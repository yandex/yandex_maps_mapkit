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

part 'rugged_road.containers.dart';
part 'rugged_road.impl.dart';

final class DrivingRuggedRoad {
  final mapkit_geometry_geometry.Subpolyline position;
  final core.bool unpaved;
  final core.bool inPoorCondition;

  const DrivingRuggedRoad(
    this.position, {
    required this.unpaved,
    required this.inPoorCondition,
  });

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([position, unpaved, inPoorCondition]);

  @core.override
  core.bool operator ==(covariant DrivingRuggedRoad other) {
    if (core.identical(this, other)) {
      return true;
    }
    return position == other.position &&
        unpaved == other.unpaved &&
        inPoorCondition == other.inPoorCondition;
  }

  @core.override
  core.String toString() {
    return "DrivingRuggedRoad(position: $position, unpaved: $unpaved, inPoorCondition: $inPoorCondition)";
  }
}
