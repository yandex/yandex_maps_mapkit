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

part 'checkpoint.containers.dart';

/// @nodoc
final class DrivingCheckpointNative extends ffi.Struct {
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingCheckpointNative Function(
        mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingCheckpointNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingCheckpointNative Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingCheckpoint_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingCheckpoint.toPointer',
    toPlatform: '(val) => DrivingCheckpoint.fromPointer(val, needFree: false)')
class DrivingCheckpoint {
  final mapkit_geometry_geometry.PolylinePosition position;

  const DrivingCheckpoint(this.position);

  /// @nodoc
  @internal
  DrivingCheckpoint.fromNative(DrivingCheckpointNative native)
      : this(mapkit_geometry_geometry.PolylinePosition.fromNative(
            native.position));

  /// @nodoc
  @internal
  static DrivingCheckpointNative toNative(DrivingCheckpoint c) {
    return _DrivingCheckpointNativeInit(
        mapkit_geometry_geometry.PolylinePosition.toNative(c.position));
  }

  /// @nodoc
  @internal
  static DrivingCheckpoint? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        DrivingCheckpoint.fromNative(ptr.cast<DrivingCheckpointNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingCheckpoint? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingCheckpointNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
