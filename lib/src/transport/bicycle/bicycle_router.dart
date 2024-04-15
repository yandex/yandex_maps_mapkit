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

@bindings_annotations.ContainerData(
    toNative: 'BicycleVehicleType.toPointer',
    toPlatform: '(val) => BicycleVehicleType.fromPointer(val, needFree: false)')
enum BicycleVehicleType {
  Bicycle,
  Scooter,
  ;

  /// @nodoc
  @internal
  static BicycleVehicleType fromInt(core.int val) {
    return BicycleVehicleType.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(BicycleVehicleType e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static BicycleVehicleType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(BicycleVehicleType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// Provides methods for submitting bicycle routing requests.
@bindings_annotations.ContainerData(
    toNative: 'BicycleRouter.getNativePtr',
    toPlatform:
        '(val) => BicycleRouter.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class BicycleRouter implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleRouter_free.cast());

  /// @nodoc
  BicycleRouter.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  BicycleRouter.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleRouter? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static BicycleRouter? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BicycleRouter.fromNativePtr(ptr);
  }

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
  }) {
    return transport_bicycle_session.BicycleSession.fromNativePtr(
        _BicycleRouter_requestRoutes(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      BicycleVehicleType.toInt(type),
      transport_bicycle_session.BicycleSessionRouteListener.getNativePtr(
          routeListener),
    ));
  }

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
  }) {
    return transport_bicycle_session.BicycleSummarySession.fromNativePtr(
        _BicycleRouter_requestRoutesSummary(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      BicycleVehicleType.toInt(type),
      transport_bicycle_session.BicycleSummarySessionSummaryListener
          .getNativePtr(summaryListener),
    ));
  }

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
  }) {
    return transport_bicycle_session.BicycleSession.fromNativePtr(
        _BicycleRouter_resolveUri(
      ptr,
      to_native.toNativeString(uri),
      transport_bicycle_session.BicycleSessionRouteListener.getNativePtr(
          routeListener),
    ));
  }
}

final _BicycleRouter_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_bicycle_BicycleRouter_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>, core.int, ffi.Pointer<ffi.Void>)
    _BicycleRouter_requestRoutes = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRouter_requestRoutes')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    core.int,
    ffi
        .Pointer<ffi.Void>) _BicycleRouter_requestRoutesSummary = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_bicycle_BicycleRouter_requestRoutesSummary')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, native_types.NativeString, ffi.Pointer<ffi.Void>)
    _BicycleRouter_resolveUri = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        native_types.NativeString, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRouter_resolveUri')
        .asFunction();
