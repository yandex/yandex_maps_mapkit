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

part 'pedestrian_crossing.containers.dart';

/// @nodoc
final class DrivingPedestrianCrossingNative extends ffi.Struct {
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingPedestrianCrossingNative Function(
        mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingPedestrianCrossingNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingPedestrianCrossingNative Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingPedestrianCrossing_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingPedestrianCrossing.toPointer',
    toPlatform:
        '(val) => DrivingPedestrianCrossing.fromPointer(val, needFree: false)')
class DrivingPedestrianCrossing {
  final mapkit_geometry_geometry.PolylinePosition position;

  const DrivingPedestrianCrossing(this.position);

  /// @nodoc
  @internal
  DrivingPedestrianCrossing.fromNative(DrivingPedestrianCrossingNative native)
      : this(mapkit_geometry_geometry.PolylinePosition.fromNative(
            native.position));

  /// @nodoc
  @internal
  static DrivingPedestrianCrossingNative toNative(DrivingPedestrianCrossing c) {
    return _DrivingPedestrianCrossingNativeInit(
        mapkit_geometry_geometry.PolylinePosition.toNative(c.position));
  }

  /// @nodoc
  @internal
  static DrivingPedestrianCrossing? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingPedestrianCrossing.fromNative(
        ptr.cast<DrivingPedestrianCrossingNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingPedestrianCrossing? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingPedestrianCrossingNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
