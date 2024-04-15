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

part 'toll_road.containers.dart';

/// @nodoc
final class DrivingTollRoadNative extends ffi.Struct {
  external mapkit_geometry_geometry.SubpolylineNative position;
}

final DrivingTollRoadNative Function(mapkit_geometry_geometry.SubpolylineNative)
    _DrivingTollRoadNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingTollRoadNative Function(
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_directions_driving_DrivingTollRoad_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingTollRoad.toPointer',
    toPlatform: '(val) => DrivingTollRoad.fromPointer(val, needFree: false)')
class DrivingTollRoad {
  final mapkit_geometry_geometry.Subpolyline position;

  const DrivingTollRoad(this.position);

  /// @nodoc
  @internal
  DrivingTollRoad.fromNative(DrivingTollRoadNative native)
      : this(mapkit_geometry_geometry.Subpolyline.fromNative(native.position));

  /// @nodoc
  @internal
  static DrivingTollRoadNative toNative(DrivingTollRoad c) {
    return _DrivingTollRoadNativeInit(
        mapkit_geometry_geometry.Subpolyline.toNative(c.position));
  }

  /// @nodoc
  @internal
  static DrivingTollRoad? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        DrivingTollRoad.fromNative(ptr.cast<DrivingTollRoadNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingTollRoad? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingTollRoadNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
