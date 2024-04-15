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
import 'package:yandex_maps_mapkit/src/mapkit/localized_value.dart'
    as mapkit_localized_value;

part 'weight.containers.dart';

/// @nodoc
final class MasstransitWeightNative extends ffi.Struct {
  external mapkit_localized_value.LocalizedValueNative time;
  external mapkit_localized_value.LocalizedValueNative walkingDistance;
  @ffi.Uint32()
  external core.int transfersCount;
}

final MasstransitWeightNative Function(
        mapkit_localized_value.LocalizedValueNative,
        mapkit_localized_value.LocalizedValueNative,
        core.int) _MasstransitWeightNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    MasstransitWeightNative Function(
                        mapkit_localized_value.LocalizedValueNative,
                        mapkit_localized_value.LocalizedValueNative,
                        ffi.Uint32)>>(
            'yandex_flutter_transport_masstransit_MasstransitWeight_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitWeight.toPointer',
    toPlatform: '(val) => MasstransitWeight.fromPointer(val, needFree: false)')
class MasstransitWeight {
  final mapkit_localized_value.LocalizedValue time;
  final mapkit_localized_value.LocalizedValue walkingDistance;
  final core.int transfersCount;

  const MasstransitWeight(
    this.time,
    this.walkingDistance, {
    required this.transfersCount,
  });

  /// @nodoc
  @internal
  MasstransitWeight.fromNative(MasstransitWeightNative native)
      : this(
            mapkit_localized_value.LocalizedValue.fromNative(native.time),
            mapkit_localized_value.LocalizedValue.fromNative(
                native.walkingDistance),
            transfersCount: native.transfersCount);

  /// @nodoc
  @internal
  static MasstransitWeightNative toNative(MasstransitWeight c) {
    return _MasstransitWeightNativeInit(
        mapkit_localized_value.LocalizedValue.toNative(c.time),
        mapkit_localized_value.LocalizedValue.toNative(c.walkingDistance),
        c.transfersCount);
  }

  /// @nodoc
  @internal
  static MasstransitWeight? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        MasstransitWeight.fromNative(ptr.cast<MasstransitWeightNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitWeight? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitWeightNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
