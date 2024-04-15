import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'vehicle_type.containers.dart';

/// The type of the vehicle that is used for the route.
@bindings_annotations.ContainerData(
    toNative: 'DrivingVehicleType.toPointer',
    toPlatform: '(val) => DrivingVehicleType.fromPointer(val, needFree: false)')
enum DrivingVehicleType {
  /// Standard vehicle type.
  Default,

  /// Allowed only for Yandex apps
  Taxi,
  Truck,
  Moto,
  ;

  /// @nodoc
  @internal
  static DrivingVehicleType fromInt(core.int val) {
    return DrivingVehicleType.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(DrivingVehicleType e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static DrivingVehicleType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(DrivingVehicleType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}
