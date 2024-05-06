import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'precision.containers.dart';
part 'precision.impl.dart';

/// Precision for matching house numbers (response vs. request).
enum SearchPrecision {
  /// The house number in the response is exactly the same as requested
  /// (3/2 vs. 3/2)
  Exact,

  /// The house number in the response has the same number part as the
  /// requested one (5 vs. 5a).
  Number,

  /// The house number and coordinates are restored from the house range.
  /// This means that there is no information about this specific house,
  /// but there is information about a range of houses to infer house
  /// position from.
  Range,

  /// The house number in the response is close to the requested one (13
  /// vs. 11).
  Nearby,
  ;
}
