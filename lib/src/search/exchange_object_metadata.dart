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
import 'package:yandex_maps_mapkit/src/mapkit/money.dart' as mapkit_money;

part 'exchange_object_metadata.containers.dart';
part 'exchange_object_metadata.impl.dart';

/// Single currency exchange prices.
abstract final class SearchCurrencyExchangeType implements ffi.Finalizable {
  factory SearchCurrencyExchangeType(core.String? name,
          mapkit_money.TaxiMoney? buy, mapkit_money.TaxiMoney? sell) =>
      SearchCurrencyExchangeTypeImpl(name, buy, sell);

  SearchCurrencyExchangeType._();

  /// ISO-4217 currency name, for example "USD" or "RUB" or "EUR".
  ///
  core.String? get name;

  /// Buy rate.
  ///
  mapkit_money.TaxiMoney? get buy;

  /// Sell rate.
  ///
  mapkit_money.TaxiMoney? get sell;

  @core.override
  core.int get hashCode => core.Object.hashAll([name, buy, sell]);

  @core.override
  core.bool operator ==(covariant SearchCurrencyExchangeType other) {
    if (core.identical(this, other)) {
      return true;
    }
    return name == other.name && buy == other.buy && sell == other.sell;
  }

  @core.override
  core.String toString() {
    return "SearchCurrencyExchangeType(name: $name, buy: $buy, sell: $sell)";
  }
}

/// Currency exchange snippet.
abstract final class SearchCurrencyExchangeMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory SearchCurrencyExchangeMetadata(
          core.List<SearchCurrencyExchangeType> currencies) =>
      SearchCurrencyExchangeMetadataImpl(currencies);

  SearchCurrencyExchangeMetadata._();

  /// Available currency exchange rates.
  core.List<SearchCurrencyExchangeType> get currencies;

  @core.override
  core.int get hashCode => core.Object.hashAll([currencies]);

  @core.override
  core.bool operator ==(covariant SearchCurrencyExchangeMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return currencies == other.currencies;
  }

  @core.override
  core.String toString() {
    return "SearchCurrencyExchangeMetadata(currencies: $currencies)";
  }

  static final struct_factory.StructFactory<SearchCurrencyExchangeMetadata>
      factory = const _SearchCurrencyExchangeMetadataFactory();
}
