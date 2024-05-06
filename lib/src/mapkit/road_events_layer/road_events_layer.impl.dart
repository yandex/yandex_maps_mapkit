part of 'road_events_layer.dart';

final class _RoadEventsLayerListenerWrapper implements ffi.Finalizable {
  _RoadEventsLayerListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_RoadEventsLayerListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension RoadEventsLayerListenerImpl on RoadEventsLayerListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<RoadEventsLayerListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<RoadEventsLayerListener,
      _RoadEventsLayerListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(RoadEventsLayerListener obj) {
    final ptr = _RoadEventsLayerListener_new(ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
        _RoadEventsLayerListener_onRoadEventPlacemarkTap));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _RoadEventsLayerListenerWrapper(ptr);
    _RoadEventsLayerListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(RoadEventsLayerListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _RoadEventsLayerListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _RoadEventsLayerListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<
                            ffi
                            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerListener_new')
        .asFunction(isLeaf: true);

final _RoadEventsLayerListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerListener_free');
void _RoadEventsLayerListener_onRoadEventPlacemarkTap(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> roadEvent) {
  final listener = RoadEventsLayerListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRoadEventPlacemarkTap(
        mapkit_road_events_layer_road_event.RoadEventImpl.fromNativePtr(
            roadEvent));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

final class HighlightedRoadEventNative extends ffi.Struct {
  external native_types.NativeString eventId;
  @ffi.Int64()
  external core.int mode;
}

final HighlightedRoadEventNative Function(
  native_types.NativeString,
  core.int,
) _HighlightedRoadEventNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                HighlightedRoadEventNative Function(
                  native_types.NativeString,
                  ffi.Int64,
                )>>(
        'yandex_flutter_mapkit_road_events_layer_HighlightedRoadEvent_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'HighlightedRoadEventImpl.toPointer',
    toPlatform:
        '(val) => HighlightedRoadEventImpl.fromPointer(val, needFree: false)',
    platformType: 'HighlightedRoadEvent')
extension HighlightedRoadEventImpl on HighlightedRoadEvent {
  static HighlightedRoadEvent fromNative(HighlightedRoadEventNative native) {
    return HighlightedRoadEvent(
      eventId: to_platform.toPlatformString(native.eventId),
      mapkit_road_events_layer_style_provider.RoadEventsLayerHighlightModeImpl
          .fromInt(native.mode),
    );
  }

  static HighlightedRoadEventNative toNative(HighlightedRoadEvent obj) {
    return _HighlightedRoadEventNativeInit(
      to_native.toNativeString(obj.eventId),
      mapkit_road_events_layer_style_provider.RoadEventsLayerHighlightModeImpl
          .toInt(obj.mode),
    );
  }

  static HighlightedRoadEvent? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = HighlightedRoadEventImpl.fromNative(
        ptr.cast<HighlightedRoadEventNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(HighlightedRoadEvent? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<HighlightedRoadEventNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.WeakInterface('mapkit.road_events_layer.RoadEventsLayer')
@bindings_annotations.ContainerData(
    toNative: 'RoadEventsLayerImpl.getNativePtr',
    toPlatform:
        '(val) => RoadEventsLayerImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'RoadEventsLayer')
class RoadEventsLayerImpl implements RoadEventsLayer, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_RoadEventsLayer_free.cast());

  /// @nodoc
  RoadEventsLayerImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  RoadEventsLayerImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory RoadEventsLayerImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(RoadEventsLayer? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as RoadEventsLayerImpl).ptr;
  }

  core.bool isValid() {
    return _RoadEventsLayer_check(ptr);
  }

  @internal

  /// @nodoc
  static RoadEventsLayer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return RoadEventsLayerImpl.fromNativePtr(ptr);
  }

  void addListener(RoadEventsLayerListener layerListener) {
    _RoadEventsLayer_addListener(
        ptr, RoadEventsLayerListenerImpl.getNativePtr(layerListener));
  }

  void removeListener(RoadEventsLayerListener layerListener) {
    _RoadEventsLayer_removeListener(
        ptr, RoadEventsLayerListenerImpl.getNativePtr(layerListener));
  }

  void selectRoadEvent(core.String eventId) {
    _RoadEventsLayer_selectRoadEvent(ptr, to_native.toNativeString(eventId));
  }

  void deselectRoadEvent() {
    _RoadEventsLayer_deselectRoadEvent(ptr);
  }

  void setRoadEventVisibleOnRoute(
    mapkit_road_events_event_tag.RoadEventsEventTag tag, {
    required core.bool on,
  }) {
    _RoadEventsLayer_setRoadEventVisibleOnRoute(ptr,
        mapkit_road_events_event_tag.RoadEventsEventTagImpl.toInt(tag), on);
  }
}

final _RoadEventsLayer_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayer_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _RoadEventsLayer_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayer_check')
    .asFunction(isLeaf: true);

final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayer_addListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayer_addListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayer_removeListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayer_removeListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    native_types
        .NativeString) _RoadEventsLayer_selectRoadEvent = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, native_types.NativeString)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayer_selectRoadEvent')
    .asFunction();
final void Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayer_deselectRoadEvent = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayer_deselectRoadEvent')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .bool) _RoadEventsLayer_setRoadEventVisibleOnRoute = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Bool)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayer_setRoadEventVisibleOnRoute')
    .asFunction();
