import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'significance.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'RoadEventSignificance.toPointer',
    toPlatform:
        '(val) => RoadEventSignificance.fromPointer(val, needFree: false)')
enum RoadEventSignificance {
  Minor,
  Medium,
  Major,
  Crucial,
  SuperCrucial,
  ;

  /// @nodoc
  @internal
  static RoadEventSignificance fromInt(core.int val) {
    return RoadEventSignificance.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(RoadEventSignificance e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static RoadEventSignificance? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(RoadEventSignificance? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}
