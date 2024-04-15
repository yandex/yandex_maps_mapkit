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

/// Provides methods for submitting mass transit routing requests.
@bindings_annotations.ContainerData(
    toNative: 'MasstransitRouter.getNativePtr',
    toPlatform:
        '(val) => MasstransitRouter.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class MasstransitRouter implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_MasstransitRouter_free.cast());

  /// @nodoc
  MasstransitRouter.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  MasstransitRouter.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRouter? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static MasstransitRouter? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitRouter.fromNativePtr(ptr);
  }

  /// Submits a request to find mass transit routes.
  ///
  /// [points] Route points (See [mapkit_request_point.RequestPoint] for
  /// details). Currently only two points are supported (start and finish)
  /// [transitOptions] Additional parameters for building routes.
  /// [avoidSteep] If true, router will try avoid steep (in height meaning)
  /// routes.
  /// [routeListener] Listener to retrieve a list of MasstransitRoute
  /// objects.
  transport_masstransit_session.MasstransitSession requestRoutes(
    transport_masstransit_transit_options.TransitOptions transitOptions,
    transport_masstransit_session.RouteHandler routeListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
    required core.bool avoidSteep,
  }) {
    return transport_masstransit_session.MasstransitSession.fromNativePtr(
        _MasstransitRouter_requestRoutes(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      transport_masstransit_transit_options.TransitOptions.toNative(
          transitOptions),
      avoidSteep,
      transport_masstransit_session.RouteHandler.getNativePtr(routeListener),
    ));
  }

  /// Submits a request to fetch a brief summary of a mass transit route.
  transport_masstransit_session.MasstransitSummarySession requestRoutesSummary(
    transport_masstransit_transit_options.TransitOptions transitOptions,
    transport_masstransit_session.SummaryHandler summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
    required core.bool avoidSteep,
  }) {
    return transport_masstransit_session.MasstransitSummarySession
        .fromNativePtr(_MasstransitRouter_requestRoutesSummary(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      transport_masstransit_transit_options.TransitOptions.toNative(
          transitOptions),
      avoidSteep,
      transport_masstransit_session.SummaryHandler.getNativePtr(
          summaryListener),
    ));
  }

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
  }) {
    return transport_masstransit_session.MasstransitSession.fromNativePtr(
        _MasstransitRouter_resolveUri(
      ptr,
      to_native.toNativeString(uri),
      transport_masstransit_options.TimeOptions.toNative(timeOptions),
      transport_masstransit_session.RouteHandler.getNativePtr(routeListener),
    ));
  }

  /// Returns a route serializer instance.
  transport_masstransit_serializer.MasstransitRouteSerializer
      routeSerializer() {
    return transport_masstransit_serializer.MasstransitRouteSerializer
        .fromNativePtr(_MasstransitRouter_routeSerializer(ptr));
  }
}

final _MasstransitRouter_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouter_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    transport_masstransit_transit_options.TransitOptionsNative,
    core.bool,
    ffi
        .Pointer<ffi.Void>) _MasstransitRouter_requestRoutes = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    transport_masstransit_transit_options.TransitOptionsNative,
                    ffi.Bool,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouter_requestRoutes')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    transport_masstransit_transit_options.TransitOptionsNative,
    core.bool,
    ffi
        .Pointer<ffi.Void>) _MasstransitRouter_requestRoutesSummary = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    transport_masstransit_transit_options.TransitOptionsNative,
                    ffi.Bool,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouter_requestRoutesSummary')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        native_types.NativeString,
        transport_masstransit_options.TimeOptionsNative,
        ffi.Pointer<ffi.Void>) _MasstransitRouter_resolveUri =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        transport_masstransit_options.TimeOptionsNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitRouter_resolveUri')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouter_routeSerializer = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouter_routeSerializer')
    .asFunction();
