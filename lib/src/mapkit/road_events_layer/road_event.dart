import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
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

@bindings_annotations.ContainerData(
    toNative: 'RoadEvent.toPointer',
    toPlatform: '(val) => RoadEvent.fromPointer(val, needFree: false)')
class RoadEvent implements ffi.Finalizable {
  late final id = to_platform.toPlatformString(_RoadEvent_get_id(_ptr));
  late final position =
      mapkit_geometry_point.Point.fromNative(_RoadEvent_get_position(_ptr));
  late final tags =
      mapkit_road_events_event_tag.RoadEventsEventTagContainerExtension
          .toPlatformVector(_RoadEvent_get_tags(_ptr));
  late final caption =
      to_platform.toPlatformString(_RoadEvent_get_caption(_ptr));
  late final isInFuture = _RoadEvent_get_isInFuture(_ptr);

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_RoadEvent_free.cast());

  RoadEvent(
      core.String id,
      mapkit_geometry_point.Point position,
      core.List<mapkit_road_events_event_tag.RoadEventsEventTag> tags,
      core.String caption,
      core.bool isInFuture)
      : this.fromNativePtr(_RoadEvent_init(
            to_native.toNativeString(id),
            mapkit_geometry_point.Point.toNative(position),
            mapkit_road_events_event_tag.RoadEventsEventTagContainerExtension
                .toNativeVector(tags),
            to_native.toNativeString(caption),
            isInFuture));

  /// @nodoc
  @internal
  RoadEvent.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(RoadEvent? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static RoadEvent? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return RoadEvent.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static RoadEvent? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        RoadEvent.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(RoadEvent? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _RoadEvent_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _RoadEvent_clone =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_road_events_layer_RoadEvent_clone')
        .asFunction(isLeaf: true);

final _RoadEvent_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEvent_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString,
        mapkit_geometry_point.PointNative,
        ffi.Pointer<ffi.Void>,
        native_types.NativeString,
        core.bool) _RoadEvent_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString,
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        ffi.Bool)>>(
            'yandex_flutter_mapkit_road_events_layer_RoadEvent_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _RoadEvent_get_id = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_road_events_layer_RoadEvent_get_id')
        .asFunction(isLeaf: true);
final mapkit_geometry_point.PointNative Function(ffi.Pointer<ffi.Void>)
    _RoadEvent_get_position = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_point.PointNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_road_events_layer_RoadEvent_get_position')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _RoadEvent_get_tags = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_road_events_layer_RoadEvent_get_tags')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _RoadEvent_get_caption = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_road_events_layer_RoadEvent_get_caption')
        .asFunction(isLeaf: true);
final core.bool Function(ffi.Pointer<ffi.Void>) _RoadEvent_get_isInFuture = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEvent_get_isInFuture')
    .asFunction(isLeaf: true);
