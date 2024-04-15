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
import 'package:yandex_maps_mapkit/src/mapkit/money.dart' as mapkit_money;

part 'exchange_object_metadata.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchCurrencyExchangeType.toPointer',
    toPlatform:
        '(val) => SearchCurrencyExchangeType.fromPointer(val, needFree: false)')
class SearchCurrencyExchangeType implements ffi.Finalizable {
  late final name = to_platform
      .toPlatformFromPointerString(_SearchCurrencyExchangeType_get_name(_ptr));
  late final buy = mapkit_money.TaxiMoney.fromPointer(
      _SearchCurrencyExchangeType_get_buy(_ptr));
  late final sell = mapkit_money.TaxiMoney.fromPointer(
      _SearchCurrencyExchangeType_get_sell(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchCurrencyExchangeType_free.cast());

  SearchCurrencyExchangeType(core.String? name, mapkit_money.TaxiMoney? buy,
      mapkit_money.TaxiMoney? sell)
      : this.fromNativePtr(_SearchCurrencyExchangeType_init(
            to_native.toNativePtrString(name),
            mapkit_money.TaxiMoney.toPointer(buy),
            mapkit_money.TaxiMoney.toPointer(sell)));

  /// @nodoc
  @internal
  SearchCurrencyExchangeType.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchCurrencyExchangeType? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchCurrencyExchangeType? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchCurrencyExchangeType.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchCurrencyExchangeType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchCurrencyExchangeType.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchCurrencyExchangeType? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchCurrencyExchangeType_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeType_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeType_clone')
        .asFunction(isLeaf: true);

final _SearchCurrencyExchangeType_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchCurrencyExchangeType_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeType_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeType_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeType_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeType_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeType_get_buy = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeType_get_buy')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeType_get_sell = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeType_get_sell')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchCurrencyExchangeMetadata.toPointer',
    toPlatform:
        '(val) => SearchCurrencyExchangeMetadata.fromPointer(val, needFree: false)')
class SearchCurrencyExchangeMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final currencies =
      SearchCurrencyExchangeTypeContainerExtension.toPlatformVector(
          _SearchCurrencyExchangeMetadata_get_currencies(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchCurrencyExchangeMetadata_free.cast());

  SearchCurrencyExchangeMetadata(
      core.List<SearchCurrencyExchangeType> currencies)
      : this.fromNativePtr(_SearchCurrencyExchangeMetadata_init(
            SearchCurrencyExchangeTypeContainerExtension.toNativeVector(
                currencies)));

  /// @nodoc
  @internal
  SearchCurrencyExchangeMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchCurrencyExchangeMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchCurrencyExchangeMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchCurrencyExchangeMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchCurrencyExchangeMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchCurrencyExchangeMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchCurrencyExchangeMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchCurrencyExchangeMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _SearchCurrencyExchangeMetadataFactory get factory =>
      const _SearchCurrencyExchangeMetadataFactory();

  /// @nodoc
  @core.override
  _SearchCurrencyExchangeMetadataFactory get runtimeFactory =>
      const _SearchCurrencyExchangeMetadataFactory();
}

/// @nodoc
class _SearchCurrencyExchangeMetadataFactory
    extends struct_factory.StructFactory<SearchCurrencyExchangeMetadata> {
  const _SearchCurrencyExchangeMetadataFactory();

  @core.override
  SearchCurrencyExchangeMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchCurrencyExchangeMetadata.fromNativePtr(ptr);
  }

  @core.override
  SearchCurrencyExchangeMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchCurrencyExchangeMetadata.fromNativePtr(
        _SearchCurrencyExchangeMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchCurrencyExchangeMetadata obj) {
    return _SearchCurrencyExchangeMetadata_upcast(
        SearchCurrencyExchangeMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchCurrencyExchangeMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function()
    _SearchCurrencyExchangeMetadata_name = lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchCurrencyExchangeMetadata_name')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchCurrencyExchangeMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchCurrencyExchangeMetadata_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchCurrencyExchangeMetadata_get_currencies = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchCurrencyExchangeMetadata_get_currencies')
    .asFunction(isLeaf: true);
