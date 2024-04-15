import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;

part 'lane.containers.dart';

/// The direction of the lane.
@bindings_annotations.ContainerData(
    toNative: 'DrivingLaneDirection.toPointer',
    toPlatform:
        '(val) => DrivingLaneDirection.fromPointer(val, needFree: false)')
enum DrivingLaneDirection {
  /// Unknown lane direction.
  UnknownDirection,

  /// 180 degree turn to the left.
  Left180,

  /// 135 degree turn to the left.
  Left135,

  /// 90 degree turn to the left.
  Left90,

  /// 45 degree turn to the left.
  Left45,

  /// Lane going straight ahead.
  StraightAhead,

  /// 45 degree turn to the right.
  Right45,

  /// 90 degree turn to the right.
  Right90,

  /// 135 degree turn to the right.
  Right135,

  /// 180 degree turn to the right.
  Right180,
  LeftFromRight,
  RightFromLeft,

  /// A shift to the left in the lane.
  LeftShift,

  /// A shift to the right in the lane.
  RightShift,
  ;

  /// @nodoc
  @internal
  static DrivingLaneDirection fromInt(core.int val) {
    return DrivingLaneDirection.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(DrivingLaneDirection e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static DrivingLaneDirection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingLaneDirection? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// The type of lane.
@bindings_annotations.ContainerData(
    toNative: 'DrivingLaneKind.toPointer',
    toPlatform: '(val) => DrivingLaneKind.fromPointer(val, needFree: false)')
enum DrivingLaneKind {
  /// Unknown lane type.
  UnknownKind,

  /// Common use lane.
  PlainLane,

  /// A lane for buses.
  BusLane,

  /// A lane for trams.
  TramLane,

  /// A lane for taxis.
  TaxiLane,

  /// A lane for bikes.
  BikeLane,
  ;

  /// @nodoc
  @internal
  static DrivingLaneKind fromInt(core.int val) {
    return DrivingLaneKind.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(DrivingLaneKind e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static DrivingLaneKind? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingLaneKind? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingLane.toPointer',
    toPlatform: '(val) => DrivingLane.fromPointer(val, needFree: false)')
class DrivingLane implements ffi.Finalizable {
  late final laneKind =
      DrivingLaneKind.fromInt(_DrivingLane_get_laneKind(_ptr));
  late final directions =
      DrivingLaneDirectionContainerExtension.toPlatformVector(
          _DrivingLane_get_directions(_ptr));
  late final highlightedDirection = DrivingLaneDirection.fromPointer(
      _DrivingLane_get_highlightedDirection(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingLane_free.cast());

  DrivingLane(
      DrivingLaneKind laneKind,
      core.List<DrivingLaneDirection> directions,
      DrivingLaneDirection? highlightedDirection)
      : this.fromNativePtr(_DrivingLane_init(
            DrivingLaneKind.toInt(laneKind),
            DrivingLaneDirectionContainerExtension.toNativeVector(directions),
            DrivingLaneDirection.toPointer(highlightedDirection)));

  /// @nodoc
  @internal
  DrivingLane.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingLane? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static DrivingLane? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingLane.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static DrivingLane? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        DrivingLane.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingLane? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _DrivingLane_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _DrivingLane_clone =
    lib
        .library
        .lookup<
                ffi
                .NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingLane_clone')
        .asFunction(isLeaf: true);

final _DrivingLane_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingLane_free');

final ffi.Pointer<ffi.Void> Function(
        core.int, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _DrivingLane_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Int64,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingLane_init')
        .asFunction(isLeaf: true);

final core.int Function(ffi.Pointer<ffi.Void>) _DrivingLane_get_laneKind = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingLane_get_laneKind')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingLane_get_directions = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingLane_get_directions')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingLane_get_highlightedDirection = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingLane_get_highlightedDirection')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingLaneSign.toPointer',
    toPlatform: '(val) => DrivingLaneSign.fromPointer(val, needFree: false)')
class DrivingLaneSign implements ffi.Finalizable {
  late final position = mapkit_geometry_geometry.PolylinePosition.fromNative(
      _DrivingLaneSign_get_position(_ptr));
  late final annotated = to_platform
      .toPlatformFromPointerBool(_DrivingLaneSign_get_annotated(_ptr));
  late final lanes = DrivingLaneContainerExtension.toPlatformVector(
      _DrivingLaneSign_get_lanes(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingLaneSign_free.cast());

  DrivingLaneSign(mapkit_geometry_geometry.PolylinePosition position,
      core.bool? annotated, core.List<DrivingLane> lanes)
      : this.fromNativePtr(_DrivingLaneSign_init(
            mapkit_geometry_geometry.PolylinePosition.toNative(position),
            to_native.toNativePtrBool(annotated),
            DrivingLaneContainerExtension.toNativeVector(lanes)));

  /// @nodoc
  @internal
  DrivingLaneSign.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingLaneSign? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static DrivingLaneSign? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingLaneSign.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static DrivingLaneSign? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        DrivingLaneSign.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingLaneSign? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _DrivingLaneSign_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingLaneSign_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingLaneSign_clone')
        .asFunction(isLeaf: true);

final _DrivingLaneSign_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingLaneSign_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_geometry.PolylinePositionNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingLaneSign_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_geometry.PolylinePositionNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingLaneSign_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_geometry.PolylinePositionNative Function(
        ffi.Pointer<ffi.Void>) _DrivingLaneSign_get_position =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_geometry.PolylinePositionNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingLaneSign_get_position')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingLaneSign_get_annotated = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingLaneSign_get_annotated')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingLaneSign_get_lanes = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingLaneSign_get_lanes')
        .asFunction(isLeaf: true);
