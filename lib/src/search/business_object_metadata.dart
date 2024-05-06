import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
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
import 'package:yandex_maps_mapkit/src/mapkit/localized_value.dart'
    as mapkit_localized_value;
import 'package:yandex_maps_mapkit/src/search/address.dart' as search_address;
import 'package:yandex_maps_mapkit/src/search/category.dart' as search_category;
import 'package:yandex_maps_mapkit/src/search/chain.dart' as search_chain;
import 'package:yandex_maps_mapkit/src/search/feature.dart' as search_feature;
import 'package:yandex_maps_mapkit/src/search/link.dart' as search_link;
import 'package:yandex_maps_mapkit/src/search/phone.dart' as search_phone;
import 'package:yandex_maps_mapkit/src/search/precision.dart'
    as search_precision;
import 'package:yandex_maps_mapkit/src/search/working_hours.dart'
    as search_working_hours;

part 'business_object_metadata.containers.dart';
part 'business_object_metadata.impl.dart';

/// Company working status.
enum SearchClosed {
  /// Default value.
  Unknown,

  /// A company which is closed forever.
  Permanent,

  /// A company that is closed temporarily.
  Temporary,
  ;
}

abstract final class SearchProperties implements ffi.Finalizable {
  factory SearchProperties(core.List<SearchPropertiesItem> items) =>
      SearchPropertiesImpl(items);

  core.List<SearchPropertiesItem> get items;

  @core.override
  core.int get hashCode => core.Object.hashAll([items]);

  @core.override
  core.bool operator ==(covariant SearchProperties other) {
    if (core.identical(this, other)) {
      return true;
    }
    return items == other.items;
  }

  @core.override
  core.String toString() {
    return "SearchProperties(items: $items)";
  }
}

final class SearchPropertiesItem {
  final core.String key;
  final core.String value;

  const SearchPropertiesItem({
    required this.key,
    required this.value,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([key, value]);

  @core.override
  core.bool operator ==(covariant SearchPropertiesItem other) {
    if (core.identical(this, other)) {
      return true;
    }
    return key == other.key && value == other.value;
  }

  @core.override
  core.String toString() {
    return "SearchPropertiesItem(key: $key, value: $value)";
  }
}

abstract final class SearchBusinessObjectMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory SearchBusinessObjectMetadata(
          core.String oid,
          core.String name,
          search_address.SearchAddress address,
          core.List<search_category.SearchCategory> categories,
          core.List<search_phone.SearchPhone> phones,
          search_working_hours.SearchWorkingHours? workingHours,
          search_precision.SearchPrecision? precision,
          core.List<search_feature.SearchFeature> features,
          search_feature.SearchFeatureSet? importantFeatures,
          core.List<search_link.SearchLink> links,
          mapkit_localized_value.LocalizedValue? distance,
          core.List<search_chain.SearchChain> chains,
          SearchClosed? closed,
          core.bool? unreliable,
          core.String? seoname,
          core.String? shortName,
          SearchProperties? properties,
          core.List<search_feature.SearchFeatureGroup> featureGroups,
          core.String? indoorLevel) =>
      SearchBusinessObjectMetadataImpl(
          oid,
          name,
          address,
          categories,
          phones,
          workingHours,
          precision,
          features,
          importantFeatures,
          links,
          distance,
          chains,
          closed,
          unreliable,
          seoname,
          shortName,
          properties,
          featureGroups,
          indoorLevel);

  core.String get oid;
  core.String get name;
  search_address.SearchAddress get address;
  core.List<search_category.SearchCategory> get categories;
  core.List<search_phone.SearchPhone> get phones;
  search_working_hours.SearchWorkingHours? get workingHours;
  search_precision.SearchPrecision? get precision;
  core.List<search_feature.SearchFeature> get features;
  search_feature.SearchFeatureSet? get importantFeatures;
  core.List<search_link.SearchLink> get links;
  mapkit_localized_value.LocalizedValue? get distance;
  core.List<search_chain.SearchChain> get chains;
  SearchClosed? get closed;
  core.bool? get unreliable;
  core.String? get seoname;
  core.String? get shortName;
  SearchProperties? get properties;
  core.List<search_feature.SearchFeatureGroup> get featureGroups;
  core.String? get indoorLevel;

  @core.override
  core.int get hashCode => core.Object.hashAll([
        oid,
        name,
        address,
        categories,
        phones,
        workingHours,
        precision,
        features,
        importantFeatures,
        links,
        distance,
        chains,
        closed,
        unreliable,
        seoname,
        shortName,
        properties,
        featureGroups,
        indoorLevel
      ]);

  @core.override
  core.bool operator ==(covariant SearchBusinessObjectMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return oid == other.oid &&
        name == other.name &&
        address == other.address &&
        categories == other.categories &&
        phones == other.phones &&
        workingHours == other.workingHours &&
        precision == other.precision &&
        features == other.features &&
        importantFeatures == other.importantFeatures &&
        links == other.links &&
        distance == other.distance &&
        chains == other.chains &&
        closed == other.closed &&
        unreliable == other.unreliable &&
        seoname == other.seoname &&
        shortName == other.shortName &&
        properties == other.properties &&
        featureGroups == other.featureGroups &&
        indoorLevel == other.indoorLevel;
  }

  @core.override
  core.String toString() {
    return "SearchBusinessObjectMetadata(oid: $oid, name: $name, address: $address, categories: $categories, phones: $phones, workingHours: $workingHours, precision: $precision, features: $features, importantFeatures: $importantFeatures, links: $links, distance: $distance, chains: $chains, closed: $closed, unreliable: $unreliable, seoname: $seoname, shortName: $shortName, properties: $properties, featureGroups: $featureGroups, indoorLevel: $indoorLevel)";
  }

  static final struct_factory.StructFactory<SearchBusinessObjectMetadata>
      factory = const _SearchBusinessObjectMetadataFactory();
}
