import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'traffic_type.containers.dart';

/// TrafficTypeID describes who the road is designed for.
@bindings_annotations.ContainerData(
    toNative: 'BicycleTrafficTypeID.toPointer',
    toPlatform:
        '(val) => BicycleTrafficTypeID.fromPointer(val, needFree: false)')
enum BicycleTrafficTypeID {
  /// Road that is not one of the following types.
  Other,

  /// Footpath, designed only for pedestrian travel.
  Pedestrian,

  /// Bikepath, designed only for bicycle travel.
  Bicycle,

  /// Road designed for motorized vehicles that might be dangerous for
  /// cyclists.
  Auto,
  ;

  /// @nodoc
  @internal
  static BicycleTrafficTypeID fromInt(core.int val) {
    return BicycleTrafficTypeID.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(BicycleTrafficTypeID e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static BicycleTrafficTypeID? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(BicycleTrafficTypeID? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}
