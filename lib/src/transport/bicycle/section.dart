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
import 'package:yandex_maps_mapkit/src/transport/bicycle/weight.dart'
    as transport_bicycle_weight;

part 'section.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'BicycleSection.toPointer',
    toPlatform: '(val) => BicycleSection.fromPointer(val, needFree: false)')
class BicycleSection implements ffi.Finalizable {
  late final weight = transport_bicycle_weight.BicycleWeight.fromNative(
      _BicycleSection_get_weight(_ptr));
  late final geometry = mapkit_geometry_geometry.Subpolyline.fromNative(
      _BicycleSection_get_geometry(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleSection_free.cast());

  BicycleSection(transport_bicycle_weight.BicycleWeight weight,
      mapkit_geometry_geometry.Subpolyline geometry)
      : this.fromNativePtr(_BicycleSection_init(
            transport_bicycle_weight.BicycleWeight.toNative(weight),
            mapkit_geometry_geometry.Subpolyline.toNative(geometry)));

  /// @nodoc
  @internal
  BicycleSection.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleSection? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static BicycleSection? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BicycleSection.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static BicycleSection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        BicycleSection.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(BicycleSection? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _BicycleSection_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _BicycleSection_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleSection_clone')
        .asFunction(isLeaf: true);

final _BicycleSection_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_bicycle_BicycleSection_free');

final ffi.Pointer<ffi.Void> Function(
        transport_bicycle_weight.BicycleWeightNative,
        mapkit_geometry_geometry.SubpolylineNative) _BicycleSection_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        transport_bicycle_weight.BicycleWeightNative,
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_transport_bicycle_BicycleSection_init')
        .asFunction(isLeaf: true);

final transport_bicycle_weight.BicycleWeightNative Function(
        ffi.Pointer<ffi.Void>) _BicycleSection_get_weight =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    transport_bicycle_weight.BicycleWeightNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleSection_get_weight')
        .asFunction(isLeaf: true);
final mapkit_geometry_geometry.SubpolylineNative Function(ffi.Pointer<ffi.Void>)
    _BicycleSection_get_geometry = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_geometry.SubpolylineNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleSection_get_geometry')
        .asFunction(isLeaf: true);
