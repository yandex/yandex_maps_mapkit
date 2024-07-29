part of 'panorama_layer.dart';

@bindings_annotations.WeakInterface('places.panorama.PanoramaLayer')
@bindings_annotations.ContainerData(
    toNative: 'PanoramaLayerImpl.getNativePtr',
    toPlatform:
        '(val) => PanoramaLayerImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'PanoramaLayer')
class PanoramaLayerImpl implements PanoramaLayer, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_PanoramaLayer_free.cast());

  /// @nodoc
  PanoramaLayerImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  PanoramaLayerImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory PanoramaLayerImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaLayer? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as PanoramaLayerImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _PanoramaLayer_check(ptr);
  }

  @internal

  /// @nodoc
  static PanoramaLayer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaLayerImpl.fromNativePtr(ptr);
  }

  void setStreetPanoramaVisible(core.bool on) {
    _PanoramaLayer_setStreetPanoramaVisible(ptr, on);
  }

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
final void Function(ffi.Pointer<ffi.Void>, core.int) _PanoramaLayer_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_places_panorama_PanoramaLayer_set_')
    .asFunction(isLeaf: true);
