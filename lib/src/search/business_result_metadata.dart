import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
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
part 'business_result_metadata.impl.dart';

/// Common info for business search response.
abstract final class SearchBusinessResultMetadata implements ffi.Finalizable {
  factory SearchBusinessResultMetadata(
          core.List<search_category.SearchCategory> categories,
          core.List<search_chain.SearchChain> chains,
          core.List<search_business_filter.SearchBusinessFilter>
              businessFilters,
          search_business_filter.SearchFilterSet? importantFilters,
          core.List<core.String> pricesCurrencies) =>
      SearchBusinessResultMetadataImpl(categories, chains, businessFilters,
          importantFilters, pricesCurrencies);

  /// List of categories (also known as rubrics) present in response.
  /// Non-empty list means that the request was treated as a 'category
  /// request' by the server (for example requests like "where to eat",
  /// "cinema", and other).
  core.List<search_category.SearchCategory> get categories;

  /// List of chains present in response. Non-empty list means that the
  /// request was treaded as 'chain request' (for example "mcdonalds",
  /// "starbucks", and other).
  core.List<search_chain.SearchChain> get chains;

  /// List of applicable filters.
  core.List<search_business_filter.SearchBusinessFilter> get businessFilters;

  /// Collection of filters that probably are of utmost interest to the
  /// user.
  ///
  search_business_filter.SearchFilterSet? get importantFilters;

  /// Relevant currency for the prices
  core.List<core.String> get pricesCurrencies;

  @core.override
  core.int get hashCode => core.Object.hashAll([
        categories,
        chains,
        businessFilters,
        importantFilters,
        pricesCurrencies
      ]);

  @core.override
  core.bool operator ==(covariant SearchBusinessResultMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return categories == other.categories &&
        chains == other.chains &&
        businessFilters == other.businessFilters &&
        importantFilters == other.importantFilters &&
        pricesCurrencies == other.pricesCurrencies;
  }

  @core.override
  core.String toString() {
    return "SearchBusinessResultMetadata(categories: $categories, chains: $chains, businessFilters: $businessFilters, importantFilters: $importantFilters, pricesCurrencies: $pricesCurrencies)";
  }
}
