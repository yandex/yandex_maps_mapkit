part of 'session.dart';

@bindings_annotations.ContainerData(
    toNative: 'MasstransitSessionImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitSessionImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'MasstransitSession')
class MasstransitSessionImpl implements MasstransitSession, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitSession_free.cast());

  /// @nodoc
  MasstransitSessionImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  MasstransitSessionImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitSession? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as MasstransitSessionImpl).ptr;
  }

  @internal

  /// @nodoc
  static MasstransitSession? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitSessionImpl.fromNativePtr(ptr);
  }

  void cancel() {
    _Session_cancel(ptr);
  }

  void retry(RouteHandler routeListener) {
    _Session_retry(ptr, RouteHandlerImpl.getNativePtr(routeListener));
  }
}

final _MasstransitSession_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSession_free');

final void Function(ffi.Pointer<ffi.Void>) _Session_cancel = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSession_cancel')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Session_retry = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitSession_retry')
        .asFunction();

final class RouteHandlerImpl implements RouteHandler {
  static final _pointerToListener = <ffi.Pointer<ffi.Void>, RouteHandler>{};

  RouteHandlerImpl(
      {required void Function(
              core.List<transport_masstransit_route.MasstransitRoute> routes)
          onMasstransitRoutes,
      required void Function(runtime_error.Error error)
          onMasstransitRoutesError})
      : _ptr = _RouteHandler_new(
            ffi.Pointer.fromFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>)>(_RouteHandler_onMasstransitRoutes),
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _RouteHandler_onMasstransitRoutesError)),
        _onMasstransitRoutes = onMasstransitRoutes,
        _onMasstransitRoutesError = onMasstransitRoutesError {
    _pointerToListener[_ptr] = this;
    _RouteHandlersetSendPort(
        _ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());
  }

  @core.override
  void onMasstransitRoutes(
          core.List<transport_masstransit_route.MasstransitRoute> routes) =>
      _onMasstransitRoutes(routes);
  @core.override
  void onMasstransitRoutesError(runtime_error.Error error) =>
      _onMasstransitRoutesError(error);

  final ffi.Pointer<ffi.Void> _ptr;

  final void Function(core.List<transport_masstransit_route.MasstransitRoute>)
      _onMasstransitRoutes;
  final void Function(runtime_error.Error) _onMasstransitRoutesError;

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(RouteHandler? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as RouteHandlerImpl)._ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _RouteHandlersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_transport_masstransit_Session_RouteHandler_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _RouteHandler_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_transport_masstransit_Session_RouteHandler_new')
        .asFunction(isLeaf: true);

void _RouteHandler_onMasstransitRoutes(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> routes) {
  final listener = RouteHandlerImpl._pointerToListener[_ptr]!;

  try {
    listener.onMasstransitRoutes(transport_masstransit_route
        .MasstransitRouteContainerExtension.toPlatformVector(routes));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

void _RouteHandler_onMasstransitRoutesError(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> error) {
  final listener = RouteHandlerImpl._pointerToListener[_ptr]!;

  try {
    listener
        .onMasstransitRoutesError(runtime_error.ErrorImpl.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitSummarySessionImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitSummarySessionImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'MasstransitSummarySession')
class MasstransitSummarySessionImpl
    implements MasstransitSummarySession, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitSummarySession_free.cast());

  /// @nodoc
  MasstransitSummarySessionImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  MasstransitSummarySessionImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitSummarySession? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as MasstransitSummarySessionImpl).ptr;
  }

  @internal

  /// @nodoc
  static MasstransitSummarySession? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitSummarySessionImpl.fromNativePtr(ptr);
  }

  void cancel() {
    _SummarySession_cancel(ptr);
  }

  void retry(SummaryHandler summaryListener) {
    _SummarySession_retry(
        ptr, SummaryHandlerImpl.getNativePtr(summaryListener));
  }
}

final _MasstransitSummarySession_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSummarySession_free');

final void Function(ffi.Pointer<ffi.Void>) _SummarySession_cancel = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSummarySession_cancel')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _SummarySession_retry = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSummarySession_retry')
    .asFunction();

final class SummaryHandlerImpl implements SummaryHandler {
  static final _pointerToListener = <ffi.Pointer<ffi.Void>, SummaryHandler>{};

  SummaryHandlerImpl(
      {required void Function(
              core.List<transport_masstransit_summary.MasstransitSummary>
                  routes)
          onMasstransitSummaries,
      required void Function(runtime_error.Error error)
          onMasstransitSummariesError})
      : _ptr = _SummaryHandler_new(
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _SummaryHandler_onMasstransitSummaries),
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _SummaryHandler_onMasstransitSummariesError)),
        _onMasstransitSummaries = onMasstransitSummaries,
        _onMasstransitSummariesError = onMasstransitSummariesError {
    _pointerToListener[_ptr] = this;
    _SummaryHandlersetSendPort(
        _ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());
  }

  @core.override
  void onMasstransitSummaries(
          core.List<transport_masstransit_summary.MasstransitSummary> routes) =>
      _onMasstransitSummaries(routes);
  @core.override
  void onMasstransitSummariesError(runtime_error.Error error) =>
      _onMasstransitSummariesError(error);

  final ffi.Pointer<ffi.Void> _ptr;

  final void Function(
          core.List<transport_masstransit_summary.MasstransitSummary>)
      _onMasstransitSummaries;
  final void Function(runtime_error.Error) _onMasstransitSummariesError;

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SummaryHandler? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as SummaryHandlerImpl)._ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _SummaryHandlersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_transport_masstransit_SummarySession_SummaryHandler_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _SummaryHandler_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_transport_masstransit_SummarySession_SummaryHandler_new')
        .asFunction(isLeaf: true);

void _SummaryHandler_onMasstransitSummaries(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> routes) {
  final listener = SummaryHandlerImpl._pointerToListener[_ptr]!;

  try {
    listener.onMasstransitSummaries(transport_masstransit_summary
        .MasstransitSummaryContainerExtension.toPlatformVector(routes));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

void _SummaryHandler_onMasstransitSummariesError(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> error) {
  final listener = SummaryHandlerImpl._pointerToListener[_ptr]!;

  try {
    listener.onMasstransitSummariesError(
        runtime_error.ErrorImpl.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}
