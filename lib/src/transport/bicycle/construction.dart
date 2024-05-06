import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'construction.containers.dart';
part 'construction.impl.dart';

/// Construction types for the segments in the geometry.
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
}
