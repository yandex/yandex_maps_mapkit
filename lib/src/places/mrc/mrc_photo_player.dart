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

part 'mrc_photo_player.containers.dart';

///
@bindings_annotations.WeakInterface('places.mrc.MrcPhotoPlayer')
@bindings_annotations.ContainerData(
    toNative: 'MrcPhotoPlayer.getNativePtr',
    toPlatform:
        '(val) => MrcPhotoPlayer.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class MrcPhotoPlayer implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_MrcPhotoPlayer_free.cast());

  /// @nodoc
  MrcPhotoPlayer.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  MrcPhotoPlayer.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory MrcPhotoPlayer.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(MrcPhotoPlayer? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _MrcPhotoPlayer_check(ptr);
  }

  @internal

  /// @nodoc
  static MrcPhotoPlayer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MrcPhotoPlayer.fromNativePtr(ptr);
  }

  /// Current photo ID. Set to null after reset.
  ///
  core.String? get photoId {
    return to_platform
        .toPlatformFromPointerString(_MrcPhotoPlayer_get_photoId(ptr));
  }

  /// Closes the opened photo and stops all player actions.
  void reset() {
    _MrcPhotoPlayer_reset(ptr);
  }

  /// Shows transition arrows and allows switching photos.
  void enableMove() {
    _MrcPhotoPlayer_enableMove(ptr);
  }

  /// Hides transition arrows and disallows switching photos.
  void disableMove() {
    _MrcPhotoPlayer_disableMove(ptr);
  }

  /// Checks if switching photos is enabled.
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
