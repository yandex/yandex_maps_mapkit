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

/// Constructions that can be found on pedestrian, bicycle paths or on
/// mass transit transfers.
enum MasstransitConstructionID {
  /// Regular path segment or a segment without any additional information
  /// known.
  Unknown,

  /// Stairway with stairs going up along a pedestrian path.
  StairsUp,

  /// Stairway with stairs going down along a pedestrian path.
  StairsDown,

  /// Stairway with no information whether stairs go up or down along a
  /// pedestrian path.
  StairsUnknown,

  /// Underground crossing.
  Underpass,

  /// Overground crossing, such as a bridge.
  Overpass,

  /// crossing that is not an underground tunnel or a bridge.
  Crosswalk,

  /// Edge connecting the route endpoint to the route network.
  Binding,

  /// Transfer. For example, transfer from one underground line to another
  /// or transfer from an underground station to an exit from it.
  Transition,

  /// Tunnel that is not a crossing.
  Tunnel,
  ;
}
