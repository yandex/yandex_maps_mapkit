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

final class FitnessOptionsNative extends ffi.Struct {
  @ffi.Bool()
  external core.bool avoidSteep;
  @ffi.Bool()
  external core.bool avoidStairs;
}

final FitnessOptionsNative Function(
    core.bool,
    core
        .bool) _FitnessOptionsNativeInit = lib.library
    .lookup<
            ffi
            .NativeFunction<FitnessOptionsNative Function(ffi.Bool, ffi.Bool)>>(
        'yandex_flutter_transport_masstransit_FitnessOptions_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'FitnessOptionsImpl.toPointer',
    toPlatform: '(val) => FitnessOptionsImpl.fromPointer(val, needFree: false)',
    platformType: 'FitnessOptions')
extension FitnessOptionsImpl on FitnessOptions {
  static FitnessOptions fromNative(FitnessOptionsNative native) {
    return FitnessOptions(
        avoidSteep: native.avoidSteep, avoidStairs: native.avoidStairs);
  }

  static FitnessOptionsNative toNative(FitnessOptions obj) {
    return _FitnessOptionsNativeInit(obj.avoidSteep, obj.avoidStairs);
  }

  static FitnessOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        FitnessOptionsImpl.fromNative(ptr.cast<FitnessOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(FitnessOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<FitnessOptionsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class RouteOptionsNative extends ffi.Struct {
  external FitnessOptionsNative fitnessOptions;
}

final RouteOptionsNative Function(FitnessOptionsNative)
    _RouteOptionsNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    RouteOptionsNative Function(FitnessOptionsNative)>>(
            'yandex_flutter_transport_masstransit_RouteOptions_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'RouteOptionsImpl.toPointer',
    toPlatform: '(val) => RouteOptionsImpl.fromPointer(val, needFree: false)',
    platformType: 'RouteOptions')
extension RouteOptionsImpl on RouteOptions {
  static RouteOptions fromNative(RouteOptionsNative native) {
    return RouteOptions(FitnessOptionsImpl.fromNative(native.fitnessOptions));
  }

  static RouteOptionsNative toNative(RouteOptions obj) {
    return _RouteOptionsNativeInit(
        FitnessOptionsImpl.toNative(obj.fitnessOptions));
  }

  static RouteOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        RouteOptionsImpl.fromNative(ptr.cast<RouteOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(RouteOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<RouteOptionsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
