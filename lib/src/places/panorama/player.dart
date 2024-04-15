import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_mapkit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_mapkit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/direction.dart'
    as mapkit_geometry_direction;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/span.dart'
    as mapkit_geometry_span;
import 'package:yandex_maps_mapkit/src/mapkit/logo/logo.dart'
    as mapkit_logo_logo;
import 'package:yandex_maps_mapkit/src/places/panorama/company_tap_info.dart'
    as places_panorama_company_tap_info;
import 'package:yandex_maps_mapkit/src/places/panorama/historical_panorama.dart'
    as places_panorama_historical_panorama;
import 'package:yandex_maps_mapkit/src/places/panorama/panorama_description.dart'
    as places_panorama_panorama_description;
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as runtime_error;

part 'player.containers.dart';

/// @nodoc
class _PanoramaChangeListenerWrapper implements ffi.Finalizable {
  _PanoramaChangeListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaChangeListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

/// Listener to handle the panorama being opened or changed.
abstract class PanoramaChangeListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<PanoramaChangeListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<PanoramaChangeListener,
      _PanoramaChangeListenerWrapper?>();

  /// Called if the panorama was opened or changed by the user. You can get
  /// the panoramaId by using the panoramaId() method.
  ///
  /// [player] Panorama player that sent the event.
  void onPanoramaChanged(PanoramaPlayer player);

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

  /// @nodoc
  @internal
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
  final listener = PanoramaChangeListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onPanoramaChanged(PanoramaPlayer.fromNativePtr(player));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

/// @nodoc
class _PanoramaDirectionChangeListenerWrapper implements ffi.Finalizable {
  _PanoramaDirectionChangeListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaDirectionChangeListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

/// Listener to handle the change in panorama direction.
abstract class PanoramaDirectionChangeListener {
  static final _pointerToListener = <ffi.Pointer<ffi.Void>,
      core.WeakReference<PanoramaDirectionChangeListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<
      PanoramaDirectionChangeListener,
      _PanoramaDirectionChangeListenerWrapper?>();

  /// Called if the panorama direction was changed by the user or by the
  /// setDirection() method.
  ///
  /// [player] Panorama player that sent the event.
  void onPanoramaDirectionChanged(PanoramaPlayer player);

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

