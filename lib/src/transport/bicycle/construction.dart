import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'construction.containers.dart';

/// Construction types for the segments in the geometry.
@bindings_annotations.ContainerData(
    toNative: 'BicycleConstructionID.toPointer',
    toPlatform:
        '(val) => BicycleConstructionID.fromPointer(val, needFree: false)')
enum BicycleConstructionID {
  /// Regular bicycle path segment or a segment without any additional
  /// information known.
  Unknown,

  /// Edge connecting the route endpoint to the bicycle route network.
  Binding,

  /// Stairway with stairs going up along a path.
  StairsUp,

  /// Stairway with stairs going down along a path.
  StairsDown,

  /// Stairway with no information whether stairs go up or down along a
  /// path.
  StairsUnknown,

  /// Underground crossing.
  Underpass,

  /// Overground crossing.
  Overpass,

  /// Crossing that is not an underground tunnel or a bridge.
  Crossing,

  /// Tunnel that is not a crossing.
  Tunnel,
  ;

  /// @nodoc
  @internal
  static BicycleConstructionID fromInt(core.int val) {
    return BicycleConstructionID.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(BicycleConstructionID e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static BicycleConstructionID? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(BicycleConstructionID? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}
