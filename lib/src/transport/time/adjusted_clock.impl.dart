part of 'adjusted_clock.dart';

@bindings_annotations.WeakInterface('transport.time.AdjustedClock')
@bindings_annotations.ContainerData(
    toNative: 'AdjustedClockImpl.getNativePtr',
    toPlatform:
        '(val) => AdjustedClockImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'AdjustedClock')
class AdjustedClockImpl implements AdjustedClock, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_AdjustedClock_free.cast());

  /// @nodoc
  AdjustedClockImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  AdjustedClockImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory AdjustedClockImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(AdjustedClock? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as AdjustedClockImpl).ptr;
  }

  core.bool isValid() {
    return _AdjustedClock_check(ptr);
  }

  @internal

  /// @nodoc
  static AdjustedClock? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return AdjustedClockImpl.fromNativePtr(ptr);
  }

  core.DateTime now() {
    return to_platform.toPlatformAbsTimestamp(_AdjustedClock_now(ptr));
  }

  void resume() {
    _AdjustedClock_resume(ptr);
  }

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
