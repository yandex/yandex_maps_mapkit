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

part 'toll_post.containers.dart';
part 'toll_post.impl.dart';

/// A toll post object.

final class DrivingTollPost {
  final mapkit_geometry_geometry.PolylinePosition position;
  final core.int? id;
  final core.double? time_with_traffic;
  final core.bool? nonTransactional;

  const DrivingTollPost(
    this.position, {
    this.id,
    this.time_with_traffic,
    this.nonTransactional,
  });

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([position, id, time_with_traffic, nonTransactional]);

  @core.override
  core.bool operator ==(covariant DrivingTollPost other) {
    if (core.identical(this, other)) {
      return true;
    }
    return position == other.position &&
        id == other.id &&
        time_with_traffic == other.time_with_traffic &&
        nonTransactional == other.nonTransactional;
  }

  @core.override
  core.String toString() {
    return "DrivingTollPost(position: $position, id: $id, time_with_traffic: $time_with_traffic, nonTransactional: $nonTransactional)";
  }
}
