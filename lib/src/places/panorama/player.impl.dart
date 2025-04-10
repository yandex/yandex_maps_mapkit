part of 'player.dart';

final class _PanoramaChangeListenerWrapper implements ffi.Finalizable {
  _PanoramaChangeListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaChangeListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension PanoramaChangeListenerImpl on PanoramaChangeListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<PanoramaChangeListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<PanoramaChangeListener,
      _PanoramaChangeListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(PanoramaChangeListener obj) {
    final ptr = _PanoramaChangeListener_new(ffi.Pointer.fromFunction<
        ffi.Void Function(ffi.Pointer<ffi.Void>,
            ffi.Pointer<ffi.Void>)>(_PanoramaChangeListener_onPanoramaChanged));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _PanoramaChangeListenerWrapper(ptr);
    _PanoramaChangeListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaChangeListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(ffi.Pointer<ffi.Void>, core.int, core.int)
    _PanoramaChangeListenersetSendPort = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
            'yandex_flutter_places_panorama_PanoramaChangeListener_setSendPort')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _PanoramaChangeListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<
                            ffi
                            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_places_panorama_PanoramaChangeListener_new')
        .asFunction(isLeaf: true);

final _PanoramaChangeListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaChangeListener_free');
void _PanoramaChangeListener_onPanoramaChanged(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> player) {
  final listener = PanoramaChangeListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onPanoramaChanged(PanoramaPlayerImpl.fromNativePtr(player));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

final class _PanoramaDirectionChangeListenerWrapper implements ffi.Finalizable {
  _PanoramaDirectionChangeListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaDirectionChangeListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension PanoramaDirectionChangeListenerImpl
    on PanoramaDirectionChangeListener {
  static final _pointerToListener = <ffi.Pointer<ffi.Void>,
      core.WeakReference<PanoramaDirectionChangeListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<
      PanoramaDirectionChangeListener,
      _PanoramaDirectionChangeListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(
      PanoramaDirectionChangeListener obj) {
    final ptr = _PanoramaDirectionChangeListener_new(ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
        _PanoramaDirectionChangeListener_onPanoramaDirectionChanged));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _PanoramaDirectionChangeListenerWrapper(ptr);
    _PanoramaDirectionChangeListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      PanoramaDirectionChangeListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _PanoramaDirectionChangeListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_places_panorama_PanoramaDirectionChangeListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _PanoramaDirectionChangeListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<
                            ffi
                            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_places_panorama_PanoramaDirectionChangeListener_new')
        .asFunction(isLeaf: true);

final _PanoramaDirectionChangeListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaDirectionChangeListener_free');
void _PanoramaDirectionChangeListener_onPanoramaDirectionChanged(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> player) {
  final listener =
      PanoramaDirectionChangeListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener
        .onPanoramaDirectionChanged(PanoramaPlayerImpl.fromNativePtr(player));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

final class _PanoramaSpanChangeListenerWrapper implements ffi.Finalizable {
  _PanoramaSpanChangeListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaSpanChangeListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension PanoramaSpanChangeListenerImpl on PanoramaSpanChangeListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<PanoramaSpanChangeListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<PanoramaSpanChangeListener,
      _PanoramaSpanChangeListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(
      PanoramaSpanChangeListener obj) {
    final ptr = _PanoramaSpanChangeListener_new(ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
        _PanoramaSpanChangeListener_onPanoramaSpanChanged));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _PanoramaSpanChangeListenerWrapper(ptr);
    _PanoramaSpanChangeListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaSpanChangeListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _PanoramaSpanChangeListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_places_panorama_PanoramaSpanChangeListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _PanoramaSpanChangeListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<
                            ffi
                            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_places_panorama_PanoramaSpanChangeListener_new')
        .asFunction(isLeaf: true);

final _PanoramaSpanChangeListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaSpanChangeListener_free');
void _PanoramaSpanChangeListener_onPanoramaSpanChanged(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> player) {
  final listener =
      PanoramaSpanChangeListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onPanoramaSpanChanged(PanoramaPlayerImpl.fromNativePtr(player));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

final class _PanoramaCompanyTapListenerWrapper implements ffi.Finalizable {
  _PanoramaCompanyTapListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaCompanyTapListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension PanoramaCompanyTapListenerImpl on PanoramaCompanyTapListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<PanoramaCompanyTapListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<PanoramaCompanyTapListener,
      _PanoramaCompanyTapListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(
      PanoramaCompanyTapListener obj) {
    final ptr = _PanoramaCompanyTapListener_new(ffi.Pointer.fromFunction<
        ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
            ffi.Pointer<ffi.Void>)>(_PanoramaCompanyTapListener_onCompanyTap));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _PanoramaCompanyTapListenerWrapper(ptr);
    _PanoramaCompanyTapListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaCompanyTapListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _PanoramaCompanyTapListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_places_panorama_PanoramaCompanyTapListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _PanoramaCompanyTapListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<
                            ffi
                            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_places_panorama_PanoramaCompanyTapListener_new')
        .asFunction(isLeaf: true);

final _PanoramaCompanyTapListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaCompanyTapListener_free');
void _PanoramaCompanyTapListener_onCompanyTap(ffi.Pointer<ffi.Void> _ptr,
    ffi.Pointer<ffi.Void> player, ffi.Pointer<ffi.Void> info) {
  final listener =
      PanoramaCompanyTapListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onCompanyTap(
        PanoramaPlayerImpl.fromNativePtr(player),
        places_panorama_company_tap_info.CompanyTapInfoImpl.fromNativePtr(
            info));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

final class _PanoramaErrorListenerWrapper implements ffi.Finalizable {
  _PanoramaErrorListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaErrorListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension PanoramaErrorListenerImpl on PanoramaErrorListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<PanoramaErrorListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<PanoramaErrorListener, _PanoramaErrorListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(PanoramaErrorListener obj) {
    final ptr = _PanoramaErrorListener_new(ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>)>(
        _PanoramaErrorListener_onPanoramaOpenError));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _PanoramaErrorListenerWrapper(ptr);
    _PanoramaErrorListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaErrorListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(ffi.Pointer<ffi.Void>, core.int, core.int)
    _PanoramaErrorListenersetSendPort = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
            'yandex_flutter_places_panorama_PanoramaErrorListener_setSendPort')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _PanoramaErrorListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<
                            ffi
                            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_places_panorama_PanoramaErrorListener_new')
        .asFunction(isLeaf: true);

final _PanoramaErrorListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaErrorListener_free');
void _PanoramaErrorListener_onPanoramaOpenError(ffi.Pointer<ffi.Void> _ptr,
    ffi.Pointer<ffi.Void> player, ffi.Pointer<ffi.Void> error) {
  final listener = PanoramaErrorListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onPanoramaOpenError(PanoramaPlayerImpl.fromNativePtr(player),
        runtime_error.ErrorImpl.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

@bindings_annotations.WeakInterface('places.panorama.Player')
@bindings_annotations.ContainerData(
    toNative: 'PanoramaPlayerImpl.getNativePtr',
    toPlatform:
        '(val) => PanoramaPlayerImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'PanoramaPlayer')
class PanoramaPlayerImpl implements PanoramaPlayer, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_PanoramaPlayer_free.cast());

  /// @nodoc
  PanoramaPlayerImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  PanoramaPlayerImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory PanoramaPlayerImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaPlayer? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as PanoramaPlayerImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _PanoramaPlayer_check(ptr);
  }

  @internal

  /// @nodoc
  static PanoramaPlayer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaPlayerImpl.fromNativePtr(ptr);
  }

  @core.override
  mapkit_logo_logo.Logo get logo {
    final result = _Player_get_logo(ptr);
    exception.checkCallResult();
    return mapkit_logo_logo.LogoImpl.fromNativePtr(result);
  }

  void openPanorama(core.String panoramaId) {
    _Player_openPanorama(ptr, to_native.toNativeString(panoramaId));
    exception.checkCallResult();
  }

  void openUserPanoramaWithLocalDataSource(
      places_panorama_panorama_description.PanoramaDescription
          panoramaDescription,
      places_panorama_panorama_description.PanoramaTileImageFactory
          tileImageProvider,
      places_panorama_panorama_description.PanoramaIconImageFactory
          iconImageProvider,
      places_panorama_panorama_description.PanoramaUserPanoramaEventListener
          userPanoramaEventListener) {
    _Player_openUserPanoramaWithLocalDataSource(
        ptr,
        places_panorama_panorama_description.PanoramaDescriptionImpl
            .getNativePtr(panoramaDescription),
        places_panorama_panorama_description.PanoramaTileImageFactoryImpl
            .getNativePtr(tileImageProvider),
        places_panorama_panorama_description.PanoramaIconImageFactoryImpl
            .getNativePtr(iconImageProvider),
        places_panorama_panorama_description
                .PanoramaUserPanoramaEventListenerImpl
            .getNativePtr(userPanoramaEventListener));
    exception.checkCallResult();
  }

  void openUserPanoramaWithNetworkDataSource(
      places_panorama_panorama_description.PanoramaDescription
          panoramaDescription,
      places_panorama_panorama_description.PanoramaTileUrlProvider
          tileUrlProvider,
      places_panorama_panorama_description.PanoramaIconUrlProvider
          iconUrlProvider,
      places_panorama_panorama_description.PanoramaUserPanoramaEventListener
          userPanoramaEventListener) {
    _Player_openUserPanoramaWithNetworkDataSource(
        ptr,
        places_panorama_panorama_description.PanoramaDescriptionImpl
            .getNativePtr(panoramaDescription),
        places_panorama_panorama_description.PanoramaTileUrlProviderImpl
            .getNativePtr(tileUrlProvider),
        places_panorama_panorama_description.PanoramaIconUrlProviderImpl
            .getNativePtr(iconUrlProvider),
        places_panorama_panorama_description
                .PanoramaUserPanoramaEventListenerImpl
            .getNativePtr(userPanoramaEventListener));
    exception.checkCallResult();
  }

  core.String panoramaId() {
    final result = _Player_panoramaId(ptr);
    exception.checkCallResult();
    return to_platform.toPlatformString(result);
  }

  mapkit_geometry_point.Point position() {
    final result = _Player_position(ptr);
    exception.checkCallResult();
    return mapkit_geometry_point.PointImpl.fromNative(result);
  }

  void lookAt(mapkit_geometry_point.Point position) {
    _Player_lookAt(ptr, mapkit_geometry_point.PointImpl.toNative(position));
    exception.checkCallResult();
  }

  mapkit_geometry_direction.Direction direction() {
    final result = _Player_direction(ptr);
    exception.checkCallResult();
    return mapkit_geometry_direction.DirectionImpl.fromNative(result);
  }

  void setDirection(mapkit_geometry_direction.Direction direction) {
    _Player_setDirection(
        ptr, mapkit_geometry_direction.DirectionImpl.toNative(direction));
    exception.checkCallResult();
  }

  mapkit_geometry_span.Span span() {
    final result = _Player_span(ptr);
    exception.checkCallResult();
    return mapkit_geometry_span.SpanImpl.fromNative(result);
  }

  void setSpan(mapkit_geometry_span.Span span) {
    _Player_setSpan(ptr, mapkit_geometry_span.SpanImpl.toNative(span));
    exception.checkCallResult();
  }

  void reset() {
    _Player_reset(ptr);
    exception.checkCallResult();
  }

  core.List<places_panorama_historical_panorama.HistoricalPanorama>
      historicalPanoramas() {
    final result = _Player_historicalPanoramas(ptr);
    exception.checkCallResult();
    return places_panorama_historical_panorama
        .HistoricalPanoramaContainerExtension.toPlatformVector(result);
  }

  void enableZoom() {
    _Player_enableZoom(ptr);
    exception.checkCallResult();
  }

  void disableZoom() {
    _Player_disableZoom(ptr);
    exception.checkCallResult();
  }

  core.bool zoomEnabled() {
    final result = _Player_zoomEnabled(ptr);
    exception.checkCallResult();
    return result;
  }

  void enableMove() {
    _Player_enableMove(ptr);
    exception.checkCallResult();
  }

  void disableMove() {
    _Player_disableMove(ptr);
    exception.checkCallResult();
  }

  core.bool moveEnabled() {
    final result = _Player_moveEnabled(ptr);
    exception.checkCallResult();
    return result;
  }

  void enableRotation() {
    _Player_enableRotation(ptr);
    exception.checkCallResult();
  }

  void disableRotation() {
    _Player_disableRotation(ptr);
    exception.checkCallResult();
  }

  core.bool rotationEnabled() {
    final result = _Player_rotationEnabled(ptr);
    exception.checkCallResult();
    return result;
  }

  void enableMarkers() {
    _Player_enableMarkers(ptr);
    exception.checkCallResult();
  }

  void disableMarkers() {
    _Player_disableMarkers(ptr);
    exception.checkCallResult();
  }

  core.bool markersEnabled() {
    final result = _Player_markersEnabled(ptr);
    exception.checkCallResult();
    return result;
  }

  void enableCompanies() {
    _Player_enableCompanies(ptr);
    exception.checkCallResult();
  }

  void disableCompanies() {
    _Player_disableCompanies(ptr);
    exception.checkCallResult();
  }

  core.bool companiesEnabled() {
    final result = _Player_companiesEnabled(ptr);
    exception.checkCallResult();
    return result;
  }

  void addPanoramaChangeListener(
      PanoramaChangeListener panoramaChangeListener) {
    _Player_addPanoramaChangeListener(
        ptr, PanoramaChangeListenerImpl.getNativePtr(panoramaChangeListener));
    exception.checkCallResult();
  }

  void removePanoramaChangeListener(
      PanoramaChangeListener panoramaChangeListener) {
    _Player_removePanoramaChangeListener(
        ptr, PanoramaChangeListenerImpl.getNativePtr(panoramaChangeListener));
    exception.checkCallResult();
  }

  void addDirectionChangeListener(
      PanoramaDirectionChangeListener directionChangeListener) {
    _Player_addDirectionChangeListener(
        ptr,
        PanoramaDirectionChangeListenerImpl.getNativePtr(
            directionChangeListener));
    exception.checkCallResult();
  }

  void removeDirectionChangeListener(
      PanoramaDirectionChangeListener directionChangeListener) {
    _Player_removeDirectionChangeListener(
        ptr,
        PanoramaDirectionChangeListenerImpl.getNativePtr(
            directionChangeListener));
    exception.checkCallResult();
  }

  void addSpanChangeListener(PanoramaSpanChangeListener spanChangeListener) {
    _Player_addSpanChangeListener(
        ptr, PanoramaSpanChangeListenerImpl.getNativePtr(spanChangeListener));
    exception.checkCallResult();
  }

  void removeSpanChangeListener(PanoramaSpanChangeListener spanChangeListener) {
    _Player_removeSpanChangeListener(
        ptr, PanoramaSpanChangeListenerImpl.getNativePtr(spanChangeListener));
    exception.checkCallResult();
  }

  void addCompanyTapListener(PanoramaCompanyTapListener companyTapListener) {
    _Player_addCompanyTapListener(
        ptr, PanoramaCompanyTapListenerImpl.getNativePtr(companyTapListener));
    exception.checkCallResult();
  }

  void removeCompanyTapListener(PanoramaCompanyTapListener companyTapListener) {
    _Player_removeCompanyTapListener(
        ptr, PanoramaCompanyTapListenerImpl.getNativePtr(companyTapListener));
    exception.checkCallResult();
  }

  void addErrorListener(PanoramaErrorListener errorListener) {
    _Player_addErrorListener(
        ptr, PanoramaErrorListenerImpl.getNativePtr(errorListener));
    exception.checkCallResult();
  }

  void removeErrorListener(PanoramaErrorListener errorListener) {
    _Player_removeErrorListener(
        ptr, PanoramaErrorListenerImpl.getNativePtr(errorListener));
    exception.checkCallResult();
  }

  void enableLoadingWheel() {
    _Player_enableLoadingWheel(ptr);
    exception.checkCallResult();
  }

  void disableLoadingWheel() {
    _Player_disableLoadingWheel(ptr);
    exception.checkCallResult();
  }

  core.bool loadingWheelEnabled() {
    final result = _Player_loadingWheelEnabled(ptr);
    exception.checkCallResult();
    return result;
  }

  void onMemoryWarning() {
    _Player_onMemoryWarning(ptr);
    exception.checkCallResult();
  }
}

final _PanoramaPlayer_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _PanoramaPlayer_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _Player_get_logo =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaPlayer_get_logo')
        .asFunction();

final void Function(ffi.Pointer<ffi.Void>, native_types.NativeString)
    _Player_openPanorama = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeString)>>(
            'yandex_flutter_places_panorama_PanoramaPlayer_openPanorama')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Player_openUserPanoramaWithLocalDataSource = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_openUserPanoramaWithLocalDataSource')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Player_openUserPanoramaWithNetworkDataSource = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_openUserPanoramaWithNetworkDataSource')
    .asFunction();
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _Player_panoramaId = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaPlayer_panoramaId')
        .asFunction();
final mapkit_geometry_point.PointNative Function(ffi.Pointer<ffi.Void>)
    _Player_position = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_point.PointNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaPlayer_position')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, mapkit_geometry_point.PointNative)
    _Player_lookAt = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_point.PointNative)>>(
            'yandex_flutter_places_panorama_PanoramaPlayer_lookAt')
        .asFunction();
final mapkit_geometry_direction.DirectionNative Function(ffi.Pointer<ffi.Void>)
    _Player_direction = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_direction.DirectionNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaPlayer_direction')
        .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_direction.DirectionNative)
    _Player_setDirection = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_direction.DirectionNative)>>(
            'yandex_flutter_places_panorama_PanoramaPlayer_setDirection')
        .asFunction();
final mapkit_geometry_span.SpanNative Function(ffi.Pointer<ffi.Void>)
    _Player_span = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_span.SpanNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaPlayer_span')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, mapkit_geometry_span.SpanNative)
    _Player_setSpan = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_span.SpanNative)>>(
            'yandex_flutter_places_panorama_PanoramaPlayer_setSpan')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Player_reset = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_reset')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Player_historicalPanoramas = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaPlayer_historicalPanoramas')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Player_enableZoom = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_enableZoom')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Player_disableZoom = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_disableZoom')
    .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _Player_zoomEnabled = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_zoomEnabled')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Player_enableMove = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_enableMove')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Player_disableMove = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_disableMove')
    .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _Player_moveEnabled = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_moveEnabled')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Player_enableRotation = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_enableRotation')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Player_disableRotation = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_disableRotation')
    .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _Player_rotationEnabled = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_rotationEnabled')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Player_enableMarkers = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_enableMarkers')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Player_disableMarkers = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_disableMarkers')
    .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _Player_markersEnabled = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_markersEnabled')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Player_enableCompanies = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_enableCompanies')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Player_disableCompanies = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_disableCompanies')
    .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _Player_companiesEnabled = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_companiesEnabled')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Player_addPanoramaChangeListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_addPanoramaChangeListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Player_removePanoramaChangeListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_removePanoramaChangeListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Player_addDirectionChangeListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_addDirectionChangeListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Player_removeDirectionChangeListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_removeDirectionChangeListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Player_addSpanChangeListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_addSpanChangeListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Player_removeSpanChangeListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_removeSpanChangeListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Player_addCompanyTapListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_addCompanyTapListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Player_removeCompanyTapListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_removeCompanyTapListener')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Player_addErrorListener = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaPlayer_addErrorListener')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Player_removeErrorListener = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaPlayer_removeErrorListener')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Player_enableLoadingWheel = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_enableLoadingWheel')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Player_disableLoadingWheel = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_disableLoadingWheel')
    .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _Player_loadingWheelEnabled =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaPlayer_loadingWheelEnabled')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Player_onMemoryWarning = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_onMemoryWarning')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _PanoramaPlayer_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_places_panorama_PanoramaPlayer_set_')
    .asFunction(isLeaf: true);
