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

part 'address.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchAddress.toPointer',
    toPlatform: '(val) => SearchAddress.fromPointer(val, needFree: false)')
class SearchAddress implements ffi.Finalizable {
  late final formattedAddress =
      to_platform.toPlatformString(_SearchAddress_get_formattedAddress(_ptr));
  late final additionalInfo = to_platform
      .toPlatformFromPointerString(_SearchAddress_get_additionalInfo(_ptr));
  late final postalCode = to_platform
      .toPlatformFromPointerString(_SearchAddress_get_postalCode(_ptr));
  late final countryCode = to_platform
      .toPlatformFromPointerString(_SearchAddress_get_countryCode(_ptr));
  late final components =
      SearchAddressComponentContainerExtension.toPlatformVector(
          _SearchAddress_get_components(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchAddress_free.cast());

  SearchAddress(
      core.String formattedAddress,
      core.String? additionalInfo,
      core.String? postalCode,
      core.String? countryCode,
      core.List<SearchAddressComponent> components)
      : this.fromNativePtr(_SearchAddress_init(
            to_native.toNativeString(formattedAddress),
            to_native.toNativePtrString(additionalInfo),
            to_native.toNativePtrString(postalCode),
            to_native.toNativePtrString(countryCode),
            SearchAddressComponentContainerExtension.toNativeVector(
                components)));

  /// @nodoc
  @internal
  SearchAddress.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchAddress? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchAddress? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchAddress.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchAddress? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SearchAddress.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchAddress? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchAddress_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchAddress_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAddress_clone')
        .asFunction(isLeaf: true);

final _SearchAddress_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchAddress_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _SearchAddress_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAddress_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchAddress_get_formattedAddress = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAddress_get_formattedAddress')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchAddress_get_additionalInfo = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAddress_get_additionalInfo')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchAddress_get_postalCode = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAddress_get_postalCode')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchAddress_get_countryCode = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAddress_get_countryCode')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchAddress_get_components = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAddress_get_components')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchAddressComponent.toPointer',
    toPlatform:
        '(val) => SearchAddressComponent.fromPointer(val, needFree: false)')
class SearchAddressComponent implements ffi.Finalizable {
  late final name =
      to_platform.toPlatformString(_SearchAddressComponent_get_name(_ptr));
  late final kinds =
      SearchAddressComponentKindContainerExtension.toPlatformVector(
          _SearchAddressComponent_get_kinds(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchAddressComponent_free.cast());

  SearchAddressComponent(
      core.String name, core.List<SearchAddressComponentKind> kinds)
      : this.fromNativePtr(_SearchAddressComponent_init(
            to_native.toNativeString(name),
            SearchAddressComponentKindContainerExtension.toNativeVector(
                kinds)));

  /// @nodoc
  @internal
  SearchAddressComponent.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchAddressComponent? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchAddressComponent? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchAddressComponent.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchAddressComponent? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchAddressComponent.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchAddressComponent? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchAddressComponent_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchAddressComponent_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_Address_SearchAddressComponent_clone')
        .asFunction(isLeaf: true);

final _SearchAddressComponent_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_Address_SearchAddressComponent_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString, ffi.Pointer<ffi.Void>)
    _SearchAddressComponent_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_Address_SearchAddressComponent_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchAddressComponent_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_Address_SearchAddressComponent_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchAddressComponent_get_kinds = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_Address_SearchAddressComponent_get_kinds')
        .asFunction(isLeaf: true);

/// An address component kind, for example, large administrative area.
@bindings_annotations.ContainerData(
    toNative: 'SearchAddressComponentKind.toPointer',
    toPlatform:
        '(val) => SearchAddressComponentKind.fromPointer(val, needFree: false)')
enum SearchAddressComponentKind {
  /// Unknown component kind
  Unknown,

  /// Country component.
  Country,

  /// Region component.
  Region,

  /// Province component.
  Province,

  /// Area component.
  Area,

  /// Locality component.
  Locality,

  /// District component.
  District,

  /// Street component.
  Street,

  /// House component.
  House,

  /// Entrance component.
  Entrance,

  /// Indoor level component.
  Level,

  /// Apartment component.
  Apartment,

  /// Line component.
  Route,

  /// Generic station component.
  Station,

  /// Metro station component.
  MetroStation,

  /// Railway station component.
  RailwayStation,

  /// Vegetation component.
  Vegetation,

  /// Hydro component.
  Hydro,

  /// Airport component.
  Airport,

  /// Kind for other toponyms, for example cemeteries or some other
  /// landmarks, which can't be easily described by kinds.
  Other,
  ;

  /// @nodoc
  @internal
  static SearchAddressComponentKind fromInt(core.int val) {
    return SearchAddressComponentKind.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(SearchAddressComponentKind e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static SearchAddressComponentKind? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(SearchAddressComponentKind? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}
