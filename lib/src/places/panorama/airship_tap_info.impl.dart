part of 'airship_tap_info.dart';

@bindings_annotations.ContainerData(
    toNative: 'AirshipTapInfoImpl.getNativePtr',
    toPlatform: '(val) => AirshipTapInfoImpl.fromPointer(val, needFree: false)',
    platformType: 'AirshipTapInfo')
final class AirshipTapInfoImpl extends AirshipTapInfo {
  AirshipTapInfoImpl(core.String panoramaId)
      : this.fromNativePtr(
            _AirshipTapInfo_init(to_native.toNativeString(panoramaId)));

  @core.override
  late final panoramaId =
      to_platform.toPlatformString(_AirshipTapInfo_get_panoramaId(_ptr));

  @core.override
  final _AirshipTapInfoFactory runtimeFactory = const _AirshipTapInfoFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_AirshipTapInfo_free.cast());

  AirshipTapInfoImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(AirshipTapInfo? obj) {
    return (obj as AirshipTapInfoImpl?)?._ptr ?? ffi.nullptr;
  }

  static AirshipTapInfo? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : AirshipTapInfoImpl.fromNativePtr(ptr);
  }

  static AirshipTapInfo? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = AirshipTapInfoImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _AirshipTapInfoFactory
    extends struct_factory.StructFactory<AirshipTapInfo> {
  const _AirshipTapInfoFactory();

  @core.override
  AirshipTapInfo create(ffi.Pointer<ffi.Void> ptr) {
    return AirshipTapInfoImpl.fromNativePtr(ptr);
  }

  @core.override
  AirshipTapInfo fromParent(ffi.Pointer<ffi.Void> ptr) {
    return AirshipTapInfoImpl.fromNativePtr(_AirshipTapInfo_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(AirshipTapInfo obj) {
    return _AirshipTapInfo_upcast(AirshipTapInfoImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _AirshipTapInfo_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _AirshipTapInfo_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_AirshipTapInfo_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _AirshipTapInfo_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_AirshipTapInfo_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _AirshipTapInfo_name = lib.library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_places_panorama_AirshipTapInfo_name')
    .asFunction(isLeaf: true);

final _AirshipTapInfo_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_places_panorama_AirshipTapInfo_free');

final ffi.Pointer<ffi.Void> Function(native_types.NativeString)
    _AirshipTapInfo_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(native_types.NativeString)>>(
            'yandex_flutter_places_panorama_AirshipTapInfo_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _AirshipTapInfo_get_panoramaId = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_AirshipTapInfo_get_panoramaId')
        .asFunction(isLeaf: true);
