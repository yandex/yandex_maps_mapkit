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

part 'traffic_light.containers.dart';

/// @nodoc
final class DrivingTrafficLightNative extends ffi.Struct {
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingTrafficLightNative Function(
        mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingTrafficLightNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingTrafficLightNative Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingTrafficLight_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingTrafficLight.toPointer',
    toPlatform:
        '(val) => DrivingTrafficLight.fromPointer(val, needFree: false)')
class DrivingTrafficLight {
  final mapkit_geometry_geometry.PolylinePosition position;

  const DrivingTrafficLight(this.position);

  /// @nodoc
  @internal
  DrivingTrafficLight.fromNative(DrivingTrafficLightNative native)
      : this(mapkit_geometry_geometry.PolylinePosition.fromNative(
            native.position));

  /// @nodoc
  @internal
  static DrivingTrafficLightNative toNative(DrivingTrafficLight c) {
    return _DrivingTrafficLightNativeInit(
        mapkit_geometry_geometry.PolylinePosition.toNative(c.position));
  }

  /// @nodoc
  @internal
  static DrivingTrafficLight? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingTrafficLight.fromNative(
        ptr.cast<DrivingTrafficLightNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingTrafficLight? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingTrafficLightNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
