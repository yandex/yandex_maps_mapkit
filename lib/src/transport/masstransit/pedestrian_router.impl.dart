part of 'pedestrian_router.dart';

@bindings_annotations.ContainerData(
    toNative: 'PedestrianRouterImpl.getNativePtr',
    toPlatform:
        '(val) => PedestrianRouterImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'PedestrianRouter')
class PedestrianRouterImpl implements PedestrianRouter, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_PedestrianRouter_free.cast());

  /// @nodoc
  PedestrianRouterImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  PedestrianRouterImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PedestrianRouter? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as PedestrianRouterImpl).ptr;
  }

  @internal

  /// @nodoc
  static PedestrianRouter? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PedestrianRouterImpl.fromNativePtr(ptr);
  }

  transport_masstransit_session.MasstransitSession requestRoutes(
    transport_masstransit_options.TimeOptions timeOptions,
    transport_masstransit_options.RouteOptions routeOptions,
    transport_masstransit_session.RouteHandler routeListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  }) {
    final result = _PedestrianRouter_requestRoutes(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      transport_masstransit_options.TimeOptionsImpl.toNative(timeOptions),
      transport_masstransit_options.RouteOptionsImpl.toNative(routeOptions),
      transport_masstransit_session.RouteHandlerImpl.getNativePtr(
          routeListener),
    );
    return transport_masstransit_session.MasstransitSessionImpl.fromNativePtr(
        result);
  }

  transport_masstransit_session.MasstransitSummarySession requestRoutesSummary(
    transport_masstransit_options.TimeOptions timeOptions,
    transport_masstransit_options.RouteOptions routeOptions,
    transport_masstransit_session.SummaryHandler summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  }) {
    final result = _PedestrianRouter_requestRoutesSummary(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      transport_masstransit_options.TimeOptionsImpl.toNative(timeOptions),
      transport_masstransit_options.RouteOptionsImpl.toNative(routeOptions),
      transport_masstransit_session.SummaryHandlerImpl.getNativePtr(
          summaryListener),
    );
    return transport_masstransit_session.MasstransitSummarySessionImpl
        .fromNativePtr(result);
  }

  transport_masstransit_session.MasstransitSummarySession
      requestRoutesSummaryFromPoint(
    mapkit_request_point.RequestPoint from,
    transport_masstransit_options.TimeOptions timeOptions,
    transport_masstransit_options.RouteOptions routeOptions,
    transport_masstransit_session.SummaryHandler summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> to,
  }) {
    final result = _PedestrianRouter_requestRoutesSummaryFromPoint(
      ptr,
      mapkit_request_point.RequestPointImpl.getNativePtr(from),
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(to),
      transport_masstransit_options.TimeOptionsImpl.toNative(timeOptions),
      transport_masstransit_options.RouteOptionsImpl.toNative(routeOptions),
      transport_masstransit_session.SummaryHandlerImpl.getNativePtr(
          summaryListener),
    );
    return transport_masstransit_session.MasstransitSummarySessionImpl
        .fromNativePtr(result);
  }

  transport_masstransit_session.MasstransitSession resolveUri(
    transport_masstransit_options.TimeOptions timeOptions,
    transport_masstransit_session.RouteHandler routeListener, {
    required core.String uri,
  }) {
    final result = _PedestrianRouter_resolveUri(
      ptr,
      to_native.toNativeString(uri),
      transport_masstransit_options.TimeOptionsImpl.toNative(timeOptions),
      transport_masstransit_session.RouteHandlerImpl.getNativePtr(
          routeListener),
    );
    return transport_masstransit_session.MasstransitSessionImpl.fromNativePtr(
        result);
  }

  transport_masstransit_serializer.MasstransitRouteSerializer
      routeSerializer() {
    final result = _PedestrianRouter_routeSerializer(ptr);
    return transport_masstransit_serializer.MasstransitRouteSerializerImpl
        .fromNativePtr(result);
  }

  void setIndoorEnabled(core.bool enabled) {
    _PedestrianRouter_setIndoorEnabled(ptr, enabled);
  }
}

final _PedestrianRouter_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_PedestrianRouter_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    transport_masstransit_options.TimeOptionsNative,
    transport_masstransit_options.RouteOptionsNative,
    ffi
        .Pointer<ffi.Void>) _PedestrianRouter_requestRoutes = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    transport_masstransit_options.TimeOptionsNative,
                    transport_masstransit_options.RouteOptionsNative,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_PedestrianRouter_requestRoutes')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    transport_masstransit_options.TimeOptionsNative,
    transport_masstransit_options.RouteOptionsNative,
    ffi
        .Pointer<ffi.Void>) _PedestrianRouter_requestRoutesSummary = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    transport_masstransit_options.TimeOptionsNative,
                    transport_masstransit_options.RouteOptionsNative,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_PedestrianRouter_requestRoutesSummary')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    transport_masstransit_options.TimeOptionsNative,
    transport_masstransit_options.RouteOptionsNative,
    ffi
        .Pointer<ffi.Void>) _PedestrianRouter_requestRoutesSummaryFromPoint = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    transport_masstransit_options.TimeOptionsNative,
                    transport_masstransit_options.RouteOptionsNative,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_PedestrianRouter_requestRoutesSummaryFromPoint')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        native_types.NativeString,
        transport_masstransit_options.TimeOptionsNative,
        ffi.Pointer<ffi.Void>) _PedestrianRouter_resolveUri =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        transport_masstransit_options.TimeOptionsNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_PedestrianRouter_resolveUri')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _PedestrianRouter_routeSerializer = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_PedestrianRouter_routeSerializer')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _PedestrianRouter_setIndoorEnabled = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_transport_masstransit_PedestrianRouter_setIndoorEnabled')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _PedestrianRouter_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_transport_masstransit_PedestrianRouter_set_')
    .asFunction(isLeaf: true);
