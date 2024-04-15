import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;

part 'adjusted_clock.containers.dart';

@bindings_annotations.WeakInterface('transport.time.AdjustedClock')
@bindings_annotations.ContainerData(
    toNative: 'AdjustedClock.getNativePtr',
    toPlatform:
        '(val) => AdjustedClock.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class AdjustedClock implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_AdjustedClock_free.cast());

  /// @nodoc
  AdjustedClock.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  AdjustedClock.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory AdjustedClock.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(AdjustedClock? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _AdjustedClock_check(ptr);
  }

  @internal

  /// @nodoc
  static AdjustedClock? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return AdjustedClock.fromNativePtr(ptr);
  }

  /// This method returns the time that has been synchronized with Yandex
  /// servers. Use it if you don't trust the time on the local device
  /// because the user could have set it incorrectly. If time
  /// synchronization has failed or not yet finished, the returned value
  /// equals the local device's time.
  /// Return POSIX time. For more information, see
  /// https://en.wikipedia.org/wiki/Unix_time.
  core.DateTime now() {
    return to_platform.toPlatformAbsTimestamp(_AdjustedClock_now(ptr));
  }

  /// Notifies AdjustedClock when the application resumes the foreground
  /// state.
  void resume() {
    _AdjustedClock_resume(ptr);
  }

  /// Notifies AdjustedClock when the application pauses and goes to the
  /// background.
  void pause() {
    _AdjustedClock_pause(ptr);
  }
}

final _AdjustedClock_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_time_AdjustedClock_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _AdjustedClock_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_time_AdjustedClock_check')
    .asFunction(isLeaf: true);

final native_types.NativeAbsTimestamp Function(ffi.Pointer<ffi.Void>)
    _AdjustedClock_now = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeAbsTimestamp Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_time_AdjustedClock_now')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _AdjustedClock_resume = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_time_AdjustedClock_resume')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _AdjustedClock_pause = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_time_AdjustedClock_pause')
    .asFunction();
