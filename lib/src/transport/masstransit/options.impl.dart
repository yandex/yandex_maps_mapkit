part of 'options.dart';

final class TimeOptionsNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> departureTime;
  external ffi.Pointer<ffi.Void> arrivalTime;
}

final TimeOptionsNative Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _TimeOptionsNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    TimeOptionsNative Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_TimeOptions_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'TimeOptionsImpl.toPointer',
    toPlatform: '(val) => TimeOptionsImpl.fromPointer(val, needFree: false)',
    platformType: 'TimeOptions')
extension TimeOptionsImpl on TimeOptions {
  static TimeOptions fromNative(TimeOptionsNative native) {
    return TimeOptions(
        departureTime:
            to_platform.toPlatformFromPointerAbsTimestamp(native.departureTime),
        arrivalTime:
            to_platform.toPlatformFromPointerAbsTimestamp(native.arrivalTime));
  }

  static TimeOptionsNative toNative(TimeOptions obj) {
    return _TimeOptionsNativeInit(
        to_native.toNativePtrAbsTimestamp(obj.departureTime),
        to_native.toNativePtrAbsTimestamp(obj.arrivalTime));
  }

  static TimeOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        TimeOptionsImpl.fromNative(ptr.cast<TimeOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(TimeOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<TimeOptionsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
