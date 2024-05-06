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
part 'places.impl.dart';

abstract class Places implements ffi.Finalizable {
  /// Creates a service that allows to find a panorama closest to the
  /// chosen point.
  places_panorama_service.PanoramaService createPanoramaService();

  /// Creates a layer representing where panoramas are available.
  places_panorama_panorama_layer.PanoramaLayer createPanoramaLayer(
      mapkit_map_map_window.MapWindow mapWindow);

  ///
  /// Creates an internal "window" object with scale factor of the main
  /// screen needed to show the panorama viewer.
  ///
  /// Do not call this method - it is for internal use only. To open the
  /// panorama viewer, please use the corresponding panorama "view" object.
  places_panorama_player.PanoramaPlayer createPanoramaPlayer(
      platform_view.PlatformView platformView);

  ///
  /// Creates an internal "window" object with the specified scale factor
  /// needed to show the panorama viewer.
  ///
  /// Do not call this method - it is for internal use only. To open the
  /// panorama viewer, please use the corresponding panorama "view" object.
  places_panorama_player.PanoramaPlayer createPanoramaPlayerWithScale(
    platform_view.PlatformView platformView, {
    required core.double scaleFactor,
  });

  ///
  /// Creates an internal "window" object needed to show the mrc photo
  /// viewer.
  ///
  /// Do not call this method - it is for internal use only. To open the
  /// viewer, use the corresponding mrc photo "view" object instead.
  places_mrc_mrc_photo_player.MrcPhotoPlayer createMrcPhotoPlayer(
      platform_view.PlatformView platformView);

  ///
  /// Creates an internal "window" object needed to show the mrc photo
  /// track viewer.
  ///
  /// Do not call this method - it is for internal use only. To open the
  /// viewer, use the corresponding mrc photo "view" object instead.
  places_mrc_mrc_photo_track_player.MrcPhotoTrackPlayer
      createMrcPhotoTrackPlayer(platform_view.PlatformView platformView);
}

class PlacesFactory {
  PlacesFactory._();

  static Places get instance => _instance;
}
