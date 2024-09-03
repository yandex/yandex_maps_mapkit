part of 'mrc_photo_track_player.dart';

@bindings_annotations.WeakInterface('places.mrc.MrcPhotoTrackPlayer')
@bindings_annotations.ContainerData(
    toNative: 'MrcPhotoTrackPlayerImpl.getNativePtr',
    toPlatform:
        '(val) => MrcPhotoTrackPlayerImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'MrcPhotoTrackPlayer')
class MrcPhotoTrackPlayerImpl implements MrcPhotoTrackPlayer, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MrcPhotoTrackPlayer_free.cast());

  /// @nodoc
  MrcPhotoTrackPlayerImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  MrcPhotoTrackPlayerImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory MrcPhotoTrackPlayerImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(MrcPhotoTrackPlayer? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as MrcPhotoTrackPlayerImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _MrcPhotoTrackPlayer_check(ptr);
  }

  @internal

  /// @nodoc
  static MrcPhotoTrackPlayer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MrcPhotoTrackPlayerImpl.fromNativePtr(ptr);
  }

  @core.override
  core.String? get photoId {
    final result = to_platform
        .toPlatformFromPointerString(_MrcPhotoTrackPlayer_get_photoId(ptr));
    exception.checkCallResult();
    return result;
  }

  @core.override
  mapkit_geometry_geometry.PolylinePosition? get position {
    final result = mapkit_geometry_geometry.PolylinePositionImpl.fromPointer(
        _MrcPhotoTrackPlayer_get_position(ptr));
    exception.checkCallResult();
    return result;
  }

  @core.override
  core.bool get isPlaying {
    final result = _MrcPhotoTrackPlayer_get_isPlaying(ptr);
    exception.checkCallResult();
    return result;
  }

  void openPhotoAt(mapkit_geometry_geometry.PolylinePosition position) {
    _MrcPhotoTrackPlayer_openPhotoAt(
        ptr, mapkit_geometry_geometry.PolylinePositionImpl.toNative(position));
    exception.checkCallResult();
  }

  void reset() {
    _MrcPhotoTrackPlayer_reset(ptr);
    exception.checkCallResult();
  }

  void enableMove() {
    _MrcPhotoTrackPlayer_enableMove(ptr);
    exception.checkCallResult();
  }

  void disableMove() {
    _MrcPhotoTrackPlayer_disableMove(ptr);
    exception.checkCallResult();
  }

  void play() {
    _MrcPhotoTrackPlayer_play(ptr);
    exception.checkCallResult();
  }

  void stop() {
    _MrcPhotoTrackPlayer_stop(ptr);
    exception.checkCallResult();
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
final void Function(ffi.Pointer<ffi.Void>, core.int) _MrcPhotoTrackPlayer_set =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
            'yandex_flutter_places_mrc_MrcPhotoTrackPlayer_set_')
        .asFunction(isLeaf: true);
