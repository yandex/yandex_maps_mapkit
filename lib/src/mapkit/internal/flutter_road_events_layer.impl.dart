part of 'flutter_road_events_layer.dart';

@bindings_annotations.ContainerData(
    toNative: 'InternalDefaultStyleProviderImpl.getNativePtr',
    toPlatform:
        '(val) => InternalDefaultStyleProviderImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'InternalDefaultStyleProvider')
class InternalDefaultStyleProviderImpl
    implements InternalDefaultStyleProvider, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_InternalDefaultStyleProvider_free.cast());

  /// @nodoc
  InternalDefaultStyleProviderImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  InternalDefaultStyleProviderImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(InternalDefaultStyleProvider? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as InternalDefaultStyleProviderImpl).ptr;
  }

  @internal

  /// @nodoc
  static InternalDefaultStyleProvider? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return InternalDefaultStyleProviderImpl.fromNativePtr(ptr);
  }

  core.bool provideStyle(
    mapkit_road_events_layer_style_provider
        .RoadEventsLayerRoadEventStylingProperties
        readEventStylingProperties,
    mapkit_road_events_layer_style_provider.RoadEventsLayerRoadEventStyle
        style, {
    required core.bool isNightMode,
    required core.double scaleFactor,
  }) {
    return _DefaultStyleProvider_provideStyle(
      ptr,
      mapkit_road_events_layer_style_provider
              .RoadEventsLayerRoadEventStylingPropertiesImpl
          .getNativePtr(readEventStylingProperties),
      isNightMode,
      scaleFactor,
      mapkit_road_events_layer_style_provider.RoadEventsLayerRoadEventStyleImpl
          .getNativePtr(style),
    );
  }

  mapkit_road_events_layer_style_provider.RoadEventsLayerHighlightCircleStyle?
      provideHighlightCircleStyle(
    mapkit_road_events_layer_style_provider.RoadEventsLayerHighlightMode
        highlightMode, {
    required core.bool isNightMode,
  }) {
    return mapkit_road_events_layer_style_provider
            .RoadEventsLayerHighlightCircleStyleImpl
        .fromPointer(_DefaultStyleProvider_provideHighlightCircleStyle(
      ptr,
      isNightMode,
      mapkit_road_events_layer_style_provider.RoadEventsLayerHighlightModeImpl
          .toInt(highlightMode),
    ));
  }
}

final _InternalDefaultStyleProvider_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_internal_InternalDefaultStyleProvider_free');

final core.bool Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    core.bool,
    core.double,
    ffi
        .Pointer<ffi.Void>) _DefaultStyleProvider_provideStyle = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Bool Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
                    ffi.Bool, ffi.Float, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_internal_InternalDefaultStyleProvider_provideStyle')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    core.bool,
    core
        .int) _DefaultStyleProvider_provideHighlightCircleStyle = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, ffi.Bool, ffi.Int64)>>(
        'yandex_flutter_mapkit_internal_InternalDefaultStyleProvider_provideHighlightCircleStyle')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int)
    _InternalDefaultStyleProvider_set = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
            'yandex_flutter_mapkit_internal_InternalDefaultStyleProvider_set_')
        .asFunction(isLeaf: true);

InternalDefaultStyleProvider _createDefaultStyleProvider() {
  return InternalDefaultStyleProviderImpl.fromNativePtr(
      _DefaultStyleProviderFactory_createDefaultStyleProvider());
}

final ffi.Pointer<ffi.Void> Function()
    _DefaultStyleProviderFactory_createDefaultStyleProvider = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_mapkit_internal_InternalDefaultStyleProviderFactory_createDefaultStyleProvider')
        .asFunction();
