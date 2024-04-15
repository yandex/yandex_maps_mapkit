import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/struct_factory.dart'
    as struct_factory;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;

part 'airship_tap_info.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'AirshipTapInfo.toPointer',
    toPlatform: '(val) => AirshipTapInfo.fromPointer(val, needFree: false)')
class AirshipTapInfo extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final panoramaId =
      to_platform.toPlatformString(_AirshipTapInfo_get_panoramaId(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_AirshipTapInfo_free.cast());

  AirshipTapInfo(core.String panoramaId)
      : this.fromNativePtr(
            _AirshipTapInfo_init(to_native.toNativeString(panoramaId)));

  /// @nodoc
  @internal
  AirshipTapInfo.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(AirshipTapInfo? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static AirshipTapInfo? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return AirshipTapInfo.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static AirshipTapInfo? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        AirshipTapInfo.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(AirshipTapInfo? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _AirshipTapInfo_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _AirshipTapInfoFactory get factory => const _AirshipTapInfoFactory();

  /// @nodoc
  @core.override
  _AirshipTapInfoFactory get runtimeFactory => const _AirshipTapInfoFactory();
}

/// @nodoc
class _AirshipTapInfoFactory
    extends struct_factory.StructFactory<AirshipTapInfo> {
  const _AirshipTapInfoFactory();

  @core.override
  AirshipTapInfo create(ffi.Pointer<ffi.Void> ptr) {
    return AirshipTapInfo.fromNativePtr(ptr);
  }

  @core.override
  AirshipTapInfo fromParent(ffi.Pointer<ffi.Void> ptr) {
    return AirshipTapInfo.fromNativePtr(_AirshipTapInfo_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(AirshipTapInfo obj) {
    return _AirshipTapInfo_upcast(AirshipTapInfo.getNativePtr(obj));
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

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _AirshipTapInfo_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_AirshipTapInfo_clone')
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
