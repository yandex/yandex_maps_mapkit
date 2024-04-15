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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;

part 'toll_post.containers.dart';

/// @nodoc
final class DrivingTollPostNative extends ffi.Struct {
  external mapkit_geometry_geometry.PolylinePositionNative position;
  external ffi.Pointer<ffi.Void> id;
  external ffi.Pointer<ffi.Void> time_with_traffic;
  external ffi.Pointer<ffi.Void> nonTransactional;
}

final DrivingTollPostNative Function(
        mapkit_geometry_geometry.PolylinePositionNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingTollPostNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingTollPostNative Function(
                        mapkit_geometry_geometry.PolylinePositionNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_internal_DrivingTollPost_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingTollPost.toPointer',
    toPlatform: '(val) => DrivingTollPost.fromPointer(val, needFree: false)')
class DrivingTollPost {
  final mapkit_geometry_geometry.PolylinePosition position;
  final core.int? id;
  final core.double? time_with_traffic;
  final core.bool? nonTransactional;

  const DrivingTollPost(
    this.position, {
    this.id,
    this.time_with_traffic,
    this.nonTransactional,
  });

  /// @nodoc
  @internal
  DrivingTollPost.fromNative(DrivingTollPostNative native)
      : this(
            mapkit_geometry_geometry.PolylinePosition.fromNative(
                native.position),
            id: to_platform.toPlatformFromPointerInt64(native.id),
            time_with_traffic: to_platform
                .toPlatformFromPointerDouble(native.time_with_traffic),
            nonTransactional:
                to_platform.toPlatformFromPointerBool(native.nonTransactional));

  /// @nodoc
  @internal
  static DrivingTollPostNative toNative(DrivingTollPost c) {
    return _DrivingTollPostNativeInit(
        mapkit_geometry_geometry.PolylinePosition.toNative(c.position),
        to_native.toNativePtrInt64(c.id),
        to_native.toNativePtrDouble(c.time_with_traffic),
        to_native.toNativePtrBool(c.nonTransactional));
  }

  /// @nodoc
  @internal
  static DrivingTollPost? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        DrivingTollPost.fromNative(ptr.cast<DrivingTollPostNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingTollPost? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingTollPostNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
