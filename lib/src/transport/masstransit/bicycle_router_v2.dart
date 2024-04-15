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

/// Provides methods for submitting bicycle routing requests.
@bindings_annotations.ContainerData(
    toNative: 'BicycleRouterV2.getNativePtr',
    toPlatform:
        '(val) => BicycleRouterV2.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class BicycleRouterV2 implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleRouterV2_free.cast());

  /// @nodoc
  BicycleRouterV2.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  BicycleRouterV2.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleRouterV2? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static BicycleRouterV2? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BicycleRouterV2.fromNativePtr(ptr);
  }

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
  }) {
    return transport_masstransit_session.MasstransitSession.fromNativePtr(
        _BicycleRouterV2_requestRoutes(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      transport_masstransit_options.TimeOptions.toNative(timeOptions),
      avoidSteep,
      transport_masstransit_session.RouteHandler.getNativePtr(routeListener),
    ));
  }

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
  }) {
    return transport_masstransit_session.MasstransitSummarySession
        .fromNativePtr(_BicycleRouterV2_requestRoutesSummary(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      transport_masstransit_options.TimeOptions.toNative(timeOptions),
      avoidSteep,
      transport_masstransit_session.SummaryHandler.getNativePtr(
          summaryListener),
    ));
  }

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
  }) {
    return transport_masstransit_session.MasstransitSummarySession
        .fromNativePtr(_BicycleRouterV2_requestRoutesSummaryFromPoint(
      ptr,
      mapkit_request_point.RequestPoint.getNativePtr(from),
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(to),
      transport_masstransit_options.TimeOptions.toNative(timeOptions),
      avoidSteep,
      transport_masstransit_session.SummaryHandler.getNativePtr(
          summaryListener),
    ));
  }

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
  }) {
    return transport_masstransit_session.MasstransitSession.fromNativePtr(
        _BicycleRouterV2_resolveUri(
      ptr,
      to_native.toNativeString(uri),
      transport_masstransit_options.TimeOptions.toNative(timeOptions),
      transport_masstransit_session.RouteHandler.getNativePtr(routeListener),
    ));
  }

  /// Route serializer.
  transport_masstransit_serializer.MasstransitRouteSerializer
      routeSerializer() {
    return transport_masstransit_serializer.MasstransitRouteSerializer
        .fromNativePtr(_BicycleRouterV2_routeSerializer(ptr));
  }
}

final _BicycleRouterV2_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_BicycleRouterV2_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    transport_masstransit_options.TimeOptionsNative,
    core.bool,
    ffi
        .Pointer<ffi.Void>) _BicycleRouterV2_requestRoutes = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    transport_masstransit_options.TimeOptionsNative,
                    ffi.Bool,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_BicycleRouterV2_requestRoutes')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    transport_masstransit_options.TimeOptionsNative,
    core.bool,
    ffi
        .Pointer<ffi.Void>) _BicycleRouterV2_requestRoutesSummary = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    transport_masstransit_options.TimeOptionsNative,
                    ffi.Bool,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_BicycleRouterV2_requestRoutesSummary')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    transport_masstransit_options.TimeOptionsNative,
    core.bool,
    ffi
        .Pointer<ffi.Void>) _BicycleRouterV2_requestRoutesSummaryFromPoint = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    transport_masstransit_options.TimeOptionsNative,
                    ffi.Bool,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_BicycleRouterV2_requestRoutesSummaryFromPoint')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        native_types.NativeString,
        transport_masstransit_options.TimeOptionsNative,
        ffi.Pointer<ffi.Void>) _BicycleRouterV2_resolveUri =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        transport_masstransit_options.TimeOptionsNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_BicycleRouterV2_resolveUri')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _BicycleRouterV2_routeSerializer = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_BicycleRouterV2_routeSerializer')
    .asFunction();
