part of 'bicycle_router_v2.dart';

@bindings_annotations.ContainerData(
    toNative: 'BicycleRouterV2Impl.getNativePtr',
    toPlatform:
        '(val) => BicycleRouterV2Impl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'BicycleRouterV2')
class BicycleRouterV2Impl implements BicycleRouterV2, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleRouterV2_free.cast());

  /// @nodoc
  BicycleRouterV2Impl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  BicycleRouterV2Impl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleRouterV2? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as BicycleRouterV2Impl).ptr;
  }

  @internal

  /// @nodoc
  static BicycleRouterV2? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BicycleRouterV2Impl.fromNativePtr(ptr);
  }

  transport_masstransit_session.MasstransitSession requestRoutes(
    transport_masstransit_options.TimeOptions timeOptions,
    transport_masstransit_session.RouteHandler routeListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
    required core.bool avoidSteep,
  }) {
    return transport_masstransit_session.MasstransitSessionImpl.fromNativePtr(
        _BicycleRouterV2_requestRoutes(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      transport_masstransit_options.TimeOptionsImpl.toNative(timeOptions),
      avoidSteep,
      transport_masstransit_session.RouteHandlerImpl.getNativePtr(
          routeListener),
    ));
  }

  transport_masstransit_session.MasstransitSummarySession requestRoutesSummary(
    transport_masstransit_options.TimeOptions timeOptions,
    transport_masstransit_session.SummaryHandler summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
    required core.bool avoidSteep,
  }) {
    return transport_masstransit_session.MasstransitSummarySessionImpl
        .fromNativePtr(_BicycleRouterV2_requestRoutesSummary(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      transport_masstransit_options.TimeOptionsImpl.toNative(timeOptions),
      avoidSteep,
      transport_masstransit_session.SummaryHandlerImpl.getNativePtr(
          summaryListener),
    ));
  }

  transport_masstransit_session.MasstransitSummarySession
      requestRoutesSummaryFromPoint(
    mapkit_request_point.RequestPoint from,
    transport_masstransit_options.TimeOptions timeOptions,
    transport_masstransit_session.SummaryHandler summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> to,
    required core.bool avoidSteep,
  }) {
    return transport_masstransit_session.MasstransitSummarySessionImpl
        .fromNativePtr(_BicycleRouterV2_requestRoutesSummaryFromPoint(
      ptr,
      mapkit_request_point.RequestPointImpl.getNativePtr(from),
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(to),
      transport_masstransit_options.TimeOptionsImpl.toNative(timeOptions),
      avoidSteep,
      transport_masstransit_session.SummaryHandlerImpl.getNativePtr(
          summaryListener),
    ));
  }

  transport_masstransit_session.MasstransitSession resolveUri(
    transport_masstransit_options.TimeOptions timeOptions,
    transport_masstransit_session.RouteHandler routeListener, {
    required core.String uri,
  }) {
    return transport_masstransit_session.MasstransitSessionImpl.fromNativePtr(
        _BicycleRouterV2_resolveUri(
      ptr,
      to_native.toNativeString(uri),
      transport_masstransit_options.TimeOptionsImpl.toNative(timeOptions),
      transport_masstransit_session.RouteHandlerImpl.getNativePtr(
          routeListener),
    ));
  }

  transport_masstransit_serializer.MasstransitRouteSerializer
      routeSerializer() {
    return transport_masstransit_serializer.MasstransitRouteSerializerImpl
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
