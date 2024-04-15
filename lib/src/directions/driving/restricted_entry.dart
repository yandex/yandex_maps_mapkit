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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;

part 'restricted_entry.containers.dart';

/// @nodoc
final class DrivingRestrictedEntryNative extends ffi.Struct {
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingRestrictedEntryNative Function(
        mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingRestrictedEntryNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingRestrictedEntryNative Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingRestrictedEntry_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingRestrictedEntry.toPointer',
    toPlatform:
        '(val) => DrivingRestrictedEntry.fromPointer(val, needFree: false)')
class DrivingRestrictedEntry {
  final mapkit_geometry_geometry.PolylinePosition position;

  const DrivingRestrictedEntry(this.position);

  /// @nodoc
  @internal
  DrivingRestrictedEntry.fromNative(DrivingRestrictedEntryNative native)
      : this(mapkit_geometry_geometry.PolylinePosition.fromNative(
            native.position));

  /// @nodoc
  @internal
  static DrivingRestrictedEntryNative toNative(DrivingRestrictedEntry c) {
    return _DrivingRestrictedEntryNativeInit(
        mapkit_geometry_geometry.PolylinePosition.toNative(c.position));
  }

  /// @nodoc
  @internal
  static DrivingRestrictedEntry? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingRestrictedEntry.fromNative(
        ptr.cast<DrivingRestrictedEntryNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingRestrictedEntry? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingRestrictedEntryNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
