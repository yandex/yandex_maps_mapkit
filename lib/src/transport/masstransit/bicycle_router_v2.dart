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

part 'bicycle_router_v2.containers.dart';
part 'bicycle_router_v2.impl.dart';

/// Provides methods for submitting bicycle routing requests.
abstract class BicycleRouterV2 implements ffi.Finalizable {
  /// Submits a request to find a bicycle route.
  ///
  /// [points] Route points (See [mapkit_request_point.RequestPoint] for
  /// details). Currently only two points are supported (start and finish)
  /// [timeOptions] Desired departure/arrival time settings. Empty
  /// [transport_masstransit_options.TimeOptions] for requests that are not
  /// time-dependent.
  /// [avoidSteep] If true, router will try avoid steep (in height meaning)
  /// routes.
  /// [routeListener] Listener to retrieve a list of MasstransitRoute
  /// objects.
  transport_masstransit_session.MasstransitSession requestRoutes(
    transport_masstransit_options.TimeOptions timeOptions,
    transport_masstransit_session.RouteHandler routeListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
    required core.bool avoidSteep,
  });

  /// Submits a request to fetch a brief summary of a pedestrian route.
  ///
  /// [points] Route points (See [mapkit_request_point.RequestPoint] for
  /// details). Currently only two points are supported (start and finish)
  /// [timeOptions] Desired departure/arrival time settings. Empty
  /// [transport_masstransit_options.TimeOptions] for requests that are not
  /// time-dependent.
  /// [avoidSteep] If true, router will try avoid steep (in height meaning)
  /// routes.
  /// [summaryListener] Listener to retrieve a list of summaries.
  transport_masstransit_session.MasstransitSummarySession requestRoutesSummary(
    transport_masstransit_options.TimeOptions timeOptions,
    transport_masstransit_session.SummaryHandler summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
    required core.bool avoidSteep,
  });

  /// Submits a request to fetch a brief summary of the bicycle routes from
  /// one to many points.
  ///
  /// [from] Starting point (See [mapkit_request_point.RequestPoint] for
  /// details).
  /// [to] End points.
  /// [timeOptions] Desired departure/arrival time settings. Empty
  /// [transport_masstransit_options.TimeOptions] for requests that are not
  /// time-dependent.
  /// [avoidSteep] If true, router will try avoid steep(in height meaning)
  /// routes.
  /// [summaryListener] Listener to retrieve a list of summaries.
  transport_masstransit_session.MasstransitSummarySession
      requestRoutesSummaryFromPoint(
    mapkit_request_point.RequestPoint from,
    transport_masstransit_options.TimeOptions timeOptions,
    transport_masstransit_session.SummaryHandler summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> to,
    required core.bool avoidSteep,
  });

  /// Submits a request to retrieve detailed information on the pedestrian
  /// route by URI.
  ///
  /// [uri] Pedestrian route URI. Begins with
  /// "ymapsbm1://route/pedestrian".
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

  /// Route serializer.
  transport_masstransit_serializer.MasstransitRouteSerializer routeSerializer();
}
