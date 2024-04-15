import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;

part 'panorama_layer.containers.dart';

/// Panorama coverage layer
@bindings_annotations.WeakInterface('places.panorama.PanoramaLayer')
@bindings_annotations.ContainerData(
    toNative: 'PanoramaLayer.getNativePtr',
    toPlatform:
        '(val) => PanoramaLayer.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class PanoramaLayer implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_PanoramaLayer_free.cast());

  /// @nodoc
  PanoramaLayer.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  PanoramaLayer.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory PanoramaLayer.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaLayer? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _PanoramaLayer_check(ptr);
  }

  @internal

  /// @nodoc
  static PanoramaLayer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaLayer.fromNativePtr(ptr);
  }

  /// Enables or disables the street coverage layer.
  void setStreetPanoramaVisible(core.bool on) {
    _PanoramaLayer_setStreetPanoramaVisible(ptr, on);
  }

  /// Enables or disables the airship icons.
  void setAirshipPanoramaVisible(core.bool on) {
    _PanoramaLayer_setAirshipPanoramaVisible(ptr, on);
  }
}

final _PanoramaLayer_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaLayer_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _PanoramaLayer_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaLayer_check')
    .asFunction(isLeaf: true);

final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _PanoramaLayer_setStreetPanoramaVisible = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_places_panorama_PanoramaLayer_setStreetPanoramaVisible')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _PanoramaLayer_setAirshipPanoramaVisible = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_places_panorama_PanoramaLayer_setAirshipPanoramaVisible')
    .asFunction();
