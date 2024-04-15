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

/// @nodoc
class _RoadEventsLayerListenerWrapper implements ffi.Finalizable {
  _RoadEventsLayerListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_RoadEventsLayerListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

abstract class RoadEventsLayerListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<RoadEventsLayerListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<RoadEventsLayerListener,
      _RoadEventsLayerListenerWrapper?>();

  /// You can select placemark via layer interface in this callback.
  void onRoadEventPlacemarkTap(
      mapkit_road_events_layer_road_event.RoadEvent roadEvent);

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

  /// @nodoc
  @internal
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
  final listener = RoadEventsLayerListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRoadEventPlacemarkTap(
        mapkit_road_events_layer_road_event.RoadEvent.fromNativePtr(roadEvent));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

/// @nodoc
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
    toNative: 'HighlightedRoadEvent.toPointer',
    toPlatform:
        '(val) => HighlightedRoadEvent.fromPointer(val, needFree: false)')
class HighlightedRoadEvent {
  final core.String eventId;
  final mapkit_road_events_layer_style_provider.RoadEventsLayerHighlightMode
      mode;

  const HighlightedRoadEvent(
    this.mode, {
    required this.eventId,
  });

  /// @nodoc
  @internal
  HighlightedRoadEvent.fromNative(HighlightedRoadEventNative native)
      : this(
          eventId: to_platform.toPlatformString(native.eventId),
          mapkit_road_events_layer_style_provider.RoadEventsLayerHighlightMode
              .fromInt(native.mode),
        );

  /// @nodoc
  @internal
  static HighlightedRoadEventNative toNative(HighlightedRoadEvent c) {
    return _HighlightedRoadEventNativeInit(
      to_native.toNativeString(c.eventId),
      mapkit_road_events_layer_style_provider.RoadEventsLayerHighlightMode
          .toInt(c.mode),
    );
  }

  /// @nodoc
  @internal
  static HighlightedRoadEvent? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = HighlightedRoadEvent.fromNative(
        ptr.cast<HighlightedRoadEventNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(HighlightedRoadEvent? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<HighlightedRoadEventNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.WeakInterface('mapkit.road_events_layer.RoadEventsLayer')
@bindings_annotations.ContainerData(
    toNative: 'RoadEventsLayer.getNativePtr',
    toPlatform:
        '(val) => RoadEventsLayer.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class RoadEventsLayer implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_RoadEventsLayer_free.cast());

  /// @nodoc
  RoadEventsLayer.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  RoadEventsLayer.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory RoadEventsLayer.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(RoadEventsLayer? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _RoadEventsLayer_check(ptr);
  }

  @internal

  /// @nodoc
  static RoadEventsLayer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return RoadEventsLayer.fromNativePtr(ptr);
  }

  /// The class does not retain the object in the 'layerListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(RoadEventsLayerListener layerListener) {
    _RoadEventsLayer_addListener(
        ptr, RoadEventsLayerListener.getNativePtr(layerListener));
  }

  void removeListener(RoadEventsLayerListener layerListener) {
    _RoadEventsLayer_removeListener(
        ptr, RoadEventsLayerListener.getNativePtr(layerListener));
  }

  /// Selects a road event with specified id. Only one event can be
  /// selected at a time. If some other event is selected already, it will
  /// be deselected.
  void selectRoadEvent(core.String eventId) {
    _RoadEventsLayer_selectRoadEvent(ptr, to_native.toNativeString(eventId));
  }

  /// Deselects selected road event if any.
  void deselectRoadEvent() {
    _RoadEventsLayer_deselectRoadEvent(ptr);
  }

  /// Sets road events on route tag visibility. Setting local chats
  /// visibility will also set visibility for ordinary chats and vice
  /// versa. None are visible by default.
  void setRoadEventVisibleOnRoute(
    mapkit_road_events_event_tag.RoadEventsEventTag tag, {
    required core.bool on,
  }) {
    _RoadEventsLayer_setRoadEventVisibleOnRoute(
        ptr, mapkit_road_events_event_tag.RoadEventsEventTag.toInt(tag), on);
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
