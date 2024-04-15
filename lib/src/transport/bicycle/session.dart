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
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as runtime_error;
import 'package:yandex_maps_mapkit/src/transport/bicycle/route.dart'
    as transport_bicycle_route;
import 'package:yandex_maps_mapkit/src/transport/bicycle/summary.dart'
    as transport_bicycle_summary;

part 'session.containers.dart';

/// Handler for an async request for bicycle routes.
@bindings_annotations.ContainerData(
    toNative: 'BicycleSession.getNativePtr',
    toPlatform:
        '(val) => BicycleSession.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class BicycleSession implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleSession_free.cast());

  /// @nodoc
  BicycleSession.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  BicycleSession.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleSession? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static BicycleSession? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BicycleSession.fromNativePtr(ptr);
  }

  /// Tries to cancel the current request for bicycle routes.
  void cancel() {
    _Session_cancel(ptr);
  }

  /// Retries the request for bicycle routes using the specified callback.
  void retry(BicycleSessionRouteListener routeListener) {
    _Session_retry(
        ptr, BicycleSessionRouteListener.getNativePtr(routeListener));
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

class BicycleSessionRouteListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, BicycleSessionRouteListener>{};

  BicycleSessionRouteListener(
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

  void onBicycleRoutes(
          core.List<transport_bicycle_route.BicycleRoute> routes) =>
      _onBicycleRoutes(routes);
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
    return obj._ptr;
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
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_transport_bicycle_Session_BicycleSessionRouteListener_new')
        .asFunction(isLeaf: true);

void _BicycleSessionRouteListener_onBicycleRoutes(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> routes) {
  final listener = BicycleSessionRouteListener._pointerToListener[_ptr]!;

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
  final listener = BicycleSessionRouteListener._pointerToListener[_ptr]!;

  try {
    listener.onBicycleRoutesError(runtime_error.Error.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

/// Handler for an async request for a summary of bicycle routes.
@bindings_annotations.ContainerData(
    toNative: 'BicycleSummarySession.getNativePtr',
    toPlatform:
        '(val) => BicycleSummarySession.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class BicycleSummarySession implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_BicycleSummarySession_free.cast());

  /// @nodoc
  BicycleSummarySession.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  BicycleSummarySession.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleSummarySession? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static BicycleSummarySession? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BicycleSummarySession.fromNativePtr(ptr);
  }

  /// Tries to cancel the current request for a summary of mass transit
  /// routes.
  void cancel() {
    _SummarySession_cancel(ptr);
  }

  /// Retries the request for a summary of mass transit routes, using the
  /// specified callback.
  void retry(BicycleSummarySessionSummaryListener summaryListener) {
    _SummarySession_retry(ptr,
        BicycleSummarySessionSummaryListener.getNativePtr(summaryListener));
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

class BicycleSummarySessionSummaryListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, BicycleSummarySessionSummaryListener>{};

  BicycleSummarySessionSummaryListener(
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

  /// Mass bicycle summaries are generated.
  void onBicycleSummaries(
          core.List<transport_bicycle_summary.BicycleSummary> routes) =>
      _onBicycleSummaries(routes);

  /// There was an error with generating bicycle summaries.
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
    return obj._ptr;
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
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_transport_bicycle_SummarySession_BicycleSummarySessionSummaryListener_new')
        .asFunction(isLeaf: true);

void _BicycleSummarySessionSummaryListener_onBicycleSummaries(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> routes) {
  final listener =
      BicycleSummarySessionSummaryListener._pointerToListener[_ptr]!;

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
      BicycleSummarySessionSummaryListener._pointerToListener[_ptr]!;

  try {
    listener.onBicycleSummariesError(runtime_error.Error.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}
