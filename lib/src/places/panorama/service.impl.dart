part of 'service.dart';

@bindings_annotations.ContainerData(
    toNative: 'PanoramaServiceImpl.getNativePtr',
    toPlatform:
        '(val) => PanoramaServiceImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'PanoramaService')
class PanoramaServiceImpl implements PanoramaService, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_PanoramaService_free.cast());

  /// @nodoc
  PanoramaServiceImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  PanoramaServiceImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaService? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as PanoramaServiceImpl).ptr;
  }

  @internal

  /// @nodoc
  static PanoramaService? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaServiceImpl.fromNativePtr(ptr);
  }

  PanoramaServiceSearchSession findNearest(mapkit_geometry_point.Point position,
      PanoramaServiceSearchListener searchListener) {
    return PanoramaServiceSearchSessionImpl.fromNativePtr(
        _PanoramaService_findNearest(
            ptr,
            mapkit_geometry_point.PointImpl.toNative(position),
            PanoramaServiceSearchListenerImpl.getNativePtr(searchListener)));
  }
}

final _PanoramaService_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaService_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
        mapkit_geometry_point.PointNative, ffi.Pointer<ffi.Void>)
    _PanoramaService_findNearest = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaService_findNearest')
        .asFunction();

final class PanoramaServiceSearchListenerImpl
    implements PanoramaServiceSearchListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, PanoramaServiceSearchListener>{};

  PanoramaServiceSearchListenerImpl(
      {required void Function(core.String panoramaId) onPanoramaSearchResult,
      required void Function(runtime_error.Error error) onPanoramaSearchError})
      : _ptr = _PanoramaServiceSearchListener_new(
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeString)>(
                _PanoramaServiceSearchListener_onPanoramaSearchResult),
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _PanoramaServiceSearchListener_onPanoramaSearchError)),
        _onPanoramaSearchResult = onPanoramaSearchResult,
        _onPanoramaSearchError = onPanoramaSearchError {
    _pointerToListener[_ptr] = this;
    _PanoramaServiceSearchListenersetSendPort(
        _ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());
  }

  @core.override
  void onPanoramaSearchResult(core.String panoramaId) =>
      _onPanoramaSearchResult(panoramaId);
  @core.override
  void onPanoramaSearchError(runtime_error.Error error) =>
      _onPanoramaSearchError(error);

  final ffi.Pointer<ffi.Void> _ptr;

  final void Function(core.String) _onPanoramaSearchResult;
  final void Function(runtime_error.Error) _onPanoramaSearchError;

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      PanoramaServiceSearchListener? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as PanoramaServiceSearchListenerImpl)._ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _PanoramaServiceSearchListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_places_panorama_PanoramaService_PanoramaServiceSearchListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, native_types.NativeString)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _PanoramaServiceSearchListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, native_types.NativeString)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_places_panorama_PanoramaService_PanoramaServiceSearchListener_new')
        .asFunction(isLeaf: true);

void _PanoramaServiceSearchListener_onPanoramaSearchResult(
    ffi.Pointer<ffi.Void> _ptr, native_types.NativeString panoramaId) {
  final listener = PanoramaServiceSearchListenerImpl._pointerToListener[_ptr]!;

  try {
    listener.onPanoramaSearchResult(to_platform.toPlatformString(panoramaId));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

void _PanoramaServiceSearchListener_onPanoramaSearchError(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> error) {
  final listener = PanoramaServiceSearchListenerImpl._pointerToListener[_ptr]!;

  try {
    listener
        .onPanoramaSearchError(runtime_error.ErrorImpl.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

@bindings_annotations.ContainerData(
    toNative: 'PanoramaServiceSearchSessionImpl.getNativePtr',
    toPlatform:
        '(val) => PanoramaServiceSearchSessionImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'PanoramaServiceSearchSession')
class PanoramaServiceSearchSessionImpl
    implements PanoramaServiceSearchSession, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaServiceSearchSession_free.cast());

  /// @nodoc
  PanoramaServiceSearchSessionImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  PanoramaServiceSearchSessionImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaServiceSearchSession? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as PanoramaServiceSearchSessionImpl).ptr;
  }

  @internal

  /// @nodoc
  static PanoramaServiceSearchSession? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaServiceSearchSessionImpl.fromNativePtr(ptr);
  }

  void retry(PanoramaServiceSearchListener searchListener) {
    _PanoramaService_SearchSession_retry(
        ptr, PanoramaServiceSearchListenerImpl.getNativePtr(searchListener));
  }

  void cancel() {
    _PanoramaService_SearchSession_cancel(ptr);
  }
}

final _PanoramaServiceSearchSession_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_places_panorama_PanoramaService_PanoramaServiceSearchSession_free');

final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _PanoramaService_SearchSession_retry = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaService_PanoramaServiceSearchSession_retry')
    .asFunction();
final void Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaService_SearchSession_cancel = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaService_PanoramaServiceSearchSession_cancel')
    .asFunction();
