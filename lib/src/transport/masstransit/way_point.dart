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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;

part 'way_point.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'MasstransitWayPoint.toPointer',
    toPlatform:
        '(val) => MasstransitWayPoint.fromPointer(val, needFree: false)')
class MasstransitWayPoint implements ffi.Finalizable {
  late final position = mapkit_geometry_point.Point.fromNative(
      _MasstransitWayPoint_get_position(_ptr));
  late final selectedArrivalPoint = mapkit_geometry_point.Point.fromPointer(
      _MasstransitWayPoint_get_selectedArrivalPoint(_ptr));
  late final selectedDeparturePoint = mapkit_geometry_point.Point.fromPointer(
      _MasstransitWayPoint_get_selectedDeparturePoint(_ptr));
  late final context = to_platform
      .toPlatformFromPointerString(_MasstransitWayPoint_get_context(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitWayPoint_free.cast());

  MasstransitWayPoint(
      mapkit_geometry_point.Point position,
      mapkit_geometry_point.Point? selectedArrivalPoint,
      mapkit_geometry_point.Point? selectedDeparturePoint,
      core.String? context)
      : this.fromNativePtr(_MasstransitWayPoint_init(
            mapkit_geometry_point.Point.toNative(position),
            mapkit_geometry_point.Point.toPointer(selectedArrivalPoint),
            mapkit_geometry_point.Point.toPointer(selectedDeparturePoint),
            to_native.toNativePtrString(context)));

  /// @nodoc
  @internal
  MasstransitWayPoint.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitWayPoint? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitWayPoint? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitWayPoint.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitWayPoint? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitWayPoint.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitWayPoint? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitWayPoint_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitWayPoint_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitWayPoint_clone')
        .asFunction(isLeaf: true);

final _MasstransitWayPoint_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitWayPoint_free');

final ffi.Pointer<ffi.Void> Function(mapkit_geometry_point.PointNative,
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _MasstransitWayPoint_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitWayPoint_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_point.PointNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitWayPoint_get_position = lib.library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_point.PointNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitWayPoint_get_position')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitWayPoint_get_selectedArrivalPoint = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitWayPoint_get_selectedArrivalPoint')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _MasstransitWayPoint_get_selectedDeparturePoint = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitWayPoint_get_selectedDeparturePoint')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitWayPoint_get_context = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitWayPoint_get_context')
    .asFunction(isLeaf: true);
