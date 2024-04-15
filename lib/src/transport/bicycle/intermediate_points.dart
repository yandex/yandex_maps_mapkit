import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;

part 'intermediate_points.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'BicycleViaPoint.toPointer',
    toPlatform: '(val) => BicycleViaPoint.fromPointer(val, needFree: false)')
class BicycleViaPoint implements ffi.Finalizable {
  late final position = mapkit_geometry_geometry.PolylinePosition.fromNative(
      _BicycleViaPoint_get_position(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleViaPoint_free.cast());

  BicycleViaPoint(mapkit_geometry_geometry.PolylinePosition position)
      : this.fromNativePtr(_BicycleViaPoint_init(
            mapkit_geometry_geometry.PolylinePosition.toNative(position)));

  /// @nodoc
  @internal
  BicycleViaPoint.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleViaPoint? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static BicycleViaPoint? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BicycleViaPoint.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static BicycleViaPoint? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        BicycleViaPoint.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(BicycleViaPoint? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _BicycleViaPoint_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _BicycleViaPoint_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleViaPoint_clone')
        .asFunction(isLeaf: true);

final _BicycleViaPoint_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_bicycle_BicycleViaPoint_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_geometry.PolylinePositionNative) _BicycleViaPoint_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_transport_bicycle_BicycleViaPoint_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_geometry.PolylinePositionNative Function(
        ffi.Pointer<ffi.Void>) _BicycleViaPoint_get_position =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_geometry.PolylinePositionNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleViaPoint_get_position')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'BicycleWayPoint.toPointer',
    toPlatform: '(val) => BicycleWayPoint.fromPointer(val, needFree: false)')
class BicycleWayPoint implements ffi.Finalizable {
  late final position = mapkit_geometry_point.Point.fromNative(
      _BicycleWayPoint_get_position(_ptr));
  late final selectedArrivalPoint = mapkit_geometry_point.Point.fromPointer(
      _BicycleWayPoint_get_selectedArrivalPoint(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleWayPoint_free.cast());

  BicycleWayPoint(mapkit_geometry_point.Point position,
      mapkit_geometry_point.Point? selectedArrivalPoint)
      : this.fromNativePtr(_BicycleWayPoint_init(
            mapkit_geometry_point.Point.toNative(position),
            mapkit_geometry_point.Point.toPointer(selectedArrivalPoint)));

  /// @nodoc
  @internal
  BicycleWayPoint.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleWayPoint? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static BicycleWayPoint? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BicycleWayPoint.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static BicycleWayPoint? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        BicycleWayPoint.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(BicycleWayPoint? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _BicycleWayPoint_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _BicycleWayPoint_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleWayPoint_clone')
        .asFunction(isLeaf: true);

final _BicycleWayPoint_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_bicycle_BicycleWayPoint_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_point.PointNative, ffi.Pointer<ffi.Void>)
    _BicycleWayPoint_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleWayPoint_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_point.PointNative Function(ffi.Pointer<ffi.Void>)
    _BicycleWayPoint_get_position = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_point.PointNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleWayPoint_get_position')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _BicycleWayPoint_get_selectedArrivalPoint = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_bicycle_BicycleWayPoint_get_selectedArrivalPoint')
    .asFunction(isLeaf: true);
