import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;

part 'mrc_photo_track_player.containers.dart';
part 'mrc_photo_track_player.impl.dart';

/// @nodoc
abstract class MrcPhotoTrackPlayer implements ffi.Finalizable {
  /// Current photo ID. Set to null when a track is reset or at reset.
  ///
  core.String? get photoId;

  /// Currently opened photo position on a photo track polyline. Set to
  /// null when a track is reset or at reset.
  ///
  mapkit_geometry_geometry.PolylinePosition? get position;

  /// Is playback running at the moment.
  core.bool get isPlaying;

  /// Opens photo at a given position on the track. Call to this method
  /// stops playback if it is running.
  ///
  /// [position] Position on track polyline.
  void openPhotoAt(mapkit_geometry_geometry.PolylinePosition position);

  /// Closes the opened photo, track and stops all player actions.
  void reset();

  /// shows transition arrows and allows switching photos.
  void enableMove();

  /// Hides transition arrows and disallows switching photos.
  void disableMove();

  /// Start photos playback along a current route starting from currently
  /// open photo or from the beginning of a photo track.
  void play();

  /// Stop photos playback
  void stop();

  core.bool isValid();
}
