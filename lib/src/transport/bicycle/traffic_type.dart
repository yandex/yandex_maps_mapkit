import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'traffic_type.containers.dart';
part 'traffic_type.impl.dart';

/// TrafficTypeID describes who the road is designed for.
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
}
