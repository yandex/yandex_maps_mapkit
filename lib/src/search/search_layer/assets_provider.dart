import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_mapkit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/image/image_provider.dart'
    as image_provider;
import 'package:yandex_maps_mapkit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_mapkit/src/mapkit/map/icon_style.dart'
    as mapkit_map_icon_style;
import 'package:yandex_maps_mapkit/src/search/search_layer/search_result_item.dart'
    as search_search_layer_search_result_item;

part 'assets_provider.containers.dart';

/// Possible placemark icon types
@bindings_annotations.ContainerData(
    toNative: 'PlacemarkIconType.toPointer',
    toPlatform: '(val) => PlacemarkIconType.fromPointer(val, needFree: false)')
enum PlacemarkIconType {
  /// No icon. This type will never be passed to `AssetsProvider` methods.
  None,

  /// Dust.
  Dust,

  /// Dust, search result is already visited.
  DustVisited,

  /// Icon.
  Icon,

  /// Icon, search result is already visited.
  IconVisited,

  /// One-line label to the left of the icon.
  LabelShortLeft,

  /// One-line label to the right of the icon.
  LabelShortRight,

  /// Detailed label to the left of the icon.
  LabelDetailedLeft,

  /// Detailed label to the right of the icon.
  LabelDetailedRight,

  /// Search result is selected.
  Selected,
  ;

  /// @nodoc
  @internal
  static PlacemarkIconType fromInt(core.int val) {
    return PlacemarkIconType.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(PlacemarkIconType e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static PlacemarkIconType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(PlacemarkIconType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class SizeNative extends ffi.Struct {
  @ffi.Double()
  external core.double width;
  @ffi.Double()
  external core.double height;
}

final SizeNative Function(core.double, core.double) _SizeNativeInit = lib
    .library
    .lookup<ffi.NativeFunction<SizeNative Function(ffi.Double, ffi.Double)>>(
        'yandex_flutter_search_search_layer_Size_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'Size.toPointer',
    toPlatform: '(val) => Size.fromPointer(val, needFree: false)')
class Size {
  final core.double width;
  final core.double height;

  const Size({
    required this.width,
    required this.height,
  });

  /// @nodoc
  @internal
  Size.fromNative(SizeNative native)
      : this(width: native.width, height: native.height);

  /// @nodoc
  @internal
  static SizeNative toNative(Size c) {
    return _SizeNativeInit(c.width, c.height);
  }

  /// @nodoc
  @internal
  static Size? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = Size.fromNative(ptr.cast<SizeNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(Size? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SizeNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
class _AssetsProviderWrapper implements ffi.Finalizable {
  _AssetsProviderWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer = ffi.NativeFinalizer(_AssetsProvider_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

/// Interface for providing images, image sizes and icon styles to the
/// search layer. Call with static_cast<int>(PlacemarkIconType) in all
/// methods.
abstract class AssetsProvider {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<AssetsProvider>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<AssetsProvider, _AssetsProviderWrapper?>();

  /// Returns an image for certain placemark type with given search result
  ///
  /// This method will be called on a background thread.
  core.Future<image_provider.ImageProvider> image(
      search_search_layer_search_result_item.SearchResultItem searchResult,
      core.int placemarkIconType);

  /// Returns the size of the icon of certain placemark type with given
  /// search result
  ///
  /// This method may be called on any thread. Its implementation must be thread-safe.
  Size size(
      search_search_layer_search_result_item.SearchResultItem searchResult,
      core.int placemarkIconType);

  /// Returns the icon style for certain placemark type with given search
  /// result. If obtainAdIcons mode is enabled, IconStyle.anchor will be
  /// replaced for advertisement pins
  ///
  /// This method may be called on any thread. Its implementation must be thread-safe.
  mapkit_map_icon_style.IconStyle iconStyle(
      search_search_layer_search_result_item.SearchResultItem searchResult,
      core.int placemarkIconType);

  /// Returns `true` if provider is able to provide images for given search
  /// result and placemark types of `LabelShortLeft`, `LabelShortRight`,
  /// `LabelDetailedLeft` and `LabelDetailedRight`. If `false` is returned
  /// then no label would be shown for this search result.
  ///
  /// This method may be called on any thread. Its implementation must be thread-safe.
  core.bool canProvideLabels(
      search_search_layer_search_result_item.SearchResultItem searchResult);

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(AssetsProvider obj) {
    final ptr = _AssetsProvider_new(
        ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>, ffi.Int)>(_AssetsProvider_image),
        ffi.Pointer.fromFunction<
            SizeNative Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
                ffi.Int)>(_AssetsProvider_size),
        ffi.Pointer.fromFunction<
            mapkit_map_icon_style.IconStyleNative Function(
                ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>,
                ffi.Int)>(_AssetsProvider_iconStyle),
        ffi.Pointer.fromFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
            _AssetsProvider_canProvideLabels, false));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _AssetsProviderWrapper(ptr);
    _AssetsProvidersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort(),
        nativeBinding.createAsyncExecutePort());

    return ptr;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(AssetsProvider? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(ffi.Pointer<ffi.Void>, core.int, core.int, core.int)
    _AssetsProvidersetSendPort = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64,
                        ffi.Int64, ffi.Int64)>>(
            'yandex_flutter_search_search_layer_AssetsProvider_setSendPort')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Int)>>, ffi.Pointer<ffi.NativeFunction<SizeNative Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Int)>>, ffi.Pointer<ffi.NativeFunction<mapkit_map_icon_style.IconStyleNative Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Int)>>, ffi.Pointer<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _AssetsProvider_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                                ffi.Pointer<ffi.Void>,
                                ffi.Pointer<ffi.Void>,
                                ffi.Pointer<ffi.Void>,
                                ffi.Int)>>,
                    ffi.Pointer<ffi.NativeFunction<SizeNative Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Int)>>,
                    ffi.Pointer<ffi.NativeFunction<mapkit_map_icon_style.IconStyleNative Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Int)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_search_search_layer_AssetsProvider_new')
        .asFunction(isLeaf: true);

final _AssetsProvider_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_AssetsProvider_free');
void _AssetsProvider_image(
    ffi.Pointer<ffi.Void> _ptr,
    ffi.Pointer<ffi.Void> _onResult,
    ffi.Pointer<ffi.Void> searchResult,
    core.int placemarkIconType) {
  final listener = AssetsProvider._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }

