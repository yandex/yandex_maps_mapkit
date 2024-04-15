import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_mapkit/src/bindings/view/platform_view.dart'
    as platform_view;
import 'package:yandex_maps_mapkit/src/mapkit/map/map_window.dart'
    as mapkit_map_map_window;
import 'package:yandex_maps_mapkit/src/places/mrc/mrc_photo_player.dart'
    as places_mrc_mrc_photo_player;
import 'package:yandex_maps_mapkit/src/places/mrc/mrc_photo_track_player.dart'
    as places_mrc_mrc_photo_track_player;
import 'package:yandex_maps_mapkit/src/places/panorama/panorama_layer.dart'
    as places_panorama_panorama_layer;
import 'package:yandex_maps_mapkit/src/places/panorama/player.dart'
    as places_panorama_player;
import 'package:yandex_maps_mapkit/src/places/panorama/service.dart'
    as places_panorama_service;

part 'places.containers.dart';

@bindings_annotations.WeakInterface('places.Places')
@bindings_annotations.ContainerData(
    toNative: 'Places.getNativePtr',
    toPlatform:
        '(val) => Places.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class Places implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Places_free.cast());

  /// @nodoc
  Places.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  Places.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory Places.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Places? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _Places_check(ptr);
  }

  @internal

  /// @nodoc
  static Places? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return Places.fromNativePtr(ptr);
  }

  /// Creates a service that allows to find a panorama closest to the
  /// chosen point.
  places_panorama_service.PanoramaService createPanoramaService() {
    return places_panorama_service.PanoramaService.fromNativePtr(
        _Places_createPanoramaService(ptr));
  }

  /// Creates a layer representing where panoramas are available.
  places_panorama_panorama_layer.PanoramaLayer createPanoramaLayer(
      mapkit_map_map_window.MapWindow mapWindow) {
    return places_panorama_panorama_layer.PanoramaLayer.fromNativePtr(
        _Places_createPanoramaLayer(
            ptr, mapkit_map_map_window.MapWindow.getNativePtr(mapWindow)));
  }

  ///
  /// Creates an internal "window" object with scale factor of the main
  /// screen needed to show the panorama viewer.
  ///
  /// Do not call this method - it is for internal use only. To open the
  /// panorama viewer, please use the corresponding panorama "view" object.
  places_panorama_player.PanoramaPlayer createPanoramaPlayer(
      platform_view.PlatformView platformView) {
    return places_panorama_player.PanoramaPlayer.fromNativePtr(
        _Places_createPanoramaPlayer(
            ptr, to_native.toNativePlatformView(platformView)));
  }

  ///
  /// Creates an internal "window" object with the specified scale factor
  /// needed to show the panorama viewer.
  ///
  /// Do not call this method - it is for internal use only. To open the
  /// panorama viewer, please use the corresponding panorama "view" object.
  places_panorama_player.PanoramaPlayer createPanoramaPlayerWithScale(
    platform_view.PlatformView platformView, {
    required core.double scaleFactor,
  }) {
    return places_panorama_player.PanoramaPlayer.fromNativePtr(
        _Places_createPanoramaPlayerWithScale(
            ptr, to_native.toNativePlatformView(platformView), scaleFactor));
  }

  ///
  /// Creates an internal "window" object needed to show the mrc photo
  /// viewer.
  ///
  /// Do not call this method - it is for internal use only. To open the
  /// viewer, use the corresponding mrc photo "view" object instead.
  places_mrc_mrc_photo_player.MrcPhotoPlayer createMrcPhotoPlayer(
      platform_view.PlatformView platformView) {
    return places_mrc_mrc_photo_player.MrcPhotoPlayer.fromNativePtr(
        _Places_createMrcPhotoPlayer(
            ptr, to_native.toNativePlatformView(platformView)));
  }

  ///
  /// Creates an internal "window" object needed to show the mrc photo
  /// track viewer.
  ///
  /// Do not call this method - it is for internal use only. To open the
  /// viewer, use the corresponding mrc photo "view" object instead.
  places_mrc_mrc_photo_track_player.MrcPhotoTrackPlayer
      createMrcPhotoTrackPlayer(platform_view.PlatformView platformView) {
    return places_mrc_mrc_photo_track_player.MrcPhotoTrackPlayer.fromNativePtr(
        _Places_createMrcPhotoTrackPlayer(
            ptr, to_native.toNativePlatformView(platformView)));
  }
}

final _Places_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_Places_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _Places_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_Places_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Places_createPanoramaService = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_Places_createPanoramaService')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Places_createPanoramaLayer = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_Places_createPanoramaLayer')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Places_createPanoramaPlayer = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_Places_createPanoramaPlayer')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, core.double)
    _Places_createPanoramaPlayerWithScale = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>, ffi.Float)>>(
            'yandex_flutter_places_Places_createPanoramaPlayerWithScale')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Places_createMrcPhotoPlayer = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_Places_createMrcPhotoPlayer')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Places_createMrcPhotoTrackPlayer = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_Places_createMrcPhotoTrackPlayer')
        .asFunction();

class PlacesFactory {
  PlacesFactory._();

  static Places get instance {
    return Places.fromNativePtr(_PlacesFactory_get_instance());
  }
}

final ffi.Pointer<ffi.Void> Function() _PlacesFactory_get_instance = lib.library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
        'yandex_flutter_places_PlacesFactory_get_instance')
    .asFunction(isLeaf: true);
