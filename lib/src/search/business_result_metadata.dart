import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/search/business_filter.dart'
    as search_business_filter;
import 'package:yandex_maps_mapkit/src/search/category.dart' as search_category;
import 'package:yandex_maps_mapkit/src/search/chain.dart' as search_chain;

part 'business_result_metadata.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessResultMetadata.toPointer',
    toPlatform:
        '(val) => SearchBusinessResultMetadata.fromPointer(val, needFree: false)')
class SearchBusinessResultMetadata implements ffi.Finalizable {
  late final categories =
      search_category.SearchCategoryContainerExtension.toPlatformVector(
          _SearchBusinessResultMetadata_get_categories(_ptr));
  late final chains =
      search_chain.SearchChainContainerExtension.toPlatformVector(
          _SearchBusinessResultMetadata_get_chains(_ptr));
  late final businessFilters =
      search_business_filter.SearchBusinessFilterContainerExtension
          .toPlatformVector(
              _SearchBusinessResultMetadata_get_businessFilters(_ptr));
  late final importantFilters =
      search_business_filter.SearchFilterSet.fromOptionalPtr(
          _SearchBusinessResultMetadata_get_importantFilters(_ptr));
  late final pricesCurrencies = to_platform
      .toVectorString(_SearchBusinessResultMetadata_get_pricesCurrencies(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchBusinessResultMetadata_free.cast());

  SearchBusinessResultMetadata(
      core.List<search_category.SearchCategory> categories,
      core.List<search_chain.SearchChain> chains,
      core.List<search_business_filter.SearchBusinessFilter> businessFilters,
      search_business_filter.SearchFilterSet? importantFilters,
      core.List<core.String> pricesCurrencies)
      : this.fromNativePtr(_SearchBusinessResultMetadata_init(
            search_category.SearchCategoryContainerExtension.toNativeVector(
                categories),
            search_chain.SearchChainContainerExtension.toNativeVector(chains),
            search_business_filter.SearchBusinessFilterContainerExtension
                .toNativeVector(businessFilters),
            search_business_filter.SearchFilterSet.getNativePtr(
                importantFilters),
            to_native.toNativeVectorString(pricesCurrencies)));

  /// @nodoc
  @internal
  SearchBusinessResultMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchBusinessResultMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchBusinessResultMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchBusinessResultMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchBusinessResultMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchBusinessResultMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchBusinessResultMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchBusinessResultMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessResultMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessResultMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchBusinessResultMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchBusinessResultMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _SearchBusinessResultMetadata_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessResultMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessResultMetadata_get_categories = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessResultMetadata_get_categories')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessResultMetadata_get_chains = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessResultMetadata_get_chains')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchBusinessResultMetadata_get_businessFilters = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessResultMetadata_get_businessFilters')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchBusinessResultMetadata_get_importantFilters = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessResultMetadata_get_importantFilters')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchBusinessResultMetadata_get_pricesCurrencies = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessResultMetadata_get_pricesCurrencies')
    .asFunction(isLeaf: true);
