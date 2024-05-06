part of 'session.dart';

@bindings_annotations.ContainerData(
    toNative: 'DrivingSessionImpl.getNativePtr',
    toPlatform:
        '(val) => DrivingSessionImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'DrivingSession')
class DrivingSessionImpl implements DrivingSession, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingSession_free.cast());

  /// @nodoc
  DrivingSessionImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  DrivingSessionImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingSession? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as DrivingSessionImpl).ptr;
  }

  @internal

  /// @nodoc
  static DrivingSession? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingSessionImpl.fromNativePtr(ptr);
  }

  void cancel() {
    _Session_cancel(ptr);
  }

  void retry(DrivingSessionRouteListener routeListener) {
    _Session_retry(
        ptr, DrivingSessionRouteListenerImpl.getNativePtr(routeListener));
  }
}

final _DrivingSession_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingSession_free');

final void Function(ffi.Pointer<ffi.Void>) _Session_cancel = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingSession_cancel')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Session_retry = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingSession_retry')
        .asFunction();

final class DrivingSessionRouteListenerImpl
    implements DrivingSessionRouteListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, DrivingSessionRouteListener>{};

  DrivingSessionRouteListenerImpl(
      {required void Function(
              core.List<directions_driving_route.DrivingRoute> routes)
          onDrivingRoutes,
      required void Function(runtime_error.Error error) onDrivingRoutesError})
      : _ptr = _DrivingSessionRouteListener_new(
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _DrivingSessionRouteListener_onDrivingRoutes),
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _DrivingSessionRouteListener_onDrivingRoutesError)),
        _onDrivingRoutes = onDrivingRoutes,
        _onDrivingRoutesError = onDrivingRoutesError {
    _pointerToListener[_ptr] = this;
    _DrivingSessionRouteListenersetSendPort(
        _ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());
  }

  @core.override
  void onDrivingRoutes(
          core.List<directions_driving_route.DrivingRoute> routes) =>
      _onDrivingRoutes(routes);
  @core.override
  void onDrivingRoutesError(runtime_error.Error error) =>
      _onDrivingRoutesError(error);

  final ffi.Pointer<ffi.Void> _ptr;

  final void Function(core.List<directions_driving_route.DrivingRoute>)
      _onDrivingRoutes;
  final void Function(runtime_error.Error) _onDrivingRoutesError;

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingSessionRouteListener? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as DrivingSessionRouteListenerImpl)._ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _DrivingSessionRouteListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_directions_driving_Session_DrivingSessionRouteListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _DrivingSessionRouteListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_directions_driving_Session_DrivingSessionRouteListener_new')
        .asFunction(isLeaf: true);

void _DrivingSessionRouteListener_onDrivingRoutes(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> routes) {
  final listener = DrivingSessionRouteListenerImpl._pointerToListener[_ptr]!;

  try {
    listener.onDrivingRoutes(directions_driving_route
        .DrivingRouteContainerExtension.toPlatformVector(routes));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

void _DrivingSessionRouteListener_onDrivingRoutesError(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> error) {
  final listener = DrivingSessionRouteListenerImpl._pointerToListener[_ptr]!;

  try {
    listener.onDrivingRoutesError(runtime_error.ErrorImpl.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingSummarySessionImpl.getNativePtr',
    toPlatform:
        '(val) => DrivingSummarySessionImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'DrivingSummarySession')
class DrivingSummarySessionImpl
    implements DrivingSummarySession, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_DrivingSummarySession_free.cast());

  /// @nodoc
  DrivingSummarySessionImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  DrivingSummarySessionImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingSummarySession? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as DrivingSummarySessionImpl).ptr;
  }

  @internal

  /// @nodoc
  static DrivingSummarySession? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingSummarySessionImpl.fromNativePtr(ptr);
  }

  void cancel() {
    _SummarySession_cancel(ptr);
  }

  void retry(DrivingSummarySessionSummaryListener summaryListener) {
    _SummarySession_retry(ptr,
        DrivingSummarySessionSummaryListenerImpl.getNativePtr(summaryListener));
  }
}

final _DrivingSummarySession_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingSummarySession_free');

final void Function(ffi.Pointer<ffi.Void>) _SummarySession_cancel = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingSummarySession_cancel')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SummarySession_retry = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingSummarySession_retry')
        .asFunction();

final class DrivingSummarySessionSummaryListenerImpl
    implements DrivingSummarySessionSummaryListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, DrivingSummarySessionSummaryListener>{};

  DrivingSummarySessionSummaryListenerImpl(
      {required void Function(
              core.List<directions_driving_route.DrivingSummary> summaries)
          onDrivingSummaries,
      required void Function(runtime_error.Error error)
          onDrivingSummariesError})
      : _ptr = _DrivingSummarySessionSummaryListener_new(
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _DrivingSummarySessionSummaryListener_onDrivingSummaries),
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _DrivingSummarySessionSummaryListener_onDrivingSummariesError)),
        _onDrivingSummaries = onDrivingSummaries,
        _onDrivingSummariesError = onDrivingSummariesError {
    _pointerToListener[_ptr] = this;
    _DrivingSummarySessionSummaryListenersetSendPort(
        _ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());
  }

  @core.override
  void onDrivingSummaries(
          core.List<directions_driving_route.DrivingSummary> summaries) =>
      _onDrivingSummaries(summaries);
  @core.override
  void onDrivingSummariesError(runtime_error.Error error) =>
      _onDrivingSummariesError(error);

  final ffi.Pointer<ffi.Void> _ptr;

  final void Function(core.List<directions_driving_route.DrivingSummary>)
      _onDrivingSummaries;
  final void Function(runtime_error.Error) _onDrivingSummariesError;

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      DrivingSummarySessionSummaryListener? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as DrivingSummarySessionSummaryListenerImpl)._ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _DrivingSummarySessionSummaryListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_directions_driving_SummarySession_DrivingSummarySessionSummaryListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _DrivingSummarySessionSummaryListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_directions_driving_SummarySession_DrivingSummarySessionSummaryListener_new')
        .asFunction(isLeaf: true);

void _DrivingSummarySessionSummaryListener_onDrivingSummaries(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> summaries) {
  final listener =
      DrivingSummarySessionSummaryListenerImpl._pointerToListener[_ptr]!;

  try {
    listener.onDrivingSummaries(directions_driving_route
        .DrivingSummaryContainerExtension.toPlatformVector(summaries));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

void _DrivingSummarySessionSummaryListener_onDrivingSummariesError(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> error) {
  final listener =
      DrivingSummarySessionSummaryListenerImpl._pointerToListener[_ptr]!;

  try {
    listener
        .onDrivingSummariesError(runtime_error.ErrorImpl.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}
