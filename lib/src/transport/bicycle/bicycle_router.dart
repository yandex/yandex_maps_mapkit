import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/request_point.dart'
    as mapkit_request_point;
import 'package:yandex_maps_mapkit/src/transport/bicycle/session.dart'
    as transport_bicycle_session;

part 'bicycle_router.containers.dart';
part 'bicycle_router.impl.dart';

enum BicycleVehicleType {
  Bicycle,
  Scooter,
  ;
}

/// Provides methods for submitting bicycle routing requests.
abstract class BicycleRouter implements ffi.Finalizable {
  /// Submits a request to find a bicycle route.
  ///
  /// [points] Route points (See [mapkit_request_point.RequestPoint] for
  /// details). Currently only two points are supported (start and finish).
  /// [routeListener] Listener to retrieve a list of Route objects.
  ///
  /// @attention This feature is not available in the free MapKit version.
  transport_bicycle_session.BicycleSession requestRoutes(
    BicycleVehicleType type,
    transport_bicycle_session.BicycleSessionRouteListener routeListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  });

  /// Submits a request to fetch a brief summary of the bicycle routes.
  ///
  /// [points] Route points (See [mapkit_request_point.RequestPoint] for
  /// details). Currently only two points are supported (start and finish).
  /// [summaryListener] Listener to retrieve a list of Route objects.
  ///
  /// @attention This feature is not available in the free MapKit version.
  transport_bicycle_session.BicycleSummarySession requestRoutesSummary(
    BicycleVehicleType type,
    transport_bicycle_session.BicycleSummarySessionSummaryListener
        summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  });

  /// Submits a request to retrieve detailed information on a bicycle route
  /// by URI.
  ///
  /// [uri] The URI of the bicycle route. Starts with
  /// "ymapsbm1://route/bicycle".
  /// [routeListener] Listener to retrieve a list of Route objects.
  ///
  /// @attention This feature is not available in the free MapKit version.
  transport_bicycle_session.BicycleSession resolveUri(
    transport_bicycle_session.BicycleSessionRouteListener routeListener, {
    required core.String uri,
  });
}
