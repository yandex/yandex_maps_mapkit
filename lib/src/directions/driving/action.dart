import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'action.containers.dart';
part 'action.impl.dart';

/// Driver actions.
enum DrivingAction {
  /// Unknown action.
  Unknown,

  /// Going straight.
  Straight,

  /// Going slightly to the left.
  SlightLeft,

  /// Going slightly to the right.
  SlightRight,

  /// Going left.
  Left,

  /// Going right.
  Right,

  /// Turning left.
  HardLeft,

  /// Turning right.
  HardRight,

  /// Choosing a fork to the left.
  ForkLeft,

  /// Choosing a fork to the right.
  ForkRight,

  /// U-turn to the left.
  UturnLeft,

  /// U-turn to the right.
  UturnRight,

  /// Entering a roundabout.
  EnterRoundabout,

  /// Leaving a roundabout.
  LeaveRoundabout,

  /// Boarding a ferry.
  BoardFerry,

  /// Leaving a ferry.
  LeaveFerry,

  /// Exiting to the left.
  ExitLeft,

  /// Exiting to the right.
  ExitRight,

  /// Finishing the route.
  Finish,

  /// Passing waypoint
  Waypoint,
  ;
}
