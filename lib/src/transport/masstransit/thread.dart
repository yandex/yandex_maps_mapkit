import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/transport/masstransit/common.dart'
    as transport_masstransit_common;

part 'thread.containers.dart';
part 'thread.impl.dart';

abstract final class MasstransitThreadStop implements ffi.Finalizable {
  factory MasstransitThreadStop(
          transport_masstransit_common.MasstransitStop stop,
          mapkit_geometry_point.Point position) =>
      MasstransitThreadStopImpl(stop, position);

  transport_masstransit_common.MasstransitStop get stop;
  mapkit_geometry_point.Point get position;

  @core.override
  core.int get hashCode => core.Object.hashAll([stop, position]);

  @core.override
  core.bool operator ==(covariant MasstransitThreadStop other) {
    if (core.identical(this, other)) {
      return true;
    }
    return stop == other.stop && position == other.position;
  }

  @core.override
  core.String toString() {
    return "MasstransitThreadStop(stop: $stop, position: $position)";
  }
}
