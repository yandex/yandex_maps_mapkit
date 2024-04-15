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

part 'ford_crossing.containers.dart';

/// @nodoc
final class DrivingFordCrossingNative extends ffi.Struct {
  external mapkit_geometry_geometry.SubpolylineNative position;
}

final DrivingFordCrossingNative Function(
        mapkit_geometry_geometry.SubpolylineNative)
    _DrivingFordCrossingNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingFordCrossingNative Function(
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_directions_driving_DrivingFordCrossing_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingFordCrossing.toPointer',
    toPlatform:
        '(val) => DrivingFordCrossing.fromPointer(val, needFree: false)')
class DrivingFordCrossing {
  final mapkit_geometry_geometry.Subpolyline position;

  const DrivingFordCrossing(this.position);

  /// @nodoc
  @internal
  DrivingFordCrossing.fromNative(DrivingFordCrossingNative native)
      : this(mapkit_geometry_geometry.Subpolyline.fromNative(native.position));

  /// @nodoc
  @internal
  static DrivingFordCrossingNative toNative(DrivingFordCrossing c) {
    return _DrivingFordCrossingNativeInit(
        mapkit_geometry_geometry.Subpolyline.toNative(c.position));
  }

  /// @nodoc
  @internal
  static DrivingFordCrossing? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingFordCrossing.fromNative(
        ptr.cast<DrivingFordCrossingNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingFordCrossing? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingFordCrossingNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
