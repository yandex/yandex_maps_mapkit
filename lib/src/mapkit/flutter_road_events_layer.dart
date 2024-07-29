import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:yandex_maps_mapkit/src/mapkit/map/map_window.dart'
    as mapkit_map_map_window;
import 'package:yandex_maps_mapkit/src/mapkit/road_events_layer/road_events_layer.dart'
    as mapkit_road_events_layer_road_events_layer;
import 'package:yandex_maps_mapkit/src/mapkit/road_events_layer/style_provider.dart'
    as mapkit_road_events_layer_style_provider;

part 'flutter_road_events_layer.impl.dart';

class FlutterRoadEventsLayerFactory {
  FlutterRoadEventsLayerFactory._();

  /// Set
  /// [mapkit_road_events_layer_style_provider.RoadEventsLayerStyleProvider]
  ///
  /// The class maintains a strong reference to the object in
  /// the 'styleProvider' parameter until it (the class) is invalidated.
  static void setRoadEventsStyleProvider(
      mapkit_road_events_layer_style_provider.RoadEventsLayerStyleProvider
          styleProvider) {
    _setRoadEventsStyleProvider(
      styleProvider,
    );
  }

  /// Creates the
  /// [mapkit_road_events_layer_road_events_layer.RoadEventsLayer] that
  /// will draw road events on the route using the StyleProvider set by
  /// [FlutterRoadEventsLayerFactory.setRoadEventsStyleProvider]
  ///
  /// [mapWindow] Map window to attach road events layer
  static mapkit_road_events_layer_road_events_layer.RoadEventsLayer
      createRouteRoadEventsLayerWithPresetStyleProvider(
          mapkit_map_map_window.MapWindow mapWindow) {
    return _createRouteRoadEventsLayerWithPresetStyleProvider(
      mapWindow,
    );
  }
}
