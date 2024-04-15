import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'options.containers.dart';

/// @nodoc
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
    toNative: 'TimeOptions.toPointer',
    toPlatform: '(val) => TimeOptions.fromPointer(val, needFree: false)')
class TimeOptions {
  final core.DateTime? departureTime;
  final core.DateTime? arrivalTime;

  const TimeOptions({
    this.departureTime,
    this.arrivalTime,
  });

  /// @nodoc
  @internal
  TimeOptions.fromNative(TimeOptionsNative native)
      : this(
            departureTime: to_platform
                .toPlatformFromPointerAbsTimestamp(native.departureTime),
            arrivalTime: to_platform
                .toPlatformFromPointerAbsTimestamp(native.arrivalTime));

  /// @nodoc
  @internal
  static TimeOptionsNative toNative(TimeOptions c) {
    return _TimeOptionsNativeInit(
        to_native.toNativePtrAbsTimestamp(c.departureTime),
        to_native.toNativePtrAbsTimestamp(c.arrivalTime));
  }

  /// @nodoc
  @internal
  static TimeOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = TimeOptions.fromNative(ptr.cast<TimeOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(TimeOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<TimeOptionsNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