  listener
      .image(
          search_search_layer_search_result_item.SearchResultItem.fromNativePtr(
              searchResult),
          placemarkIconType)
      .then(
          (result) => _AssetsProviderimageInvokeOnResult(
              _onResult, to_native.toNativeImageProvider(result)),
          onError: (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
  });
}

final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _AssetsProviderimageInvokeOnResult = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_AssetsProvider_image_invokeOnResult')
    .asFunction(isLeaf: true);

SizeNative _AssetsProvider_size(ffi.Pointer<ffi.Void> _ptr,
    ffi.Pointer<ffi.Void> searchResult, core.int placemarkIconType) {
  final listener = AssetsProvider._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return Size.toNative(listener.size(
        search_search_layer_search_result_item.SearchResultItem.fromNativePtr(
            searchResult),
        placemarkIconType));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

mapkit_map_icon_style.IconStyleNative _AssetsProvider_iconStyle(
    ffi.Pointer<ffi.Void> _ptr,
    ffi.Pointer<ffi.Void> searchResult,
    core.int placemarkIconType) {
  final listener = AssetsProvider._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return mapkit_map_icon_style.IconStyle.toNative(listener.iconStyle(
        search_search_layer_search_result_item.SearchResultItem.fromNativePtr(
            searchResult),
        placemarkIconType));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

core.bool _AssetsProvider_canProvideLabels(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> searchResult) {
  final listener = AssetsProvider._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return listener.canProvideLabels(
        search_search_layer_search_result_item.SearchResultItem.fromNativePtr(
            searchResult));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}
