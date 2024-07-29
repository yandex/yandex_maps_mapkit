import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_mapkit/src/directions/driving/driving_router.dart'
    as directions_driving_driving_router;

part 'directions.containers.dart';
part 'directions.impl.dart';

abstract class Directions implements ffi.Finalizable {
  /// Creates a manager that builds driving routes.
  directions_driving_driving_router.DrivingRouter createDrivingRouter(
      directions_driving_driving_router.DrivingRouterType type);

  core.bool isValid();
}

class DirectionsFactory {
  DirectionsFactory._();

  static Directions get instance => _instance;
}
