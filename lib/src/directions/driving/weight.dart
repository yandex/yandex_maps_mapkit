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
final class DrivingWeightNative extends ffi.Struct {
  external mapkit_localized_value.LocalizedValueNative time;
  external mapkit_localized_value.LocalizedValueNative timeWithTraffic;
  external mapkit_localized_value.LocalizedValueNative distance;
}

final DrivingWeightNative Function(
        mapkit_localized_value.LocalizedValueNative,
        mapkit_localized_value.LocalizedValueNative,
        mapkit_localized_value.LocalizedValueNative) _DrivingWeightNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingWeightNative Function(
                        mapkit_localized_value.LocalizedValueNative,
                        mapkit_localized_value.LocalizedValueNative,
                        mapkit_localized_value.LocalizedValueNative)>>(
            'yandex_flutter_directions_driving_DrivingWeight_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingWeight.toPointer',
    toPlatform: '(val) => DrivingWeight.fromPointer(val, needFree: false)')
class DrivingWeight {
  final mapkit_localized_value.LocalizedValue time;
  final mapkit_localized_value.LocalizedValue timeWithTraffic;
  final mapkit_localized_value.LocalizedValue distance;

  const DrivingWeight(this.time, this.timeWithTraffic, this.distance);

  /// @nodoc
  @internal
  DrivingWeight.fromNative(DrivingWeightNative native)
      : this(
            mapkit_localized_value.LocalizedValue.fromNative(native.time),
            mapkit_localized_value.LocalizedValue.fromNative(
                native.timeWithTraffic),
            mapkit_localized_value.LocalizedValue.fromNative(native.distance));

  /// @nodoc
  @internal
  static DrivingWeightNative toNative(DrivingWeight c) {
    return _DrivingWeightNativeInit(
        mapkit_localized_value.LocalizedValue.toNative(c.time),
        mapkit_localized_value.LocalizedValue.toNative(c.timeWithTraffic),
        mapkit_localized_value.LocalizedValue.toNative(c.distance));
  }

  /// @nodoc
  @internal
  static DrivingWeight? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        DrivingWeight.fromNative(ptr.cast<DrivingWeightNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingWeight? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingWeightNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
