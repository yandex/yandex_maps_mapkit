part of 'flutter_road_events_layer.dart';

void _setRoadEventsStyleProvider(
    mapkit_road_events_layer_style_provider.RoadEventsLayerStyleProvider
        styleProvider) {
  _FlutterRoadEventsLayerFactory_setRoadEventsStyleProvider(
      mapkit_road_events_layer_style_provider.RoadEventsLayerStyleProviderImpl
          .getNativePtr(styleProvider));
}

mapkit_road_events_layer_road_events_layer.RoadEventsLayer
    _createRouteRoadEventsLayerWithPresetStyleProvider(
        mapkit_map_map_window.MapWindow mapWindow) {
  final result = mapkit_road_events_layer_road_events_layer.RoadEventsLayerImpl
      .fromNativePtr(
          _FlutterRoadEventsLayerFactory_createRouteRoadEventsLayerWithPresetStyleProvider(
              mapkit_map_map_window.MapWindowImpl.getNativePtr(mapWindow)));
  return result;
}

final void Function(
    ffi.Pointer<
        ffi
        .Void>) _FlutterRoadEventsLayerFactory_setRoadEventsStyleProvider = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_FlutterRoadEventsLayerFactory_setRoadEventsStyleProvider')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _FlutterRoadEventsLayerFactory_createRouteRoadEventsLayerWithPresetStyleProvider =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_FlutterRoadEventsLayerFactory_createRouteRoadEventsLayerWithPresetStyleProvider')
        .asFunction();
