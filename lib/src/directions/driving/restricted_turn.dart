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

part 'restricted_turn.containers.dart';

/// @nodoc
final class DrivingRestrictedTurnNative extends ffi.Struct {
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingRestrictedTurnNative Function(
        mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingRestrictedTurnNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingRestrictedTurnNative Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingRestrictedTurn_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingRestrictedTurn.toPointer',
    toPlatform:
        '(val) => DrivingRestrictedTurn.fromPointer(val, needFree: false)')
class DrivingRestrictedTurn {
  final mapkit_geometry_geometry.PolylinePosition position;

  const DrivingRestrictedTurn(this.position);

  /// @nodoc
  @internal
  DrivingRestrictedTurn.fromNative(DrivingRestrictedTurnNative native)
      : this(mapkit_geometry_geometry.PolylinePosition.fromNative(
            native.position));

  /// @nodoc
  @internal
  static DrivingRestrictedTurnNative toNative(DrivingRestrictedTurn c) {
    return _DrivingRestrictedTurnNativeInit(
        mapkit_geometry_geometry.PolylinePosition.toNative(c.position));
  }

  /// @nodoc
  @internal
  static DrivingRestrictedTurn? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingRestrictedTurn.fromNative(
        ptr.cast<DrivingRestrictedTurnNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingRestrictedTurn? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingRestrictedTurnNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
