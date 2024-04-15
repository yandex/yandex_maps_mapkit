import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'landmark.containers.dart';

/// Information about an upcoming landmark.
@bindings_annotations.ContainerData(
    toNative: 'DrivingLandmark.toPointer',
    toPlatform: '(val) => DrivingLandmark.fromPointer(val, needFree: false)')
enum DrivingLandmark {
  /// Unknown landmark.
  Unknown,

  /// Traffic lights.
  AtTrafficLights,

  /// The area before traffic lights.
  BeforeTrafficLights,

  /// The area before a bridge.
  BeforeBridge,

  /// The area before a tunnel.
  BeforeTunnel,

  /// The area after a bridge.
  AfterBridge,

  /// The area after a tunnel.
  AfterTunnel,

  /// The area leading to a bridge.
  ToBridge,

  /// The area leading to a tunnel.
  IntoTunnel,

  /// The turn into a courtyard.
  IntoCourtyard,

  /// The area leading to a frontage road.
  ToFrontageRoad,
  ;

  /// @nodoc
  @internal
  static DrivingLandmark fromInt(core.int val) {
    return DrivingLandmark.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(DrivingLandmark e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static DrivingLandmark? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(DrivingLandmark? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}
