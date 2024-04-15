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

part 'speed_bump.containers.dart';

/// @nodoc
final class DrivingSpeedBumpNative extends ffi.Struct {
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingSpeedBumpNative Function(
        mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingSpeedBumpNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingSpeedBumpNative Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingSpeedBump_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingSpeedBump.toPointer',
    toPlatform: '(val) => DrivingSpeedBump.fromPointer(val, needFree: false)')
class DrivingSpeedBump {
  final mapkit_geometry_geometry.PolylinePosition position;

  const DrivingSpeedBump(this.position);

  /// @nodoc
  @internal
  DrivingSpeedBump.fromNative(DrivingSpeedBumpNative native)
      : this(mapkit_geometry_geometry.PolylinePosition.fromNative(
            native.position));

  /// @nodoc
  @internal
  static DrivingSpeedBumpNative toNative(DrivingSpeedBump c) {
    return _DrivingSpeedBumpNativeInit(
        mapkit_geometry_geometry.PolylinePosition.toNative(c.position));
  }

  /// @nodoc
  @internal
  static DrivingSpeedBump? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        DrivingSpeedBump.fromNative(ptr.cast<DrivingSpeedBumpNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingSpeedBump? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingSpeedBumpNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
