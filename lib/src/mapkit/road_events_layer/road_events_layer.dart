import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_mapkit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_mapkit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_mapkit/src/mapkit/road_events/event_tag.dart'
    as mapkit_road_events_event_tag;
import 'package:yandex_maps_mapkit/src/mapkit/road_events_layer/road_event.dart'
    as mapkit_road_events_layer_road_event;
import 'package:yandex_maps_mapkit/src/mapkit/road_events_layer/style_provider.dart'
    as mapkit_road_events_layer_style_provider;

part 'road_events_layer.containers.dart';
part 'road_events_layer.impl.dart';

abstract class RoadEventsLayerListener {
  /// You can select placemark via layer interface in this callback.
  void onRoadEventPlacemarkTap(
      mapkit_road_events_layer_road_event.RoadEvent roadEvent);
}

final class HighlightedRoadEvent {
  final core.String eventId;
  final mapkit_road_events_layer_style_provider.RoadEventsLayerHighlightMode
      mode;

  const HighlightedRoadEvent(
    this.mode, {
    required this.eventId,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        eventId,
        mode,
      ]);

  @core.override
  core.bool operator ==(covariant HighlightedRoadEvent other) {
    if (core.identical(this, other)) {
      return true;
    }
    return eventId == other.eventId && mode == other.mode;
  }

  @core.override
  core.String toString() {
    return "HighlightedRoadEvent(eventId: $eventId, mode: $mode, )";
  }
}

abstract class RoadEventsLayer implements ffi.Finalizable {
  /// The class does not retain the object in the 'layerListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(RoadEventsLayerListener layerListener);

  void removeListener(RoadEventsLayerListener layerListener);

  /// Selects a road event with specified id. Only one event can be
  /// selected at a time. If some other event is selected already, it will
  /// be deselected.
  void selectRoadEvent(core.String eventId);

  /// Deselects selected road event if any.
  void deselectRoadEvent();

  /// Sets road events on route tag visibility. Setting local chats
  /// visibility will also set visibility for ordinary chats and vice
  /// versa. None are visible by default.
  void setRoadEventVisibleOnRoute(
    mapkit_road_events_event_tag.RoadEventsEventTag tag, {
    required core.bool on,
  });
}
