part of 'masstransit_router.dart';

@bindings_annotations.ContainerData(
    toNative: 'MasstransitRouterImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitRouterImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'MasstransitRouter')
class MasstransitRouterImpl implements MasstransitRouter, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_MasstransitRouter_free.cast());

  /// @nodoc
  MasstransitRouterImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  MasstransitRouterImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRouter? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as MasstransitRouterImpl).ptr;
  }

  @internal

  /// @nodoc
  static MasstransitRouter? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitRouterImpl.fromNativePtr(ptr);
  }

  transport_masstransit_session.MasstransitSession requestRoutes(
    transport_masstransit_transit_options.TransitOptions transitOptions,
    transport_masstransit_options.RouteOptions routeOptions,
    transport_masstransit_session.RouteHandler routeListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  }) {
    final result = _MasstransitRouter_requestRoutes(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      transport_masstransit_transit_options.TransitOptionsImpl.toNative(
          transitOptions),
      transport_masstransit_options.RouteOptionsImpl.toNative(routeOptions),
      transport_masstransit_session.RouteHandlerImpl.getNativePtr(
          routeListener),
    );
    return transport_masstransit_session.MasstransitSessionImpl.fromNativePtr(
        result);
  }

  transport_masstransit_session.MasstransitSummarySession requestRoutesSummary(
    transport_masstransit_transit_options.TransitOptions transitOptions,
    transport_masstransit_options.RouteOptions routeOptions,
    transport_masstransit_session.SummaryHandler summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  }) {
    final result = _MasstransitRouter_requestRoutesSummary(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      transport_masstransit_transit_options.TransitOptionsImpl.toNative(
          transitOptions),
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
    final result = _MasstransitRouter_resolveUri(
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
    final result = _MasstransitRouter_routeSerializer(ptr);
    return transport_masstransit_serializer.MasstransitRouteSerializerImpl
        .fromNativePtr(result);
  }
}

final _MasstransitRouter_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouter_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    transport_masstransit_transit_options.TransitOptionsNative,
    transport_masstransit_options.RouteOptionsNative,
    ffi
        .Pointer<ffi.Void>) _MasstransitRouter_requestRoutes = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    transport_masstransit_transit_options.TransitOptionsNative,
                    transport_masstransit_options.RouteOptionsNative,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouter_requestRoutes')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    transport_masstransit_transit_options.TransitOptionsNative,
    transport_masstransit_options.RouteOptionsNative,
    ffi
        .Pointer<ffi.Void>) _MasstransitRouter_requestRoutesSummary = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    transport_masstransit_transit_options.TransitOptionsNative,
                    transport_masstransit_options.RouteOptionsNative,
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
final void Function(ffi.Pointer<ffi.Void>, core.int) _MasstransitRouter_set =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
            'yandex_flutter_transport_masstransit_MasstransitRouter_set_')
        .asFunction(isLeaf: true);
