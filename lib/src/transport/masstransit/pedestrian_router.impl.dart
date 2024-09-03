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
    transport_masstransit_session.RouteHandler routeListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
    required core.bool avoidSteep,
  }) {
    final result =
        transport_masstransit_session.MasstransitSessionImpl.fromNativePtr(
            _PedestrianRouter_requestRoutes(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      transport_masstransit_options.TimeOptionsImpl.toNative(timeOptions),
      avoidSteep,
      transport_masstransit_session.RouteHandlerImpl.getNativePtr(
          routeListener),
    ));
    return result;
  }

  transport_masstransit_session.MasstransitSummarySession requestRoutesSummary(
    transport_masstransit_options.TimeOptions timeOptions,
    transport_masstransit_session.SummaryHandler summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
    required core.bool avoidSteep,
  }) {
    final result = transport_masstransit_session.MasstransitSummarySessionImpl
        .fromNativePtr(_PedestrianRouter_requestRoutesSummary(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      transport_masstransit_options.TimeOptionsImpl.toNative(timeOptions),
      avoidSteep,
      transport_masstransit_session.SummaryHandlerImpl.getNativePtr(
          summaryListener),
    ));
    return result;
  }

  transport_masstransit_session.MasstransitSummarySession
      requestRoutesSummaryFromPoint(
    mapkit_request_point.RequestPoint from,
    transport_masstransit_options.TimeOptions timeOptions,
    transport_masstransit_session.SummaryHandler summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> to,
    required core.bool avoidSteep,
  }) {
    final result = transport_masstransit_session.MasstransitSummarySessionImpl
        .fromNativePtr(_PedestrianRouter_requestRoutesSummaryFromPoint(
      ptr,
      mapkit_request_point.RequestPointImpl.getNativePtr(from),
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(to),
      transport_masstransit_options.TimeOptionsImpl.toNative(timeOptions),
      avoidSteep,
      transport_masstransit_session.SummaryHandlerImpl.getNativePtr(
          summaryListener),
    ));
    return result;
  }

  transport_masstransit_session.MasstransitSession resolveUri(
    transport_masstransit_options.TimeOptions timeOptions,
    transport_masstransit_session.RouteHandler routeListener, {
    required core.String uri,
  }) {
    final result =
        transport_masstransit_session.MasstransitSessionImpl.fromNativePtr(
            _PedestrianRouter_resolveUri(
      ptr,
      to_native.toNativeString(uri),
      transport_masstransit_options.TimeOptionsImpl.toNative(timeOptions),
      transport_masstransit_session.RouteHandlerImpl.getNativePtr(
          routeListener),
    ));
    return result;
  }

  transport_masstransit_serializer.MasstransitRouteSerializer
      routeSerializer() {
    final result =
        transport_masstransit_serializer.MasstransitRouteSerializerImpl
            .fromNativePtr(_PedestrianRouter_routeSerializer(ptr));
    return result;
  }
}

final _PedestrianRouter_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_PedestrianRouter_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    transport_masstransit_options.TimeOptionsNative,
    core.bool,
    ffi
        .Pointer<ffi.Void>) _PedestrianRouter_requestRoutes = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    transport_masstransit_options.TimeOptionsNative,
                    ffi.Bool,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_PedestrianRouter_requestRoutes')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    transport_masstransit_options.TimeOptionsNative,
    core.bool,
    ffi
        .Pointer<ffi.Void>) _PedestrianRouter_requestRoutesSummary = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    transport_masstransit_options.TimeOptionsNative,
                    ffi.Bool,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_PedestrianRouter_requestRoutesSummary')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    transport_masstransit_options.TimeOptionsNative,
    core.bool,
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
                    ffi.Bool,
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
final void Function(ffi.Pointer<ffi.Void>, core.int) _PedestrianRouter_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_transport_masstransit_PedestrianRouter_set_')
    .asFunction(isLeaf: true);
