part of 'transport.dart';

@bindings_annotations.WeakInterface('transport.Transport')
@bindings_annotations.ContainerData(
    toNative: 'TransportImpl.getNativePtr',
    toPlatform:
        '(val) => TransportImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'Transport')
class TransportImpl implements Transport, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Transport_free.cast());

  /// @nodoc
  TransportImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  TransportImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory TransportImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Transport? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as TransportImpl).ptr;
  }

  core.bool isValid() {
    return _Transport_check(ptr);
  }

  @internal

  /// @nodoc
  static Transport? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return TransportImpl.fromNativePtr(ptr);
  }

  @core.override
  transport_time_adjusted_clock.AdjustedClock get adjustedClock {
    return transport_time_adjusted_clock.AdjustedClockImpl.fromNativePtr(
        _Transport_get_adjustedClock(ptr));
  }

  transport_bicycle_bicycle_router.BicycleRouter createBicycleRouter() {
    return transport_bicycle_bicycle_router.BicycleRouterImpl.fromNativePtr(
        _Transport_createBicycleRouter(ptr));
  }

  transport_masstransit_masstransit_router.MasstransitRouter
      createMasstransitRouter() {
    return transport_masstransit_masstransit_router.MasstransitRouterImpl
        .fromNativePtr(_Transport_createMasstransitRouter(ptr));
  }

  transport_masstransit_pedestrian_router.PedestrianRouter
      createPedestrianRouter() {
    return transport_masstransit_pedestrian_router.PedestrianRouterImpl
        .fromNativePtr(_Transport_createPedestrianRouter(ptr));
  }

  transport_masstransit_bicycle_router_v2.BicycleRouterV2
      createBicycleRouterV2() {
    return transport_masstransit_bicycle_router_v2.BicycleRouterV2Impl
        .fromNativePtr(_Transport_createBicycleRouterV2(ptr));
  }

  transport_masstransit_bicycle_router_v2.BicycleRouterV2
      createScooterRouter() {
    return transport_masstransit_bicycle_router_v2.BicycleRouterV2Impl
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

Transport get _instance {
  return TransportImpl.fromNativePtr(_TransportFactory_get_instance());
}

final ffi.Pointer<ffi.Void> Function() _TransportFactory_get_instance = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
        'yandex_flutter_transport_TransportFactory_get_instance')
    .asFunction(isLeaf: true);
