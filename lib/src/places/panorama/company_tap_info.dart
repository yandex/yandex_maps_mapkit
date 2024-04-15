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
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/screen_types.dart'
    as mapkit_screen_types;

part 'company_tap_info.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'CompanyTapInfo.toPointer',
    toPlatform: '(val) => CompanyTapInfo.fromPointer(val, needFree: false)')
class CompanyTapInfo implements ffi.Finalizable {
  late final permalink =
      to_platform.toPlatformString(_CompanyTapInfo_get_permalink(_ptr));
  late final screenPoint = mapkit_screen_types.ScreenPoint.fromNative(
      _CompanyTapInfo_get_screenPoint(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_CompanyTapInfo_free.cast());

  CompanyTapInfo(
      core.String permalink, mapkit_screen_types.ScreenPoint screenPoint)
      : this.fromNativePtr(_CompanyTapInfo_init(
            to_native.toNativeString(permalink),
            mapkit_screen_types.ScreenPoint.toNative(screenPoint)));

  /// @nodoc
  @internal
  CompanyTapInfo.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(CompanyTapInfo? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static CompanyTapInfo? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return CompanyTapInfo.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static CompanyTapInfo? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        CompanyTapInfo.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
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
