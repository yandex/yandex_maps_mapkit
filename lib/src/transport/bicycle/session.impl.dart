part of 'session.dart';

@bindings_annotations.ContainerData(
    toNative: 'BicycleSessionImpl.getNativePtr',
    toPlatform:
        '(val) => BicycleSessionImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'BicycleSession')
class BicycleSessionImpl implements BicycleSession, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleSession_free.cast());

  /// @nodoc
  BicycleSessionImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  BicycleSessionImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleSession? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as BicycleSessionImpl).ptr;
  }

  @internal

  /// @nodoc
  static BicycleSession? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BicycleSessionImpl.fromNativePtr(ptr);
  }

  void cancel() {
    _Session_cancel(ptr);
  }

  void retry(BicycleSessionRouteListener routeListener) {
    _Session_retry(
        ptr, BicycleSessionRouteListenerImpl.getNativePtr(routeListener));
  }
}

final _BicycleSession_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_bicycle_BicycleSession_free');

final void Function(ffi.Pointer<ffi.Void>) _Session_cancel = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_bicycle_BicycleSession_cancel')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Session_retry = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleSession_retry')
        .asFunction();

final class BicycleSessionRouteListenerImpl
    implements BicycleSessionRouteListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, BicycleSessionRouteListener>{};

  BicycleSessionRouteListenerImpl(
      {required void Function(
              core.List<transport_bicycle_route.BicycleRoute> routes)
          onBicycleRoutes,
      required void Function(runtime_error.Error error) onBicycleRoutesError})
      : _ptr = _BicycleSessionRouteListener_new(
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _BicycleSessionRouteListener_onBicycleRoutes),
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _BicycleSessionRouteListener_onBicycleRoutesError)),
        _onBicycleRoutes = onBicycleRoutes,
        _onBicycleRoutesError = onBicycleRoutesError {
    _pointerToListener[_ptr] = this;
    _BicycleSessionRouteListenersetSendPort(
        _ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());
  }

  @core.override
  void onBicycleRoutes(
          core.List<transport_bicycle_route.BicycleRoute> routes) =>
      _onBicycleRoutes(routes);
  @core.override
  void onBicycleRoutesError(runtime_error.Error error) =>
      _onBicycleRoutesError(error);

  final ffi.Pointer<ffi.Void> _ptr;

  final void Function(core.List<transport_bicycle_route.BicycleRoute>)
      _onBicycleRoutes;
  final void Function(runtime_error.Error) _onBicycleRoutesError;

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleSessionRouteListener? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as BicycleSessionRouteListenerImpl)._ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _BicycleSessionRouteListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_transport_bicycle_Session_BicycleSessionRouteListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _BicycleSessionRouteListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_transport_bicycle_Session_BicycleSessionRouteListener_new')
        .asFunction(isLeaf: true);

void _BicycleSessionRouteListener_onBicycleRoutes(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> routes) {
  final listener = BicycleSessionRouteListenerImpl._pointerToListener[_ptr]!;

  try {
    listener.onBicycleRoutes(
        transport_bicycle_route.BicycleRouteContainerExtension.toPlatformVector(
            routes));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

void _BicycleSessionRouteListener_onBicycleRoutesError(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> error) {
  final listener = BicycleSessionRouteListenerImpl._pointerToListener[_ptr]!;

  try {
    listener.onBicycleRoutesError(runtime_error.ErrorImpl.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

@bindings_annotations.ContainerData(
    toNative: 'BicycleSummarySessionImpl.getNativePtr',
    toPlatform:
        '(val) => BicycleSummarySessionImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'BicycleSummarySession')
class BicycleSummarySessionImpl
    implements BicycleSummarySession, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_BicycleSummarySession_free.cast());

  /// @nodoc
  BicycleSummarySessionImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  BicycleSummarySessionImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleSummarySession? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as BicycleSummarySessionImpl).ptr;
  }

  @internal

  /// @nodoc
  static BicycleSummarySession? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BicycleSummarySessionImpl.fromNativePtr(ptr);
  }

  void cancel() {
    _SummarySession_cancel(ptr);
  }

  void retry(BicycleSummarySessionSummaryListener summaryListener) {
    _SummarySession_retry(ptr,
        BicycleSummarySessionSummaryListenerImpl.getNativePtr(summaryListener));
  }
}

final _BicycleSummarySession_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_bicycle_BicycleSummarySession_free');

final void Function(ffi.Pointer<ffi.Void>) _SummarySession_cancel = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_bicycle_BicycleSummarySession_cancel')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SummarySession_retry = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleSummarySession_retry')
        .asFunction();

final class BicycleSummarySessionSummaryListenerImpl
    implements BicycleSummarySessionSummaryListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, BicycleSummarySessionSummaryListener>{};

  BicycleSummarySessionSummaryListenerImpl(
      {required void Function(
              core.List<transport_bicycle_summary.BicycleSummary> routes)
          onBicycleSummaries,
      required void Function(runtime_error.Error error)
          onBicycleSummariesError})
      : _ptr = _BicycleSummarySessionSummaryListener_new(
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _BicycleSummarySessionSummaryListener_onBicycleSummaries),
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _BicycleSummarySessionSummaryListener_onBicycleSummariesError)),
        _onBicycleSummaries = onBicycleSummaries,
        _onBicycleSummariesError = onBicycleSummariesError {
    _pointerToListener[_ptr] = this;
    _BicycleSummarySessionSummaryListenersetSendPort(
        _ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());
  }

  @core.override
  void onBicycleSummaries(
          core.List<transport_bicycle_summary.BicycleSummary> routes) =>
      _onBicycleSummaries(routes);
  @core.override
  void onBicycleSummariesError(runtime_error.Error error) =>
      _onBicycleSummariesError(error);

  final ffi.Pointer<ffi.Void> _ptr;

  final void Function(core.List<transport_bicycle_summary.BicycleSummary>)
      _onBicycleSummaries;
  final void Function(runtime_error.Error) _onBicycleSummariesError;

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      BicycleSummarySessionSummaryListener? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as BicycleSummarySessionSummaryListenerImpl)._ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _BicycleSummarySessionSummaryListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_transport_bicycle_SummarySession_BicycleSummarySessionSummaryListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _BicycleSummarySessionSummaryListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_transport_bicycle_SummarySession_BicycleSummarySessionSummaryListener_new')
        .asFunction(isLeaf: true);

void _BicycleSummarySessionSummaryListener_onBicycleSummaries(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> routes) {
  final listener =
      BicycleSummarySessionSummaryListenerImpl._pointerToListener[_ptr]!;

  try {
    listener.onBicycleSummaries(transport_bicycle_summary
        .BicycleSummaryContainerExtension.toPlatformVector(routes));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

void _BicycleSummarySessionSummaryListener_onBicycleSummariesError(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> error) {
  final listener =
      BicycleSummarySessionSummaryListenerImpl._pointerToListener[_ptr]!;

  try {
    listener
        .onBicycleSummariesError(runtime_error.ErrorImpl.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}
