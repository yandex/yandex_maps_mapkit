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

part 'ferry.containers.dart';

/// @nodoc
final class DrivingFerryNative extends ffi.Struct {
  external mapkit_geometry_geometry.SubpolylineNative position;
}

final DrivingFerryNative Function(mapkit_geometry_geometry.SubpolylineNative)
    _DrivingFerryNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingFerryNative Function(
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_directions_driving_DrivingFerry_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingFerry.toPointer',
    toPlatform: '(val) => DrivingFerry.fromPointer(val, needFree: false)')
class DrivingFerry {
  final mapkit_geometry_geometry.Subpolyline position;

  const DrivingFerry(this.position);

  /// @nodoc
  @internal
  DrivingFerry.fromNative(DrivingFerryNative native)
      : this(mapkit_geometry_geometry.Subpolyline.fromNative(native.position));

  /// @nodoc
  @internal
  static DrivingFerryNative toNative(DrivingFerry c) {
    return _DrivingFerryNativeInit(
        mapkit_geometry_geometry.Subpolyline.toNative(c.position));
  }

  /// @nodoc
  @internal
  static DrivingFerry? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingFerry.fromNative(ptr.cast<DrivingFerryNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingFerry? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingFerryNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
