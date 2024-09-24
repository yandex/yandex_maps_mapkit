import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
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
import 'package:yandex_maps_mapkit/src/transport/masstransit/options.dart'
    as transport_masstransit_options;
import 'package:yandex_maps_mapkit/src/transport/masstransit/serializer.dart'
    as transport_masstransit_serializer;
import 'package:yandex_maps_mapkit/src/transport/masstransit/session.dart'
    as transport_masstransit_session;
import 'package:yandex_maps_mapkit/src/transport/masstransit/transit_options.dart'
    as transport_masstransit_transit_options;

part 'masstransit_router.containers.dart';
part 'masstransit_router.impl.dart';

/// Provides methods for submitting mass transit routing requests.
abstract class MasstransitRouter implements ffi.Finalizable {
  /// Submits a request to find mass transit routes.
  ///
  /// [points] Route points (See [mapkit_request_point.RequestPoint] for
  /// details). Currently only two points are supported (start and finish)
  /// [transitOptions] Additional parameters for building routes.
  /// [routeOptions] Options for route personalization.
  /// [routeListener] Listener to retrieve a list of MasstransitRoute
  /// objects.
  transport_masstransit_session.MasstransitSession requestRoutes(
    transport_masstransit_transit_options.TransitOptions transitOptions,
    transport_masstransit_options.RouteOptions routeOptions,
    transport_masstransit_session.RouteHandler routeListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  });

  /// Submits a request to fetch a brief summary of a mass transit route.
  transport_masstransit_session.MasstransitSummarySession requestRoutesSummary(
    transport_masstransit_transit_options.TransitOptions transitOptions,
    transport_masstransit_options.RouteOptions routeOptions,
    transport_masstransit_session.SummaryHandler summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  });

  /// Submits a request to retrieve detailed information on a mass transit
  /// route by URI.
  ///
  /// [uri] The URI of the mass transit route. Starts with
  /// "ymapsbm1://route/transit".
  /// [timeOptions] Desired departure/arrival time settings. Empty
  /// [transport_masstransit_options.TimeOptions] for requests that are not
  /// time-dependent.
  /// [routeListener] Listener to retrieve a list of MasstransitRoute
  /// objects.
  transport_masstransit_session.MasstransitSession resolveUri(
    transport_masstransit_options.TimeOptions timeOptions,
    transport_masstransit_session.RouteHandler routeListener, {
    required core.String uri,
  });

  /// Returns a route serializer instance.
  transport_masstransit_serializer.MasstransitRouteSerializer routeSerializer();
}
