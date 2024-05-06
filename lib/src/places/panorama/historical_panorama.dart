import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'historical_panorama.containers.dart';
part 'historical_panorama.impl.dart';

final class HistoricalPanorama {
  final core.String name;
  final core.String panoramaId;
  final core.DateTime timestamp;

  const HistoricalPanorama(
    this.timestamp, {
    required this.name,
    required this.panoramaId,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        name,
        panoramaId,
        timestamp,
      ]);

  @core.override
  core.bool operator ==(covariant HistoricalPanorama other) {
    if (core.identical(this, other)) {
      return true;
    }
    return name == other.name &&
        panoramaId == other.panoramaId &&
        timestamp == other.timestamp;
  }

  @core.override
  core.String toString() {
    return "HistoricalPanorama(name: $name, panoramaId: $panoramaId, timestamp: $timestamp, )";
  }
}
