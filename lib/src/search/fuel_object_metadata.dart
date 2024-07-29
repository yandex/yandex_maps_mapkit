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
import 'package:yandex_maps_mapkit/src/mapkit/attribution.dart'
    as mapkit_attribution;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;
import 'package:yandex_maps_mapkit/src/mapkit/money.dart' as mapkit_money;

part 'fuel_object_metadata.containers.dart';
part 'fuel_object_metadata.impl.dart';

/// Fuel name and price.
abstract final class SearchFuelType implements ffi.Finalizable {
  factory SearchFuelType(core.String? name, mapkit_money.TaxiMoney? price) =>
      SearchFuelTypeImpl(name, price);

  /// Fuel name.
  ///
  core.String? get name;

  /// Fuel price.
  ///
  mapkit_money.TaxiMoney? get price;

  @core.override
  core.int get hashCode => core.Object.hashAll([name, price]);

  @core.override
  core.bool operator ==(covariant SearchFuelType other) {
    if (core.identical(this, other)) {
      return true;
    }
    return name == other.name && price == other.price;
  }

  @core.override
  core.String toString() {
    return "SearchFuelType(name: $name, price: $price)";
  }
}

/// Fuel snippet.
abstract final class SearchFuelMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory SearchFuelMetadata(
          core.int? timestamp,
          core.List<SearchFuelType> fuels,
          mapkit_attribution.Attribution? attribution) =>
      SearchFuelMetadataImpl(timestamp, fuels, attribution);

  /// Snippet update time as UNIX timestamp.
  ///
  core.int? get timestamp;

  /// Fuel list.
  core.List<SearchFuelType> get fuels;

  /// Attribution information.
  ///
  mapkit_attribution.Attribution? get attribution;

  @core.override
  core.int get hashCode => core.Object.hashAll([timestamp, fuels, attribution]);

  @core.override
  core.bool operator ==(covariant SearchFuelMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return timestamp == other.timestamp &&
        fuels == other.fuels &&
        attribution == other.attribution;
  }

  @core.override
  core.String toString() {
    return "SearchFuelMetadata(timestamp: $timestamp, fuels: $fuels, attribution: $attribution)";
  }

  static final struct_factory.StructFactory<SearchFuelMetadata> factory =
      const _SearchFuelMetadataFactory();
}
