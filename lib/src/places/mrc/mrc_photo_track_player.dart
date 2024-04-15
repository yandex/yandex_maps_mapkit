import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
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

///
@bindings_annotations.WeakInterface('places.mrc.MrcPhotoTrackPlayer')
@bindings_annotations.ContainerData(
    toNative: 'MrcPhotoTrackPlayer.getNativePtr',
    toPlatform:
        '(val) => MrcPhotoTrackPlayer.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class MrcPhotoTrackPlayer implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MrcPhotoTrackPlayer_free.cast());

  /// @nodoc
  MrcPhotoTrackPlayer.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  MrcPhotoTrackPlayer.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory MrcPhotoTrackPlayer.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(MrcPhotoTrackPlayer? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _MrcPhotoTrackPlayer_check(ptr);
  }

  @internal

  /// @nodoc
  static MrcPhotoTrackPlayer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MrcPhotoTrackPlayer.fromNativePtr(ptr);
  }

  /// Current photo ID. Set to null when a track is reset or at reset.
  ///
  core.String? get photoId {
    return to_platform
        .toPlatformFromPointerString(_MrcPhotoTrackPlayer_get_photoId(ptr));
  }

  /// Currently opened photo position on a photo track polyline. Set to
  /// null when a track is reset or at reset.
  ///
  mapkit_geometry_geometry.PolylinePosition? get position {
    return mapkit_geometry_geometry.PolylinePosition.fromPointer(
        _MrcPhotoTrackPlayer_get_position(ptr));
  }

  /// Is playback running at the moment.
  core.bool get isPlaying {
    return _MrcPhotoTrackPlayer_get_isPlaying(ptr);
  }

  /// Opens photo at a given position on the track. Call to this method
  /// stops playback if it is running.
  ///
  /// [position] Position on track polyline.
  void openPhotoAt(mapkit_geometry_geometry.PolylinePosition position) {
    _MrcPhotoTrackPlayer_openPhotoAt(
        ptr, mapkit_geometry_geometry.PolylinePosition.toNative(position));
  }

  /// Closes the opened photo, track and stops all player actions.
  void reset() {
    _MrcPhotoTrackPlayer_reset(ptr);
  }

  /// shows transition arrows and allows switching photos.
  void enableMove() {
    _MrcPhotoTrackPlayer_enableMove(ptr);
  }

  /// Hides transition arrows and disallows switching photos.
  void disableMove() {
    _MrcPhotoTrackPlayer_disableMove(ptr);
  }

  /// Start photos playback along a current route starting from currently
  /// open photo or from the beginning of a photo track.
  void play() {
    _MrcPhotoTrackPlayer_play(ptr);
  }

  /// Stop photos playback
  void stop() {
    _MrcPhotoTrackPlayer_stop(ptr);
  }
}

final _MrcPhotoTrackPlayer_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_mrc_MrcPhotoTrackPlayer_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _MrcPhotoTrackPlayer_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_mrc_MrcPhotoTrackPlayer_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MrcPhotoTrackPlayer_get_photoId = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_mrc_MrcPhotoTrackPlayer_get_photoId')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MrcPhotoTrackPlayer_get_position = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_mrc_MrcPhotoTrackPlayer_get_position')
        .asFunction();

final core.bool Function(ffi.Pointer<ffi.Void>)
    _MrcPhotoTrackPlayer_get_isPlaying = lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_mrc_MrcPhotoTrackPlayer_get_isPlaying')
        .asFunction();

final void Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_geometry.PolylinePositionNative)
    _MrcPhotoTrackPlayer_openPhotoAt = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_places_mrc_MrcPhotoTrackPlayer_openPhotoAt')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _MrcPhotoTrackPlayer_reset = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_mrc_MrcPhotoTrackPlayer_reset')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _MrcPhotoTrackPlayer_enableMove = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_mrc_MrcPhotoTrackPlayer_enableMove')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _MrcPhotoTrackPlayer_disableMove =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_mrc_MrcPhotoTrackPlayer_disableMove')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _MrcPhotoTrackPlayer_play = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_mrc_MrcPhotoTrackPlayer_play')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _MrcPhotoTrackPlayer_stop = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_mrc_MrcPhotoTrackPlayer_stop')
    .asFunction();
