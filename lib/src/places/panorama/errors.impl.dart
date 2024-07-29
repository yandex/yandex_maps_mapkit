part of 'errors.dart';

@bindings_annotations.WeakInterface('places.panorama.NotFoundError')
@bindings_annotations.ContainerData(
    toNative: 'PanoramaNotFoundErrorImpl.getNativePtr',
    toPlatform:
        '(val) => PanoramaNotFoundErrorImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'PanoramaNotFoundError')
class PanoramaNotFoundErrorImpl extends runtime_error.ErrorImpl
    implements PanoramaNotFoundError, ffi.Finalizable {
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaNotFoundError_free.cast());

  /// @nodoc
  PanoramaNotFoundErrorImpl.fromExternalPtr(ffi.Pointer<ffi.Void> ptr)
      : super.fromExternalPtr(ptr);

  /// @nodoc
  @internal
  PanoramaNotFoundErrorImpl.fromNativePtrImpl(ffi.Pointer<ffi.Void> ptr)
      : super.fromExternalPtr(ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory PanoramaNotFoundErrorImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaNotFoundError? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as PanoramaNotFoundErrorImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _PanoramaNotFoundError_check(ptr);
  }

  @internal

  /// @nodoc
  static PanoramaNotFoundError? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaNotFoundErrorImpl.fromNativePtr(ptr);
  }
}

final _PanoramaNotFoundError_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaNotFoundError_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _PanoramaNotFoundError_check =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaNotFoundError_check')
        .asFunction(isLeaf: true);

final void Function(ffi.Pointer<ffi.Void>, core.int)
    _PanoramaNotFoundError_set = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
            'yandex_flutter_places_panorama_PanoramaNotFoundError_set_')
        .asFunction(isLeaf: true);
