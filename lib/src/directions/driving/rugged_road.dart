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

part 'rugged_road.containers.dart';

/// @nodoc
final class DrivingRuggedRoadNative extends ffi.Struct {
  external mapkit_geometry_geometry.SubpolylineNative position;
  @ffi.Bool()
  external core.bool unpaved;
  @ffi.Bool()
  external core.bool inPoorCondition;
}

final DrivingRuggedRoadNative Function(
        mapkit_geometry_geometry.SubpolylineNative, core.bool, core.bool)
    _DrivingRuggedRoadNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingRuggedRoadNative Function(
                        mapkit_geometry_geometry.SubpolylineNative,
                        ffi.Bool,
                        ffi.Bool)>>(
            'yandex_flutter_directions_driving_DrivingRuggedRoad_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingRuggedRoad.toPointer',
    toPlatform: '(val) => DrivingRuggedRoad.fromPointer(val, needFree: false)')
class DrivingRuggedRoad {
  final mapkit_geometry_geometry.Subpolyline position;
  final core.bool unpaved;
  final core.bool inPoorCondition;

  const DrivingRuggedRoad(
    this.position, {
    required this.unpaved,
    required this.inPoorCondition,
  });

  /// @nodoc
  @internal
  DrivingRuggedRoad.fromNative(DrivingRuggedRoadNative native)
      : this(mapkit_geometry_geometry.Subpolyline.fromNative(native.position),
            unpaved: native.unpaved, inPoorCondition: native.inPoorCondition);

  /// @nodoc
  @internal
  static DrivingRuggedRoadNative toNative(DrivingRuggedRoad c) {
    return _DrivingRuggedRoadNativeInit(
        mapkit_geometry_geometry.Subpolyline.toNative(c.position),
        c.unpaved,
        c.inPoorCondition);
  }

  /// @nodoc
  @internal
  static DrivingRuggedRoad? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        DrivingRuggedRoad.fromNative(ptr.cast<DrivingRuggedRoadNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingRuggedRoad? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingRuggedRoadNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
