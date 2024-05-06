import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'vehicle_type.containers.dart';
part 'vehicle_type.impl.dart';

/// The type of the vehicle that is used for the route.
enum DrivingVehicleType {
  /// Standard vehicle type.
  Default,

  /// Allowed only for Yandex apps
  Taxi,
  Truck,
  Moto,
  ;
}
