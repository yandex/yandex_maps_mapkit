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

/// Numeric characteristics of a route or a route section.

final class MasstransitWeight {
  /// Travel time for a route or a route section.
  final mapkit_localized_value.LocalizedValue time;

  /// Distance of the pedestrian part of the route or a route section.
  final mapkit_localized_value.LocalizedValue walkingDistance;

  /// The number of transfers for a route or a route section.
  final core.int transfersCount;

  const MasstransitWeight(
    this.time,
    this.walkingDistance, {
    required this.transfersCount,
  });

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([time, walkingDistance, transfersCount]);

  @core.override
  core.bool operator ==(covariant MasstransitWeight other) {
    if (core.identical(this, other)) {
      return true;
    }
    return time == other.time &&
        walkingDistance == other.walkingDistance &&
        transfersCount == other.transfersCount;
  }

  @core.override
  core.String toString() {
    return "MasstransitWeight(time: $time, walkingDistance: $walkingDistance, transfersCount: $transfersCount)";
  }
}
