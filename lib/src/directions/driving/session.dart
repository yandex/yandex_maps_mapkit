import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_mapkit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as runtime_error;

part 'session.containers.dart';

/// Driving session information.
@bindings_annotations.ContainerData(
    toNative: 'DrivingSession.getNativePtr',
    toPlatform:
        '(val) => DrivingSession.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class DrivingSession implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingSession_free.cast());

  /// @nodoc
  DrivingSession.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  DrivingSession.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingSession? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static DrivingSession? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingSession.fromNativePtr(ptr);
  }

  /// Cancels the driving session.
  void cancel() {
    _Session_cancel(ptr);
  }

  /// Tries to create a driving session again.
  void retry(DrivingSessionRouteListener routeListener) {
    _Session_retry(
        ptr, DrivingSessionRouteListener.getNativePtr(routeListener));
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

class DrivingSessionRouteListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, DrivingSessionRouteListener>{};

  DrivingSessionRouteListener(
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

  /// Happens when driving routes are generated.
  void onDrivingRoutes(
          core.List<directions_driving_route.DrivingRoute> routes) =>
      _onDrivingRoutes(routes);

  /// Happens when there is an error.
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
    return obj._ptr;
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
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_directions_driving_Session_DrivingSessionRouteListener_new')
        .asFunction(isLeaf: true);

void _DrivingSessionRouteListener_onDrivingRoutes(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> routes) {
  final listener = DrivingSessionRouteListener._pointerToListener[_ptr]!;

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
  final listener = DrivingSessionRouteListener._pointerToListener[_ptr]!;

  try {
    listener.onDrivingRoutesError(runtime_error.Error.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

/// Driving session summary.
@bindings_annotations.ContainerData(
    toNative: 'DrivingSummarySession.getNativePtr',
    toPlatform:
        '(val) => DrivingSummarySession.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class DrivingSummarySession implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_DrivingSummarySession_free.cast());

  /// @nodoc
  DrivingSummarySession.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  DrivingSummarySession.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingSummarySession? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static DrivingSummarySession? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingSummarySession.fromNativePtr(ptr);
  }

  /// Cancels route summary generation.
  void cancel() {
    _SummarySession_cancel(ptr);
  }

  /// Tries to generate a driving session summary again.
  void retry(DrivingSummarySessionSummaryListener summaryListener) {
    _SummarySession_retry(ptr,
        DrivingSummarySessionSummaryListener.getNativePtr(summaryListener));
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

class DrivingSummarySessionSummaryListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, DrivingSummarySessionSummaryListener>{};

  DrivingSummarySessionSummaryListener(
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

  /// Happens when the summaries are generated.
  void onDrivingSummaries(
          core.List<directions_driving_route.DrivingSummary> summaries) =>
      _onDrivingSummaries(summaries);

  /// Happens when there is an error.
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
    return obj._ptr;
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
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_directions_driving_SummarySession_DrivingSummarySessionSummaryListener_new')
        .asFunction(isLeaf: true);

void _DrivingSummarySessionSummaryListener_onDrivingSummaries(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> summaries) {
  final listener =
      DrivingSummarySessionSummaryListener._pointerToListener[_ptr]!;

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
      DrivingSummarySessionSummaryListener._pointerToListener[_ptr]!;

  try {
    listener.onDrivingSummariesError(runtime_error.Error.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}
