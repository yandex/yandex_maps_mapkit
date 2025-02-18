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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/mapkit/road_events/event_tag.dart'
    as mapkit_road_events_event_tag;

part 'road_event.containers.dart';
part 'road_event.impl.dart';

abstract final class RoadEvent implements ffi.Finalizable {
  factory RoadEvent(
          core.String id,
          mapkit_geometry_point.Point position,
          core.List<mapkit_road_events_event_tag.RoadEventsEventTag> tags,
          core.String caption,
          core.bool isInFuture) =>
      RoadEventImpl(id, position, tags, caption, isInFuture);

  RoadEvent._();

  /// The road event unique id.
  core.String get id;

  /// Position of the road event on the globe.
  mapkit_geometry_point.Point get position;

  /// Set of road event tags.
  core.List<mapkit_road_events_event_tag.RoadEventsEventTag> get tags;

  /// Text caption displayed under the road event icon.
  core.String get caption;

  /// Some road events can be not active yet, but still must be displayed
  /// to notify users about future events, for example drawbridges or
  /// closures. Usually such events have a greyscale icon and/or clock
  /// drawn in the icon's corner.
  core.bool get isInFuture;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([id, position, tags, caption, isInFuture]);

  @core.override
  core.bool operator ==(covariant RoadEvent other) {
    if (core.identical(this, other)) {
      return true;
    }
    return id == other.id &&
        position == other.position &&
        tags == other.tags &&
        caption == other.caption &&
        isInFuture == other.isInFuture;
  }

  @core.override
  core.String toString() {
    return "RoadEvent(id: $id, position: $position, tags: $tags, caption: $caption, isInFuture: $isInFuture)";
  }
}
