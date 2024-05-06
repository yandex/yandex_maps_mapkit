part of 'assets_provider.dart';

@bindings_annotations.ContainerData(
    toNative: 'PlacemarkIconTypeImpl.toPointer',
    toPlatform:
        '(val) => PlacemarkIconTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'PlacemarkIconType')
extension PlacemarkIconTypeImpl on PlacemarkIconType {
  static core.int toInt(PlacemarkIconType e) {
    return e.index;
  }

  static PlacemarkIconType fromInt(core.int val) {
    return PlacemarkIconType.values[val];
  }

  static PlacemarkIconType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(PlacemarkIconType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

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
    toNative: 'SizeImpl.toPointer',
    toPlatform: '(val) => SizeImpl.fromPointer(val, needFree: false)',
    platformType: 'Size')
extension SizeImpl on Size {
  static Size fromNative(SizeNative native) {
    return Size(width: native.width, height: native.height);
  }

  static SizeNative toNative(Size obj) {
    return _SizeNativeInit(obj.width, obj.height);
  }

  static Size? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SizeImpl.fromNative(ptr.cast<SizeNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(Size? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SizeNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class _AssetsProviderWrapper implements ffi.Finalizable {
  _AssetsProviderWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer = ffi.NativeFinalizer(_AssetsProvider_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension AssetsProviderImpl on AssetsProvider {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<AssetsProvider>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<AssetsProvider, _AssetsProviderWrapper?>();

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
  final listener = AssetsProviderImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }

  listener
      .image(
          search_search_layer_search_result_item.SearchResultItemImpl
              .fromNativePtr(searchResult),
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
  final listener = AssetsProviderImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return SizeImpl.toNative(listener.size(
        search_search_layer_search_result_item.SearchResultItemImpl
            .fromNativePtr(searchResult),
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
  final listener = AssetsProviderImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return mapkit_map_icon_style.IconStyleImpl.toNative(listener.iconStyle(
        search_search_layer_search_result_item.SearchResultItemImpl
            .fromNativePtr(searchResult),
        placemarkIconType));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

core.bool _AssetsProvider_canProvideLabels(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> searchResult) {
  final listener = AssetsProviderImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return listener.canProvideLabels(search_search_layer_search_result_item
        .SearchResultItemImpl.fromNativePtr(searchResult));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}
