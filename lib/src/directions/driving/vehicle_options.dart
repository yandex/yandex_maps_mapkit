import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/directions/driving/vehicle_type.dart'
    as directions_driving_vehicle_type;

part 'vehicle_options.containers.dart';

/// @nodoc
final class DrivingVehicleOptionsNative extends ffi.Struct {
  @ffi.Int64()
  external core.int vehicleType;
  external ffi.Pointer<ffi.Void> weight;
  external ffi.Pointer<ffi.Void> axleWeight;
  external ffi.Pointer<ffi.Void> maxWeight;
  external ffi.Pointer<ffi.Void> height;
  external ffi.Pointer<ffi.Void> width;
  external ffi.Pointer<ffi.Void> length;
  external ffi.Pointer<ffi.Void> payload;
  external ffi.Pointer<ffi.Void> ecoClass;
  external ffi.Pointer<ffi.Void> hasTrailer;
  external ffi.Pointer<ffi.Void> buswayPermitted;
}

final DrivingVehicleOptionsNative Function(
        core.int,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingVehicleOptionsNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingVehicleOptionsNative Function(
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingVehicleOptions_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingVehicleOptions.toPointer',
    toPlatform:
        '(val) => DrivingVehicleOptions.fromPointer(val, needFree: false)')
class DrivingVehicleOptions {
  final directions_driving_vehicle_type.DrivingVehicleType vehicleType;
  final core.double? weight;
  final core.double? axleWeight;
  final core.double? maxWeight;
  final core.double? height;
  final core.double? width;
  final core.double? length;
  final core.double? payload;
  final core.int? ecoClass;
  final core.bool? hasTrailer;
  final core.bool? buswayPermitted;

  const DrivingVehicleOptions({
    this.vehicleType =
        directions_driving_vehicle_type.DrivingVehicleType.Default,
    this.weight,
    this.axleWeight,
    this.maxWeight,
    this.height,
    this.width,
    this.length,
    this.payload,
    this.ecoClass,
    this.hasTrailer,
    this.buswayPermitted,
  });

  /// @nodoc
  @internal
  DrivingVehicleOptions.fromNative(DrivingVehicleOptionsNative native)
      : this(
            vehicleType:
                directions_driving_vehicle_type.DrivingVehicleType.fromInt(
                    native.vehicleType),
            weight: to_platform.toPlatformFromPointerFloat(native.weight),
            axleWeight:
                to_platform.toPlatformFromPointerFloat(native.axleWeight),
            maxWeight: to_platform.toPlatformFromPointerFloat(native.maxWeight),
            height: to_platform.toPlatformFromPointerFloat(native.height),
            width: to_platform.toPlatformFromPointerFloat(native.width),
            length: to_platform.toPlatformFromPointerFloat(native.length),
            payload: to_platform.toPlatformFromPointerFloat(native.payload),
            ecoClass: to_platform.toPlatformFromPointerUint32(native.ecoClass),
            hasTrailer:
                to_platform.toPlatformFromPointerBool(native.hasTrailer),
            buswayPermitted:
                to_platform.toPlatformFromPointerBool(native.buswayPermitted));

  /// @nodoc
  @internal
  static DrivingVehicleOptionsNative toNative(DrivingVehicleOptions c) {
    return _DrivingVehicleOptionsNativeInit(
        directions_driving_vehicle_type.DrivingVehicleType.toInt(c.vehicleType),
        to_native.toNativePtrFloat(c.weight),
        to_native.toNativePtrFloat(c.axleWeight),
        to_native.toNativePtrFloat(c.maxWeight),
        to_native.toNativePtrFloat(c.height),
        to_native.toNativePtrFloat(c.width),
        to_native.toNativePtrFloat(c.length),
        to_native.toNativePtrFloat(c.payload),
        to_native.toNativePtrUint32(c.ecoClass),
        to_native.toNativePtrBool(c.hasTrailer),
        to_native.toNativePtrBool(c.buswayPermitted));
  }

  /// @nodoc
  @internal
  static DrivingVehicleOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingVehicleOptions.fromNative(
        ptr.cast<DrivingVehicleOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingVehicleOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingVehicleOptionsNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
