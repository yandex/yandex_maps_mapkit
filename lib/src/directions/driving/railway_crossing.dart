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

part 'railway_crossing.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'DrivingRailwayCrossingType.toPointer',
    toPlatform:
        '(val) => DrivingRailwayCrossingType.fromPointer(val, needFree: false)')
enum DrivingRailwayCrossingType {
  Unknown,
  Regular,
  ;

  /// @nodoc
  @internal
  static DrivingRailwayCrossingType fromInt(core.int val) {
    return DrivingRailwayCrossingType.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(DrivingRailwayCrossingType e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static DrivingRailwayCrossingType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(DrivingRailwayCrossingType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class DrivingRailwayCrossingNative extends ffi.Struct {
  @ffi.Int64()
  external core.int type;
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingRailwayCrossingNative Function(
        core.int, mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingRailwayCrossingNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingRailwayCrossingNative Function(ffi.Int64,
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingRailwayCrossing_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingRailwayCrossing.toPointer',
    toPlatform:
        '(val) => DrivingRailwayCrossing.fromPointer(val, needFree: false)')
class DrivingRailwayCrossing {
  final DrivingRailwayCrossingType type;
  final mapkit_geometry_geometry.PolylinePosition position;

  const DrivingRailwayCrossing(this.type, this.position);

  /// @nodoc
  @internal
  DrivingRailwayCrossing.fromNative(DrivingRailwayCrossingNative native)
      : this(
            DrivingRailwayCrossingType.fromInt(native.type),
            mapkit_geometry_geometry.PolylinePosition.fromNative(
                native.position));

  /// @nodoc
  @internal
  static DrivingRailwayCrossingNative toNative(DrivingRailwayCrossing c) {
    return _DrivingRailwayCrossingNativeInit(
        DrivingRailwayCrossingType.toInt(c.type),
        mapkit_geometry_geometry.PolylinePosition.toNative(c.position));
  }

  /// @nodoc
  @internal
  static DrivingRailwayCrossing? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingRailwayCrossing.fromNative(
        ptr.cast<DrivingRailwayCrossingNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingRailwayCrossing? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingRailwayCrossingNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
