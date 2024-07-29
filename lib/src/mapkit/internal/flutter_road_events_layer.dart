import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/road_events_layer/style_provider.dart'
    as mapkit_road_events_layer_style_provider;

part 'flutter_road_events_layer.containers.dart';
part 'flutter_road_events_layer.impl.dart';

abstract class InternalDefaultStyleProvider implements ffi.Finalizable {
  core.bool provideStyle(
    mapkit_road_events_layer_style_provider
        .RoadEventsLayerRoadEventStylingProperties
        readEventStylingProperties,
    mapkit_road_events_layer_style_provider.RoadEventsLayerRoadEventStyle
        style, {
    required core.bool isNightMode,
    required core.double scaleFactor,
  });

  mapkit_road_events_layer_style_provider.RoadEventsLayerHighlightCircleStyle?
      provideHighlightCircleStyle(
    mapkit_road_events_layer_style_provider.RoadEventsLayerHighlightMode
        highlightMode, {
    required core.bool isNightMode,
  });
}

class InternalDefaultStyleProviderFactory {
  InternalDefaultStyleProviderFactory._();

  static InternalDefaultStyleProvider createDefaultStyleProvider() {
    return _createDefaultStyleProvider();
  }
}
