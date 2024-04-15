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

@bindings_annotations.WeakInterface('transport.Transport')
@bindings_annotations.ContainerData(
    toNative: 'Transport.getNativePtr',
    toPlatform:
        '(val) => Transport.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class Transport implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Transport_free.cast());

  /// @nodoc
  Transport.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  Transport.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory Transport.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Transport? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _Transport_check(ptr);
  }

  @internal

  /// @nodoc
  static Transport? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return Transport.fromNativePtr(ptr);
  }

  /// Returns the clock that is constantly synchronized with the server.
  transport_time_adjusted_clock.AdjustedClock get adjustedClock {
    return transport_time_adjusted_clock.AdjustedClock.fromNativePtr(
        _Transport_get_adjustedClock(ptr));
  }

  /// Creates a manager that builds bicycle routes using the origin and
  /// destination points.
  transport_bicycle_bicycle_router.BicycleRouter createBicycleRouter() {
    return transport_bicycle_bicycle_router.BicycleRouter.fromNativePtr(
        _Transport_createBicycleRouter(ptr));
  }

  /// Creates a manager that builds public transit routes using the origin
  /// and destination points.
  transport_masstransit_masstransit_router.MasstransitRouter
      createMasstransitRouter() {
    return transport_masstransit_masstransit_router.MasstransitRouter
        .fromNativePtr(_Transport_createMasstransitRouter(ptr));
  }

  /// Creates a manager that builds pedestrian routes using the origin and
  /// destination points.
  transport_masstransit_pedestrian_router.PedestrianRouter
      createPedestrianRouter() {
    return transport_masstransit_pedestrian_router.PedestrianRouter
        .fromNativePtr(_Transport_createPedestrianRouter(ptr));
  }

  /// Creates a manager that builds bicycle routes using the origin and
  /// destination points.
  transport_masstransit_bicycle_router_v2.BicycleRouterV2
      createBicycleRouterV2() {
    return transport_masstransit_bicycle_router_v2.BicycleRouterV2
        .fromNativePtr(_Transport_createBicycleRouterV2(ptr));
  }

  /// Creates a manager that builds scooter routes using the origin and
  /// destination points.
  transport_masstransit_bicycle_router_v2.BicycleRouterV2
      createScooterRouter() {
    return transport_masstransit_bicycle_router_v2.BicycleRouterV2
        .fromNativePtr(_Transport_createScooterRouter(ptr));
  }
}

final _Transport_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_Transport_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _Transport_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_Transport_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Transport_get_adjustedClock = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_Transport_get_adjustedClock')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Transport_createBicycleRouter = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_Transport_createBicycleRouter')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Transport_createMasstransitRouter = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_Transport_createMasstransitRouter')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Transport_createPedestrianRouter = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_Transport_createPedestrianRouter')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Transport_createBicycleRouterV2 = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_Transport_createBicycleRouterV2')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Transport_createScooterRouter = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_Transport_createScooterRouter')
        .asFunction();

class TransportFactory {
  TransportFactory._();

  static Transport get instance {
    return Transport.fromNativePtr(_TransportFactory_get_instance());
  }
}

final ffi.Pointer<ffi.Void> Function() _TransportFactory_get_instance = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
        'yandex_flutter_transport_TransportFactory_get_instance')
    .asFunction(isLeaf: true);
