part of 'company_tap_info.dart';

@bindings_annotations.ContainerData(
    toNative: 'CompanyTapInfoImpl.toPointer',
    toPlatform: '(val) => CompanyTapInfoImpl.fromPointer(val, needFree: false)',
    platformType: 'CompanyTapInfo')
final class CompanyTapInfoImpl implements CompanyTapInfo {
  CompanyTapInfoImpl(
      core.String permalink, mapkit_screen_types.ScreenPoint screenPoint)
      : this.fromNativePtr(_CompanyTapInfo_init(
            to_native.toNativeString(permalink),
            mapkit_screen_types.ScreenPointImpl.toNative(screenPoint)));

  @core.override
  late final permalink =
      to_platform.toPlatformString(_CompanyTapInfo_get_permalink(_ptr));
  @core.override
  late final screenPoint = mapkit_screen_types.ScreenPointImpl.fromNative(
      _CompanyTapInfo_get_screenPoint(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_CompanyTapInfo_free.cast());

  CompanyTapInfoImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(CompanyTapInfo? obj) {
    return (obj as CompanyTapInfoImpl?)?._ptr ?? ffi.nullptr;
  }

  static CompanyTapInfo? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : CompanyTapInfoImpl.fromNativePtr(ptr);
  }

  static CompanyTapInfo? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = CompanyTapInfoImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(CompanyTapInfo? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _CompanyTapInfo_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _CompanyTapInfo_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_CompanyTapInfo_clone')
        .asFunction(isLeaf: true);

final _CompanyTapInfo_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_places_panorama_CompanyTapInfo_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString, mapkit_screen_types.ScreenPointNative)
    _CompanyTapInfo_init = lib
        .library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(native_types.NativeString,
                        mapkit_screen_types.ScreenPointNative)>>(
            'yandex_flutter_places_panorama_CompanyTapInfo_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _CompanyTapInfo_get_permalink = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_CompanyTapInfo_get_permalink')
        .asFunction(isLeaf: true);
final mapkit_screen_types.ScreenPointNative Function(ffi.Pointer<ffi.Void>)
    _CompanyTapInfo_get_screenPoint = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_screen_types.ScreenPointNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_CompanyTapInfo_get_screenPoint')
        .asFunction(isLeaf: true);
