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
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as runtime_error;

part 'service.containers.dart';

/// The interface that handles panoramas.
@bindings_annotations.ContainerData(
    toNative: 'PanoramaService.getNativePtr',
    toPlatform:
        '(val) => PanoramaService.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class PanoramaService implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_PanoramaService_free.cast());

  /// @nodoc
  PanoramaService.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  PanoramaService.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaService? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static PanoramaService? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaService.fromNativePtr(ptr);
  }

  /// Requests the ID of the panorama that is closest to the specified
  /// position.
  ///
  /// [position] Position to find the nearest panoramaId to.
  /// [searchListener] Receives the panorama search result.
  ///
  /// Return Session handle that should be stored until searchListener is
  /// notified.
  PanoramaServiceSearchSession findNearest(mapkit_geometry_point.Point position,
      PanoramaServiceSearchListener searchListener) {
    return PanoramaServiceSearchSession.fromNativePtr(
        _PanoramaService_findNearest(
            ptr,
            mapkit_geometry_point.Point.toNative(position),
            PanoramaServiceSearchListener.getNativePtr(searchListener)));
  }
}

final _PanoramaService_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaService_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
        mapkit_geometry_point.PointNative, ffi.Pointer<ffi.Void>)
    _PanoramaService_findNearest = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaService_findNearest')
        .asFunction();

class PanoramaServiceSearchListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, PanoramaServiceSearchListener>{};

  PanoramaServiceSearchListener(
      {required void Function(core.String panoramaId) onPanoramaSearchResult,
      required void Function(runtime_error.Error error) onPanoramaSearchError})
      : _ptr = _PanoramaServiceSearchListener_new(
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeString)>(
                _PanoramaServiceSearchListener_onPanoramaSearchResult),
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _PanoramaServiceSearchListener_onPanoramaSearchError)),
        _onPanoramaSearchResult = onPanoramaSearchResult,
        _onPanoramaSearchError = onPanoramaSearchError {
    _pointerToListener[_ptr] = this;
    _PanoramaServiceSearchListenersetSendPort(
        _ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());
  }

  /// Callback for panoramaId result.
  ///
  /// [panoramaId] The ID of the nearest panorama for the requested
  /// position.
  void onPanoramaSearchResult(core.String panoramaId) =>
      _onPanoramaSearchResult(panoramaId);

  /// Callback for error processing.
  ///
  /// [error] Error description.
  void onPanoramaSearchError(runtime_error.Error error) =>
      _onPanoramaSearchError(error);

  final ffi.Pointer<ffi.Void> _ptr;

  final void Function(core.String) _onPanoramaSearchResult;
  final void Function(runtime_error.Error) _onPanoramaSearchError;

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      PanoramaServiceSearchListener? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _PanoramaServiceSearchListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_places_panorama_PanoramaService_PanoramaServiceSearchListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, native_types.NativeString)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _PanoramaServiceSearchListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, native_types.NativeString)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_places_panorama_PanoramaService_PanoramaServiceSearchListener_new')
        .asFunction(isLeaf: true);

void _PanoramaServiceSearchListener_onPanoramaSearchResult(
    ffi.Pointer<ffi.Void> _ptr, native_types.NativeString panoramaId) {
  final listener = PanoramaServiceSearchListener._pointerToListener[_ptr]!;

  try {
    listener.onPanoramaSearchResult(to_platform.toPlatformString(panoramaId));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

void _PanoramaServiceSearchListener_onPanoramaSearchError(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> error) {
  final listener = PanoramaServiceSearchListener._pointerToListener[_ptr]!;

  try {
    listener.onPanoramaSearchError(runtime_error.Error.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

/// Session for receiving the result of the findNearest() method.
///
/// Should be stored until the listener is notified. Can be used to
/// cancel the active request. Can be used to retry the last request (for
/// example, if it failed).
@bindings_annotations.ContainerData(
    toNative: 'PanoramaServiceSearchSession.getNativePtr',
    toPlatform:
        '(val) => PanoramaServiceSearchSession.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class PanoramaServiceSearchSession implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaServiceSearchSession_free.cast());

  /// @nodoc
  PanoramaServiceSearchSession.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  PanoramaServiceSearchSession.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaServiceSearchSession? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static PanoramaServiceSearchSession? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaServiceSearchSession.fromNativePtr(ptr);
  }

  /// Retries the last request.
  void retry(PanoramaServiceSearchListener searchListener) {
    _PanoramaService_SearchSession_retry(
        ptr, PanoramaServiceSearchListener.getNativePtr(searchListener));
  }

  /// Cancels the active request.
  void cancel() {
    _PanoramaService_SearchSession_cancel(ptr);
  }
}

final _PanoramaServiceSearchSession_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_places_panorama_PanoramaService_PanoramaServiceSearchSession_free');

final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _PanoramaService_SearchSession_retry = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaService_PanoramaServiceSearchSession_retry')
    .asFunction();
final void Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaService_SearchSession_cancel = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaService_PanoramaServiceSearchSession_cancel')
    .asFunction();
