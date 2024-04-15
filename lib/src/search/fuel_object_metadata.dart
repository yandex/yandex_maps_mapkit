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
import 'package:yandex_maps_mapkit/src/mapkit/attribution.dart'
    as mapkit_attribution;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;
import 'package:yandex_maps_mapkit/src/mapkit/money.dart' as mapkit_money;

part 'fuel_object_metadata.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchFuelType.toPointer',
    toPlatform: '(val) => SearchFuelType.fromPointer(val, needFree: false)')
class SearchFuelType implements ffi.Finalizable {
  late final name =
      to_platform.toPlatformFromPointerString(_SearchFuelType_get_name(_ptr));
  late final price =
      mapkit_money.TaxiMoney.fromPointer(_SearchFuelType_get_price(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchFuelType_free.cast());

  SearchFuelType(core.String? name, mapkit_money.TaxiMoney? price)
      : this.fromNativePtr(_SearchFuelType_init(
            to_native.toNativePtrString(name),
            mapkit_money.TaxiMoney.toPointer(price)));

  /// @nodoc
  @internal
  SearchFuelType.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchFuelType? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchFuelType? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchFuelType.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchFuelType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SearchFuelType.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchFuelType? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchFuelType_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelType_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelType_clone')
        .asFunction(isLeaf: true);

final _SearchFuelType_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchFuelType_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>) _SearchFuelType_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelType_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelType_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelType_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelType_get_price = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelType_get_price')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchFuelMetadata.toPointer',
    toPlatform: '(val) => SearchFuelMetadata.fromPointer(val, needFree: false)')
class SearchFuelMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final timestamp = to_platform
      .toPlatformFromPointerInt64(_SearchFuelMetadata_get_timestamp(_ptr));
  late final fuels = SearchFuelTypeContainerExtension.toPlatformVector(
      _SearchFuelMetadata_get_fuels(_ptr));
  late final attribution = mapkit_attribution.Attribution.fromPointer(
      _SearchFuelMetadata_get_attribution(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchFuelMetadata_free.cast());

  SearchFuelMetadata(core.int? timestamp, core.List<SearchFuelType> fuels,
      mapkit_attribution.Attribution? attribution)
      : this.fromNativePtr(_SearchFuelMetadata_init(
            to_native.toNativePtrInt64(timestamp),
            SearchFuelTypeContainerExtension.toNativeVector(fuels),
            mapkit_attribution.Attribution.toPointer(attribution)));

  /// @nodoc
  @internal
  SearchFuelMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchFuelMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchFuelMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchFuelMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchFuelMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchFuelMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchFuelMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchFuelMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _SearchFuelMetadataFactory get factory =>
      const _SearchFuelMetadataFactory();

  /// @nodoc
  @core.override
  _SearchFuelMetadataFactory get runtimeFactory =>
      const _SearchFuelMetadataFactory();
}

/// @nodoc
class _SearchFuelMetadataFactory
    extends struct_factory.StructFactory<SearchFuelMetadata> {
  const _SearchFuelMetadataFactory();

  @core.override
  SearchFuelMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchFuelMetadata.fromNativePtr(ptr);
  }

  @core.override
  SearchFuelMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchFuelMetadata.fromNativePtr(_SearchFuelMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchFuelMetadata obj) {
    return _SearchFuelMetadata_upcast(SearchFuelMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchFuelMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _SearchFuelMetadata_name = lib
    .library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_search_SearchFuelMetadata_name')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchFuelMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchFuelMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchFuelMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelMetadata_get_timestamp = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelMetadata_get_timestamp')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelMetadata_get_fuels = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelMetadata_get_fuels')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelMetadata_get_attribution = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelMetadata_get_attribution')
        .asFunction(isLeaf: true);
