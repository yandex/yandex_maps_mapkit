import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/localized_value.dart'
    as mapkit_localized_value;

part 'weight.containers.dart';
part 'weight.impl.dart';

/// Quantitative characteristics of a route or route section.

final class BicycleWeight {
  /// Time to travel.
  final mapkit_localized_value.LocalizedValue time;

  /// Distance to travel.
  final mapkit_localized_value.LocalizedValue distance;

  const BicycleWeight(this.time, this.distance);

  @core.override
  core.int get hashCode => core.Object.hashAll([time, distance]);

  @core.override
  core.bool operator ==(covariant BicycleWeight other) {
    if (core.identical(this, other)) {
      return true;
    }
    return time == other.time && distance == other.distance;
  }

  @core.override
  core.String toString() {
    return "BicycleWeight(time: $time, distance: $distance)";
  }
}
