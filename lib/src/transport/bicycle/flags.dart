import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'flags.containers.dart';

/// @nodoc
final class BicycleFlagsNative extends ffi.Struct {
  @ffi.Bool()
  external core.bool requiresAccessPass;
  @ffi.Bool()
  external core.bool hasAutoRoad;
}

final BicycleFlagsNative Function(
    core.bool,
    core
        .bool) _BicycleFlagsNativeInit = lib.library
    .lookup<
            ffi
            .NativeFunction<BicycleFlagsNative Function(ffi.Bool, ffi.Bool)>>(
        'yandex_flutter_transport_bicycle_BicycleFlags_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'BicycleFlags.toPointer',
    toPlatform: '(val) => BicycleFlags.fromPointer(val, needFree: false)')
class BicycleFlags {
  final core.bool requiresAccessPass;
  final core.bool hasAutoRoad;

  const BicycleFlags({
    required this.requiresAccessPass,
    required this.hasAutoRoad,
  });

  /// @nodoc
  @internal
  BicycleFlags.fromNative(BicycleFlagsNative native)
      : this(
            requiresAccessPass: native.requiresAccessPass,
            hasAutoRoad: native.hasAutoRoad);

  /// @nodoc
  @internal
  static BicycleFlagsNative toNative(BicycleFlags c) {
    return _BicycleFlagsNativeInit(c.requiresAccessPass, c.hasAutoRoad);
  }

  /// @nodoc
  @internal
  static BicycleFlags? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = BicycleFlags.fromNative(ptr.cast<BicycleFlagsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(BicycleFlags? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<BicycleFlagsNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
