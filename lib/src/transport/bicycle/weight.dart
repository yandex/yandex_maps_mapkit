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
final class BicycleWeightNative extends ffi.Struct {
  external mapkit_localized_value.LocalizedValueNative time;
  external mapkit_localized_value.LocalizedValueNative distance;
}

final BicycleWeightNative Function(mapkit_localized_value.LocalizedValueNative,
        mapkit_localized_value.LocalizedValueNative) _BicycleWeightNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    BicycleWeightNative Function(
                        mapkit_localized_value.LocalizedValueNative,
                        mapkit_localized_value.LocalizedValueNative)>>(
            'yandex_flutter_transport_bicycle_BicycleWeight_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'BicycleWeight.toPointer',
    toPlatform: '(val) => BicycleWeight.fromPointer(val, needFree: false)')
class BicycleWeight {
  final mapkit_localized_value.LocalizedValue time;
  final mapkit_localized_value.LocalizedValue distance;

  const BicycleWeight(this.time, this.distance);

  /// @nodoc
  @internal
  BicycleWeight.fromNative(BicycleWeightNative native)
      : this(mapkit_localized_value.LocalizedValue.fromNative(native.time),
            mapkit_localized_value.LocalizedValue.fromNative(native.distance));

  /// @nodoc
  @internal
  static BicycleWeightNative toNative(BicycleWeight c) {
    return _BicycleWeightNativeInit(
        mapkit_localized_value.LocalizedValue.toNative(c.time),
        mapkit_localized_value.LocalizedValue.toNative(c.distance));
  }

  /// @nodoc
  @internal
  static BicycleWeight? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        BicycleWeight.fromNative(ptr.cast<BicycleWeightNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(BicycleWeight? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<BicycleWeightNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
