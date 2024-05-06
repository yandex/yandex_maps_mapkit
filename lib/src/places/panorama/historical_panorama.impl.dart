part of 'historical_panorama.dart';

final class HistoricalPanoramaNative extends ffi.Struct {
  external native_types.NativeString name;
  external native_types.NativeString panoramaId;
  external native_types.NativeAbsTimestamp timestamp;
}

final HistoricalPanoramaNative Function(
  native_types.NativeString,
  native_types.NativeString,
  native_types.NativeAbsTimestamp,
) _HistoricalPanoramaNativeInit = lib.library
    .lookup<
        ffi.NativeFunction<
            HistoricalPanoramaNative Function(
              native_types.NativeString,
              native_types.NativeString,
              native_types.NativeAbsTimestamp,
            )>>('yandex_flutter_places_panorama_HistoricalPanorama_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'HistoricalPanoramaImpl.toPointer',
    toPlatform:
        '(val) => HistoricalPanoramaImpl.fromPointer(val, needFree: false)',
    platformType: 'HistoricalPanorama')
extension HistoricalPanoramaImpl on HistoricalPanorama {
  static HistoricalPanorama fromNative(HistoricalPanoramaNative native) {
    return HistoricalPanorama(
      name: to_platform.toPlatformString(native.name),
      panoramaId: to_platform.toPlatformString(native.panoramaId),
      to_platform.toPlatformAbsTimestamp(native.timestamp),
    );
  }

  static HistoricalPanoramaNative toNative(HistoricalPanorama obj) {
    return _HistoricalPanoramaNativeInit(
      to_native.toNativeString(obj.name),
      to_native.toNativeString(obj.panoramaId),
      to_native.toNativeAbsTimestamp(obj.timestamp),
    );
  }

  static HistoricalPanorama? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = HistoricalPanoramaImpl.fromNative(
        ptr.cast<HistoricalPanoramaNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(HistoricalPanorama? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<HistoricalPanoramaNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
