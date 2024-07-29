part of 'mrc_photo_player.dart';

@bindings_annotations.WeakInterface('places.mrc.MrcPhotoPlayer')
@bindings_annotations.ContainerData(
    toNative: 'MrcPhotoPlayerImpl.getNativePtr',
    toPlatform:
        '(val) => MrcPhotoPlayerImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'MrcPhotoPlayer')
class MrcPhotoPlayerImpl implements MrcPhotoPlayer, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_MrcPhotoPlayer_free.cast());

  /// @nodoc
  MrcPhotoPlayerImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  MrcPhotoPlayerImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory MrcPhotoPlayerImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(MrcPhotoPlayer? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as MrcPhotoPlayerImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _MrcPhotoPlayer_check(ptr);
  }

  @internal

  /// @nodoc
  static MrcPhotoPlayer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MrcPhotoPlayerImpl.fromNativePtr(ptr);
  }

  @core.override
  core.String? get photoId {
    return to_platform
        .toPlatformFromPointerString(_MrcPhotoPlayer_get_photoId(ptr));
  }

  void reset() {
    _MrcPhotoPlayer_reset(ptr);
  }

  void enableMove() {
    _MrcPhotoPlayer_enableMove(ptr);
  }

  void disableMove() {
    _MrcPhotoPlayer_disableMove(ptr);
  }

  core.bool moveEnabled() {
    return _MrcPhotoPlayer_moveEnabled(ptr);
  }
}

final _MrcPhotoPlayer_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_mrc_MrcPhotoPlayer_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _MrcPhotoPlayer_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_mrc_MrcPhotoPlayer_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MrcPhotoPlayer_get_photoId = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_mrc_MrcPhotoPlayer_get_photoId')
        .asFunction();

final void Function(ffi.Pointer<ffi.Void>) _MrcPhotoPlayer_reset = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_mrc_MrcPhotoPlayer_reset')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _MrcPhotoPlayer_enableMove = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_mrc_MrcPhotoPlayer_enableMove')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _MrcPhotoPlayer_disableMove = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_mrc_MrcPhotoPlayer_disableMove')
    .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _MrcPhotoPlayer_moveEnabled =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_mrc_MrcPhotoPlayer_moveEnabled')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _MrcPhotoPlayer_set = lib
    .library
    .lookup<
        ffi.NativeFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Int64)>>('yandex_flutter_places_mrc_MrcPhotoPlayer_set_')
    .asFunction(isLeaf: true);
