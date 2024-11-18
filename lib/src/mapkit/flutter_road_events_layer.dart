import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
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
}