  /// @nodoc
  @internal
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
                            ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_places_panorama_PanoramaDirectionChangeListener_new')
        .asFunction(isLeaf: true);

final _PanoramaDirectionChangeListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaDirectionChangeListener_free');
void _PanoramaDirectionChangeListener_onPanoramaDirectionChanged(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> player) {
  final listener =
      PanoramaDirectionChangeListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onPanoramaDirectionChanged(PanoramaPlayer.fromNativePtr(player));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

/// @nodoc
class _PanoramaSpanChangeListenerWrapper implements ffi.Finalizable {
  _PanoramaSpanChangeListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaSpanChangeListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

/// Listener to handle the change in panorama span.
abstract class PanoramaSpanChangeListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<PanoramaSpanChangeListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<PanoramaSpanChangeListener,
      _PanoramaSpanChangeListenerWrapper?>();

  /// Called if the user changed the zoom level or the span has been
  /// changed by the setSpan() method.
  ///
  /// [player] Panorama player that sent the event.
  void onPanoramaSpanChanged(PanoramaPlayer player);

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

  /// @nodoc
  @internal
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
  final listener = PanoramaSpanChangeListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onPanoramaSpanChanged(PanoramaPlayer.fromNativePtr(player));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

/// @nodoc
class _PanoramaCompanyTapListenerWrapper implements ffi.Finalizable {
  _PanoramaCompanyTapListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaCompanyTapListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

/// Listener to handle the taps on company text and icon.
abstract class PanoramaCompanyTapListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<PanoramaCompanyTapListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<PanoramaCompanyTapListener,
      _PanoramaCompanyTapListenerWrapper?>();

  /// Called if the user tapped on company icon or text below it.
  ///
  /// [player] Panorama player that sent the event.
  /// [info] Information about tapped company.
  void onCompanyTap(PanoramaPlayer player,
      places_panorama_company_tap_info.CompanyTapInfo info);

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

  /// @nodoc
  @internal
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
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>)>>) _PanoramaCompanyTapListener_new = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
        'yandex_flutter_places_panorama_PanoramaCompanyTapListener_new')
    .asFunction(isLeaf: true);

final _PanoramaCompanyTapListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaCompanyTapListener_free');
void _PanoramaCompanyTapListener_onCompanyTap(ffi.Pointer<ffi.Void> _ptr,
    ffi.Pointer<ffi.Void> player, ffi.Pointer<ffi.Void> info) {
  final listener = PanoramaCompanyTapListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onCompanyTap(PanoramaPlayer.fromNativePtr(player),
        places_panorama_company_tap_info.CompanyTapInfo.fromNativePtr(info));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

/// @nodoc
class _PanoramaErrorListenerWrapper implements ffi.Finalizable {
  _PanoramaErrorListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaErrorListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

/// Listener to handle possible errors.
abstract class PanoramaErrorListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<PanoramaErrorListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<PanoramaErrorListener, _PanoramaErrorListenerWrapper?>();

  /// Error notification listener for the panoramaOpen class. Called if the
  /// panorama could not be opened.
  void onPanoramaOpenError(PanoramaPlayer player, runtime_error.Error error);

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

  /// @nodoc
  @internal
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
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>)>>) _PanoramaErrorListener_new = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
        'yandex_flutter_places_panorama_PanoramaErrorListener_new')
    .asFunction(isLeaf: true);

final _PanoramaErrorListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaErrorListener_free');
void _PanoramaErrorListener_onPanoramaOpenError(ffi.Pointer<ffi.Void> _ptr,
    ffi.Pointer<ffi.Void> player, ffi.Pointer<ffi.Void> error) {
  final listener = PanoramaErrorListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onPanoramaOpenError(PanoramaPlayer.fromNativePtr(player),
        runtime_error.Error.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

/// Panorama player that is used to open panoramas.
@bindings_annotations.WeakInterface('places.panorama.Player')
@bindings_annotations.ContainerData(
    toNative: 'PanoramaPlayer.getNativePtr',
    toPlatform:
        '(val) => PanoramaPlayer.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class PanoramaPlayer implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_PanoramaPlayer_free.cast());

  /// @nodoc
  PanoramaPlayer.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  PanoramaPlayer.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory PanoramaPlayer.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaPlayer? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _PanoramaPlayer_check(ptr);
  }

  @internal

  /// @nodoc
  static PanoramaPlayer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaPlayer.fromNativePtr(ptr);
  }

  /// Yandex logo object.
  mapkit_logo_logo.Logo get logo {
    return mapkit_logo_logo.Logo.fromNativePtr(_Player_get_logo(ptr));
  }

  /// Opens the panorama with the given ID.
  ///
  /// [panoramaId] The panoramaId that specifies the panorama to open. You
  /// can get the panoramaId by using the PanoramaService methods.
  void openPanorama(core.String panoramaId) {
    _Player_openPanorama(ptr, to_native.toNativeString(panoramaId));
  }

  /// Opens the panorama from the local datasource.
  ///
  /// The class maintains a strong reference to the object in
  /// the 'tileImageProvider' parameter until it (the class) is invalidated.
  ///
  /// The class maintains a strong reference to the object in
  /// the 'iconImageProvider' parameter until it (the class) is invalidated.
  ///
  /// The class does not retain the object in the 'userPanoramaEventListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [panoramaDescription] Initialize this struct to open panorama
  /// [tileImageProvider] The tile datasource
  /// [iconImageProvider] The icon datasource
  /// [userPanoramaEventListener] The user panorama notification listener
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
        places_panorama_panorama_description.PanoramaDescription.getNativePtr(
            panoramaDescription),
        places_panorama_panorama_description.PanoramaTileImageFactory
            .getNativePtr(tileImageProvider),
        places_panorama_panorama_description.PanoramaIconImageFactory
            .getNativePtr(iconImageProvider),
        places_panorama_panorama_description.PanoramaUserPanoramaEventListener
            .getNativePtr(userPanoramaEventListener));
  }

