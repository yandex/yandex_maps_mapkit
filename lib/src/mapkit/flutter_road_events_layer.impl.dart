part of 'flutter_road_events_layer.dart';

void _setRoadEventsStyleProvider(
    mapkit_road_events_layer_style_provider.RoadEventsLayerStyleProvider
        styleProvider) {
  _FlutterRoadEventsLayerFactory_setRoadEventsStyleProvider(
      mapkit_road_events_layer_style_provider.RoadEventsLayerStyleProviderImpl
          .getNativePtr(styleProvider));
}

final void Function(
    ffi.Pointer<
        ffi
        .Void>) _FlutterRoadEventsLayerFactory_setRoadEventsStyleProvider = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_FlutterRoadEventsLayerFactory_setRoadEventsStyleProvider')
    .asFunction();
