part of 'places.dart';

@bindings_annotations.WeakInterface('places.Places')
@bindings_annotations.ContainerData(
    toNative: 'PlacesImpl.getNativePtr',
    toPlatform:
        '(val) => PlacesImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'Places')
class PlacesImpl implements Places, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Places_free.cast());

  /// @nodoc
  PlacesImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  PlacesImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory PlacesImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Places? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as PlacesImpl).ptr;
  }

  core.bool isValid() {
    return _Places_check(ptr);
  }

  @internal

  /// @nodoc
  static Places? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PlacesImpl.fromNativePtr(ptr);
  }

  places_panorama_service.PanoramaService createPanoramaService() {
    return places_panorama_service.PanoramaServiceImpl.fromNativePtr(
        _Places_createPanoramaService(ptr));
  }

  places_panorama_panorama_layer.PanoramaLayer createPanoramaLayer(
      mapkit_map_map_window.MapWindow mapWindow) {
    return places_panorama_panorama_layer.PanoramaLayerImpl.fromNativePtr(
        _Places_createPanoramaLayer(
            ptr, mapkit_map_map_window.MapWindowImpl.getNativePtr(mapWindow)));
  }

  places_panorama_player.PanoramaPlayer createPanoramaPlayer(
      platform_view.PlatformView platformView) {
    return places_panorama_player.PanoramaPlayerImpl.fromNativePtr(
        _Places_createPanoramaPlayer(
            ptr, to_native.toNativePlatformView(platformView)));
  }

  places_panorama_player.PanoramaPlayer createPanoramaPlayerWithScale(
    platform_view.PlatformView platformView, {
    required core.double scaleFactor,
  }) {
    return places_panorama_player.PanoramaPlayerImpl.fromNativePtr(
        _Places_createPanoramaPlayerWithScale(
            ptr, to_native.toNativePlatformView(platformView), scaleFactor));
  }

  places_mrc_mrc_photo_player.MrcPhotoPlayer createMrcPhotoPlayer(
      platform_view.PlatformView platformView) {
    return places_mrc_mrc_photo_player.MrcPhotoPlayerImpl.fromNativePtr(
        _Places_createMrcPhotoPlayer(
            ptr, to_native.toNativePlatformView(platformView)));
  }

  places_mrc_mrc_photo_track_player.MrcPhotoTrackPlayer
      createMrcPhotoTrackPlayer(platform_view.PlatformView platformView) {
    return places_mrc_mrc_photo_track_player.MrcPhotoTrackPlayerImpl
        .fromNativePtr(_Places_createMrcPhotoTrackPlayer(
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

Places get _instance {
  return PlacesImpl.fromNativePtr(_PlacesFactory_get_instance());
}

final ffi.Pointer<ffi.Void> Function() _PlacesFactory_get_instance = lib.library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
        'yandex_flutter_places_PlacesFactory_get_instance')
    .asFunction(isLeaf: true);
