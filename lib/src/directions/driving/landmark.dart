import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'landmark.containers.dart';
part 'landmark.impl.dart';

/// Information about an upcoming landmark.
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
}
