import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/async.dart'
    show runWithBlockUi;
import 'package:yandex_maps_mapkit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_mapkit/src/transport/bicycle/bicycle_router.dart'
    as transport_bicycle_bicycle_router;
import 'package:yandex_maps_mapkit/src/transport/masstransit/bicycle_router_v2.dart'
    as transport_masstransit_bicycle_router_v2;
import 'package:yandex_maps_mapkit/src/transport/masstransit/masstransit_router.dart'
    as transport_masstransit_masstransit_router;
import 'package:yandex_maps_mapkit/src/transport/masstransit/pedestrian_router.dart'
    as transport_masstransit_pedestrian_router;
import 'package:yandex_maps_mapkit/src/transport/time/adjusted_clock.dart'
    as transport_time_adjusted_clock;

part 'transport.containers.dart';
part 'transport.impl.dart';

abstract class Transport implements ffi.Finalizable {
  /// Returns the clock that is constantly synchronized with the server.
  transport_time_adjusted_clock.AdjustedClock get adjustedClock;

  /// Creates a manager that builds bicycle routes using the origin and
  /// destination points.
  transport_bicycle_bicycle_router.BicycleRouter createBicycleRouter();

  /// Creates a manager that builds public transit routes using the origin
  /// and destination points.
  transport_masstransit_masstransit_router.MasstransitRouter
      createMasstransitRouter();

  /// Creates a manager that builds pedestrian routes using the origin and
  /// destination points.
  transport_masstransit_pedestrian_router.PedestrianRouter
      createPedestrianRouter();

  /// Creates a manager that builds bicycle routes using the origin and
  /// destination points.
  transport_masstransit_bicycle_router_v2.BicycleRouterV2
      createBicycleRouterV2();

  /// Creates a manager that builds scooter routes using the origin and
  /// destination points.
  transport_masstransit_bicycle_router_v2.BicycleRouterV2 createScooterRouter();

  /// Usable only in [runWithBlockUi] or listener handlers.
  core.bool isValid();
}

class TransportFactory {
  TransportFactory._();

  static Transport get instance => _instance;
}
