import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'historical_panorama.containers.dart';

/// @nodoc
final class HistoricalPanoramaNative extends ffi.Struct {
  external native_types.NativeString name;
  external native_types.NativeString panoramaId;
  external native_types.NativeAbsTimestamp timestamp;
}

final HistoricalPanoramaNative Function(
  native_types.NativeString,
  native_types.NativeString,
  native_types.NativeAbsTimestamp,
) _HistoricalPanoramaNativeInit = lib.library
    .lookup<
        ffi.NativeFunction<
            HistoricalPanoramaNative Function(
              native_types.NativeString,
              native_types.NativeString,
              native_types.NativeAbsTimestamp,
            )>>('yandex_flutter_places_panorama_HistoricalPanorama_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'HistoricalPanorama.toPointer',
    toPlatform: '(val) => HistoricalPanorama.fromPointer(val, needFree: false)')
class HistoricalPanorama {
  final core.String name;
  final core.String panoramaId;
  final core.DateTime timestamp;

  const HistoricalPanorama(
    this.timestamp, {
    required this.name,
    required this.panoramaId,
  });

  /// @nodoc
  @internal
  HistoricalPanorama.fromNative(HistoricalPanoramaNative native)
      : this(
          name: to_platform.toPlatformString(native.name),
          panoramaId: to_platform.toPlatformString(native.panoramaId),
          to_platform.toPlatformAbsTimestamp(native.timestamp),
        );

  /// @nodoc
  @internal
  static HistoricalPanoramaNative toNative(HistoricalPanorama c) {
    return _HistoricalPanoramaNativeInit(
      to_native.toNativeString(c.name),
      to_native.toNativeString(c.panoramaId),
      to_native.toNativeAbsTimestamp(c.timestamp),
    );
  }

  /// @nodoc
  @internal
  static HistoricalPanorama? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        HistoricalPanorama.fromNative(ptr.cast<HistoricalPanoramaNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(HistoricalPanorama? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<HistoricalPanoramaNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
