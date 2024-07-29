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
import 'package:yandex_maps_mapkit/src/bindings/common/struct_factory.dart'
    as struct_factory;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;

part 'trajectory.containers.dart';
part 'trajectory.impl.dart';

/// This struct is here to automatically generate protobuf parsing
/// functions It is not to be used in platform code
abstract final class TrajectorySegmentMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory TrajectorySegmentMetadata(core.int time, core.int duration) =>
      TrajectorySegmentMetadataImpl(time, duration);

  core.int get time;
  core.int get duration;

  @core.override
  core.int get hashCode => core.Object.hashAll([time, duration]);

  @core.override
  core.bool operator ==(covariant TrajectorySegmentMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return time == other.time && duration == other.duration;
  }

  @core.override
  core.String toString() {
    return "TrajectorySegmentMetadata(time: $time, duration: $duration)";
  }

  static final struct_factory.StructFactory<TrajectorySegmentMetadata> factory =
      const _TrajectorySegmentMetadataFactory();
}
