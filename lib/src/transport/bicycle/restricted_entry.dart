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

@bindings_annotations.ContainerData(
    toNative: 'BicycleRestrictedEntry.toPointer',
    toPlatform:
        '(val) => BicycleRestrictedEntry.fromPointer(val, needFree: false)')
class BicycleRestrictedEntry implements ffi.Finalizable {
  late final position = mapkit_geometry_geometry.PolylinePosition.fromNative(
      _BicycleRestrictedEntry_get_position(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_BicycleRestrictedEntry_free.cast());

  BicycleRestrictedEntry(mapkit_geometry_geometry.PolylinePosition position)
      : this.fromNativePtr(_BicycleRestrictedEntry_init(
            mapkit_geometry_geometry.PolylinePosition.toNative(position)));

  /// @nodoc
  @internal
  BicycleRestrictedEntry.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleRestrictedEntry? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static BicycleRestrictedEntry? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BicycleRestrictedEntry.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static BicycleRestrictedEntry? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = BicycleRestrictedEntry.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(BicycleRestrictedEntry? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _BicycleRestrictedEntry_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _BicycleRestrictedEntry_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRestrictedEntry_clone')
        .asFunction(isLeaf: true);

final _BicycleRestrictedEntry_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_bicycle_BicycleRestrictedEntry_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_geometry.PolylinePositionNative)
    _BicycleRestrictedEntry_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_transport_bicycle_BicycleRestrictedEntry_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_geometry.PolylinePositionNative Function(
    ffi
        .Pointer<ffi.Void>) _BicycleRestrictedEntry_get_position = lib.library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_geometry.PolylinePositionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_bicycle_BicycleRestrictedEntry_get_position')
    .asFunction(isLeaf: true);
