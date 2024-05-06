part of 'bicycle_router.dart';

@bindings_annotations.ContainerData(
    toNative: 'BicycleVehicleTypeImpl.toPointer',
    toPlatform:
        '(val) => BicycleVehicleTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'BicycleVehicleType')
extension BicycleVehicleTypeImpl on BicycleVehicleType {
  static core.int toInt(BicycleVehicleType e) {
    return e.index;
  }

  static BicycleVehicleType fromInt(core.int val) {
    return BicycleVehicleType.values[val];
  }

  static BicycleVehicleType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(BicycleVehicleType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'BicycleRouterImpl.getNativePtr',
    toPlatform:
        '(val) => BicycleRouterImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'BicycleRouter')
class BicycleRouterImpl implements BicycleRouter, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleRouter_free.cast());

  /// @nodoc
  BicycleRouterImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  BicycleRouterImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleRouter? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as BicycleRouterImpl).ptr;
  }

  @internal

  /// @nodoc
  static BicycleRouter? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BicycleRouterImpl.fromNativePtr(ptr);
  }

  transport_bicycle_session.BicycleSession requestRoutes(
    BicycleVehicleType type,
    transport_bicycle_session.BicycleSessionRouteListener routeListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  }) {
    return transport_bicycle_session.BicycleSessionImpl.fromNativePtr(
        _BicycleRouter_requestRoutes(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      BicycleVehicleTypeImpl.toInt(type),
      transport_bicycle_session.BicycleSessionRouteListenerImpl.getNativePtr(
          routeListener),
    ));
  }

  transport_bicycle_session.BicycleSummarySession requestRoutesSummary(
    BicycleVehicleType type,
    transport_bicycle_session.BicycleSummarySessionSummaryListener
        summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  }) {
    return transport_bicycle_session.BicycleSummarySessionImpl.fromNativePtr(
        _BicycleRouter_requestRoutesSummary(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      BicycleVehicleTypeImpl.toInt(type),
      transport_bicycle_session.BicycleSummarySessionSummaryListenerImpl
          .getNativePtr(summaryListener),
    ));
  }

  transport_bicycle_session.BicycleSession resolveUri(
    transport_bicycle_session.BicycleSessionRouteListener routeListener, {
    required core.String uri,
  }) {
    return transport_bicycle_session.BicycleSessionImpl.fromNativePtr(
        _BicycleRouter_resolveUri(
      ptr,
      to_native.toNativeString(uri),
      transport_bicycle_session.BicycleSessionRouteListenerImpl.getNativePtr(
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
