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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/transport/masstransit/common.dart'
    as transport_masstransit_common;

part 'thread.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'MasstransitThreadStop.toPointer',
    toPlatform:
        '(val) => MasstransitThreadStop.fromPointer(val, needFree: false)')
class MasstransitThreadStop implements ffi.Finalizable {
  late final stop = transport_masstransit_common.MasstransitStop.fromNativePtr(
      _MasstransitThreadStop_get_stop(_ptr));
  late final position = mapkit_geometry_point.Point.fromNative(
      _MasstransitThreadStop_get_position(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitThreadStop_free.cast());

  MasstransitThreadStop(transport_masstransit_common.MasstransitStop stop,
      mapkit_geometry_point.Point position)
      : this.fromNativePtr(_MasstransitThreadStop_init(
            transport_masstransit_common.MasstransitStop.getNativePtr(stop),
            mapkit_geometry_point.Point.toNative(position)));

  /// @nodoc
  @internal
  MasstransitThreadStop.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitThreadStop? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitThreadStop? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitThreadStop.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitThreadStop? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitThreadStop.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitThreadStop? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitThreadStop_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitThreadStop_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitThreadStop_clone')
        .asFunction(isLeaf: true);

final _MasstransitThreadStop_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitThreadStop_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_point.PointNative)
    _MasstransitThreadStop_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_point.PointNative)>>(
            'yandex_flutter_transport_masstransit_MasstransitThreadStop_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitThreadStop_get_stop = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitThreadStop_get_stop')
    .asFunction(isLeaf: true);
final mapkit_geometry_point.PointNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitThreadStop_get_position = lib.library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_point.PointNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitThreadStop_get_position')
    .asFunction(isLeaf: true);
