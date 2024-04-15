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
final class MasstransitFlagsNative extends ffi.Struct {
  @ffi.Bool()
  external core.bool requiresAccessPass;
  @ffi.Bool()
  external core.bool hasAutoRoad;
}

final MasstransitFlagsNative Function(core.bool, core.bool)
    _MasstransitFlagsNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    MasstransitFlagsNative Function(ffi.Bool, ffi.Bool)>>(
            'yandex_flutter_transport_masstransit_MasstransitFlags_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitFlags.toPointer',
    toPlatform: '(val) => MasstransitFlags.fromPointer(val, needFree: false)')
class MasstransitFlags {
  final core.bool requiresAccessPass;
  final core.bool hasAutoRoad;

  const MasstransitFlags({
    required this.requiresAccessPass,
    required this.hasAutoRoad,
  });

  /// @nodoc
  @internal
  MasstransitFlags.fromNative(MasstransitFlagsNative native)
      : this(
            requiresAccessPass: native.requiresAccessPass,
            hasAutoRoad: native.hasAutoRoad);

  /// @nodoc
  @internal
  static MasstransitFlagsNative toNative(MasstransitFlags c) {
    return _MasstransitFlagsNativeInit(c.requiresAccessPass, c.hasAutoRoad);
  }

  /// @nodoc
  @internal
  static MasstransitFlags? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        MasstransitFlags.fromNative(ptr.cast<MasstransitFlagsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitFlags? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitFlagsNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
