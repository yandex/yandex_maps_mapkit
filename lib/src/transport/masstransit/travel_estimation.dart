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
import 'package:yandex_maps_mapkit/src/mapkit/time.dart' as mapkit_time;

part 'travel_estimation.containers.dart';

/// @nodoc
final class MasstransitTravelEstimationNative extends ffi.Struct {
  external mapkit_time.TimeNative departureTime;
  external mapkit_time.TimeNative arrivalTime;
}

final MasstransitTravelEstimationNative Function(
    mapkit_time.TimeNative,
    mapkit_time
        .TimeNative) _MasstransitTravelEstimationNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                MasstransitTravelEstimationNative Function(
                    mapkit_time.TimeNative, mapkit_time.TimeNative)>>(
        'yandex_flutter_transport_masstransit_MasstransitTravelEstimation_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTravelEstimation.toPointer',
    toPlatform:
        '(val) => MasstransitTravelEstimation.fromPointer(val, needFree: false)')
class MasstransitTravelEstimation {
  final mapkit_time.Time departureTime;
  final mapkit_time.Time arrivalTime;

  const MasstransitTravelEstimation(this.departureTime, this.arrivalTime);

  /// @nodoc
  @internal
  MasstransitTravelEstimation.fromNative(
      MasstransitTravelEstimationNative native)
      : this(mapkit_time.Time.fromNative(native.departureTime),
            mapkit_time.Time.fromNative(native.arrivalTime));

  /// @nodoc
  @internal
  static MasstransitTravelEstimationNative toNative(
      MasstransitTravelEstimation c) {
    return _MasstransitTravelEstimationNativeInit(
        mapkit_time.Time.toNative(c.departureTime),
        mapkit_time.Time.toNative(c.arrivalTime));
  }

  /// @nodoc
  @internal
  static MasstransitTravelEstimation? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitTravelEstimation.fromNative(
        ptr.cast<MasstransitTravelEstimationNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitTravelEstimation? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitTravelEstimationNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