  /// Opens the panorama from the network datasource.
  ///
  /// The class maintains a strong reference to the object in
  /// the 'tileUrlProvider' parameter until it (the class) is invalidated.
  ///
  /// The class maintains a strong reference to the object in
  /// the 'iconUrlProvider' parameter until it (the class) is invalidated.
  ///
  /// The class does not retain the object in the 'userPanoramaEventListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [panoramaDescription] Initialize this struct to open panorama
  /// [tileUrlProvider] The network tile datasource
  /// [iconUrlProvider] The netwokr icon datasource
  /// [userPanoramaEventListener] The user panorama notification listener
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
        places_panorama_panorama_description.PanoramaDescription.getNativePtr(
            panoramaDescription),
        places_panorama_panorama_description.PanoramaTileUrlProvider
            .getNativePtr(tileUrlProvider),
        places_panorama_panorama_description.PanoramaIconUrlProvider
            .getNativePtr(iconUrlProvider),
        places_panorama_panorama_description.PanoramaUserPanoramaEventListener
            .getNativePtr(userPanoramaEventListener));
  }

  /// Opened the panorama with the given ID.
  /// Return PanoramaId of the currently opened panorama. Empty if no
  /// panorama is open.
  core.String panoramaId() {
    return to_platform.toPlatformString(_Player_panoramaId(ptr));
  }

  /// Geo position of current panorama.
  /// Return Geo position of the currently opened panorama. Empty if no
  /// panorama is open.
  mapkit_geometry_point.Point position() {
    return mapkit_geometry_point.Point.fromNative(_Player_position(ptr));
  }

  /// Sets the view direction to the center of the given geo position.
  ///
  /// [position] The position to look at.
  void lookAt(mapkit_geometry_point.Point position) {
    _Player_lookAt(ptr, mapkit_geometry_point.Point.toNative(position));
  }

  /// View direction of the opened panorama.
  /// Return View direction of the opened panorama. Empty if no panorama is
  /// open.
  mapkit_geometry_direction.Direction direction() {
    return mapkit_geometry_direction.Direction.fromNative(
        _Player_direction(ptr));
  }

  /// Sets the view direction bearing and tilt.
  ///
  /// [direction] View direction.
  void setDirection(mapkit_geometry_direction.Direction direction) {
    _Player_setDirection(
        ptr, mapkit_geometry_direction.Direction.toNative(direction));
  }

  /// View span of the opened panorama.
  /// Return Current view span of the opened panorama. May be different
  /// from the span provided by the setSpan(span) method.
  mapkit_geometry_span.Span span() {
    return mapkit_geometry_span.Span.fromNative(_Player_span(ptr));
  }

  /// Sets the view area span. Invalid values are adjusted by the player to
  /// the closest valid values.
  ///
  /// [span] View area span. May be adjusted by the player.
  void setSpan(mapkit_geometry_span.Span span) {
    _Player_setSpan(ptr, mapkit_geometry_span.Span.toNative(span));
  }

  /// Closes the opened panorama and stops all player actions.
  void reset() {
    _Player_reset(ptr);
  }

  /// Return panoramas published earlier at the current panorama position.
  /// Result is updated on the [PanoramaChangeListener] callback
  core.List<places_panorama_historical_panorama.HistoricalPanorama>
      historicalPanoramas() {
    return places_panorama_historical_panorama
            .HistoricalPanoramaContainerExtension
        .toPlatformVector(_Player_historicalPanoramas(ptr));
  }

  /// Enables player zoom controls.
  void enableZoom() {
    _Player_enableZoom(ptr);
  }

  /// Disables player zoom controls.
  void disableZoom() {
    _Player_disableZoom(ptr);
  }

  /// Checks if zoom controls are enabled.
  core.bool zoomEnabled() {
    return _Player_zoomEnabled(ptr);
  }

  /// Shows transition arrows and allows switching panoramas.
  void enableMove() {
    _Player_enableMove(ptr);
  }

  /// Hides transition arrows and disallows switching panoramas.
  void disableMove() {
    _Player_disableMove(ptr);
  }

  /// Checks if switching panoramas is enabled.
  core.bool moveEnabled() {
    return _Player_moveEnabled(ptr);
  }

  /// Allows the user to rotate panoramas.
  void enableRotation() {
    _Player_enableRotation(ptr);
  }

  /// Disallows the user to rotate panoramas.
  void disableRotation() {
    _Player_disableRotation(ptr);
  }

  /// Checks if player rotation is enabled.
  core.bool rotationEnabled() {
    return _Player_rotationEnabled(ptr);
  }

  /// Allows markers (house numbers, railway stations, airports) to be
  /// shown.
  void enableMarkers() {
    _Player_enableMarkers(ptr);
  }

  /// Disallows markers (house numbers, railway stations, airports) to be
  /// shown.
  void disableMarkers() {
    _Player_disableMarkers(ptr);
  }

  /// Checks if markers are enabled.
  core.bool markersEnabled() {
    return _Player_markersEnabled(ptr);
  }

  /// Allows companies (company names and icons) to be shown.
  void enableCompanies() {
    _Player_enableCompanies(ptr);
  }

  /// Disallows companies (company names and icons) to be shown.
  void disableCompanies() {
    _Player_disableCompanies(ptr);
  }

  /// Checks if companies are enabled.
  core.bool companiesEnabled() {
    return _Player_companiesEnabled(ptr);
  }

  /// Adds a panorama change listener.
  ///
  /// The class does not retain the object in the 'panoramaChangeListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [panoramaChangeListener] Panorama change listener.
  void addPanoramaChangeListener(
      PanoramaChangeListener panoramaChangeListener) {
    _Player_addPanoramaChangeListener(
        ptr, PanoramaChangeListener.getNativePtr(panoramaChangeListener));
  }

  /// Removes the panorama change listener.
  ///
  /// [panoramaChangeListener] The panorama change listener to remove.
  void removePanoramaChangeListener(
      PanoramaChangeListener panoramaChangeListener) {
    _Player_removePanoramaChangeListener(
        ptr, PanoramaChangeListener.getNativePtr(panoramaChangeListener));
  }

  /// Adds direction listener.
  ///
  /// The class does not retain the object in the 'directionChangeListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [directionChangeListener] Panorama direction listener.
  void addDirectionChangeListener(
      PanoramaDirectionChangeListener directionChangeListener) {
    _Player_addDirectionChangeListener(ptr,
        PanoramaDirectionChangeListener.getNativePtr(directionChangeListener));
  }

  /// Removes the direction listener.
  ///
  /// [directionChangeListener] The panorama direction listener to remove.
  void removeDirectionChangeListener(
      PanoramaDirectionChangeListener directionChangeListener) {
    _Player_removeDirectionChangeListener(ptr,
        PanoramaDirectionChangeListener.getNativePtr(directionChangeListener));
  }

  /// Adds span listener.
  ///
  /// The class does not retain the object in the 'spanChangeListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [spanChangeListener] Panorama span listener.
  void addSpanChangeListener(PanoramaSpanChangeListener spanChangeListener) {
    _Player_addSpanChangeListener(
        ptr, PanoramaSpanChangeListener.getNativePtr(spanChangeListener));
  }

  /// Removes span listener.
  ///
  /// [spanChangeListener] The span listener to remove.
  void removeSpanChangeListener(PanoramaSpanChangeListener spanChangeListener) {
    _Player_removeSpanChangeListener(
        ptr, PanoramaSpanChangeListener.getNativePtr(spanChangeListener));
  }

  /// Adds company tap listener.
  ///
  /// The class does not retain the object in the 'companyTapListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [companyTapListener] Company tap listener.
  void addCompanyTapListener(PanoramaCompanyTapListener companyTapListener) {
    _Player_addCompanyTapListener(
        ptr, PanoramaCompanyTapListener.getNativePtr(companyTapListener));
  }

  /// Removes company tap listener.
  ///
  /// [companyTapListener] The company tap listener to remove.
  void removeCompanyTapListener(PanoramaCompanyTapListener companyTapListener) {
    _Player_removeCompanyTapListener(
        ptr, PanoramaCompanyTapListener.getNativePtr(companyTapListener));
  }

  /// Adds error listener.
  ///
  /// The class does not retain the object in the 'errorListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [errorListener] Listeners that notify when a panorama failed to open.
  void addErrorListener(PanoramaErrorListener errorListener) {
    _Player_addErrorListener(
        ptr, PanoramaErrorListener.getNativePtr(errorListener));
  }

  /// Removes error listener.
  ///
  /// [errorListener] The listener to remove.
  void removeErrorListener(PanoramaErrorListener errorListener) {
    _Player_removeErrorListener(
        ptr, PanoramaErrorListener.getNativePtr(errorListener));
  }

  /// Allows showing loading wheels.
  void enableLoadingWheel() {
    _Player_enableLoadingWheel(ptr);
  }

  /// Disallows showing loading wheels.
  void disableLoadingWheel() {
    _Player_disableLoadingWheel(ptr);
  }

  /// Checks if loading wheels can be shown while the panorama is opening.
  core.bool loadingWheelEnabled() {
    return _Player_loadingWheelEnabled(ptr);
  }

  /// Called when a memory warning happens.
  void onMemoryWarning() {
    _Player_onMemoryWarning(ptr);
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
