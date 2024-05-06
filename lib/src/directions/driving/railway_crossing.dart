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

part 'railway_crossing.containers.dart';
part 'railway_crossing.impl.dart';

enum DrivingRailwayCrossingType {
  Unknown,
  Regular,
  ;
}

final class DrivingRailwayCrossing {
  final DrivingRailwayCrossingType type;
  final mapkit_geometry_geometry.PolylinePosition position;

  const DrivingRailwayCrossing(this.type, this.position);

  @core.override
  core.int get hashCode => core.Object.hashAll([type, position]);

  @core.override
  core.bool operator ==(covariant DrivingRailwayCrossing other) {
    if (core.identical(this, other)) {
      return true;
    }
    return type == other.type && position == other.position;
  }

  @core.override
  core.String toString() {
    return "DrivingRailwayCrossing(type: $type, position: $position)";
  }
}
