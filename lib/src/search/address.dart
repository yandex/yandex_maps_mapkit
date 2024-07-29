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
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'address.containers.dart';
part 'address.impl.dart';

/// Contains structured address, formatted address, postal code and
/// country code.
///
/// Structured address is an ordered list of components (usually
/// administrative hierarchy). Formatted address is a full address as a
/// single string. Formatted address generally can't be obtained from
/// component names. Some components could be ignored (large
/// administrative region) or absent (office number).
abstract final class SearchAddress implements ffi.Finalizable {
  factory SearchAddress(
          core.String formattedAddress,
          core.String? additionalInfo,
          core.String? postalCode,
          core.String? countryCode,
          core.List<SearchAddressComponent> components) =>
      SearchAddressImpl(formattedAddress, additionalInfo, postalCode,
          countryCode, components);

  /// Human-readable address.
  core.String get formattedAddress;

  /// Additional address info.
  ///
  core.String? get additionalInfo;

  /// Postal/Zip code.
  ///
  core.String? get postalCode;

  /// Country code in ISO 3166-1 alpha-2 format (two-letter country code).
  ///
  core.String? get countryCode;

  /// Address component list, see [SearchAddressComponent], may be empty.
  core.List<SearchAddressComponent> get components;

  @core.override
  core.int get hashCode => core.Object.hashAll(
      [formattedAddress, additionalInfo, postalCode, countryCode, components]);

  @core.override
  core.bool operator ==(covariant SearchAddress other) {
    if (core.identical(this, other)) {
      return true;
    }
    return formattedAddress == other.formattedAddress &&
        additionalInfo == other.additionalInfo &&
        postalCode == other.postalCode &&
        countryCode == other.countryCode &&
        components == other.components;
  }

  @core.override
  core.String toString() {
    return "SearchAddress(formattedAddress: $formattedAddress, additionalInfo: $additionalInfo, postalCode: $postalCode, countryCode: $countryCode, components: $components)";
  }
}

/// Single address component.
///
/// Component represents a single entry in the administrative hierarchy
/// of the address.
abstract final class SearchAddressComponent implements ffi.Finalizable {
  factory SearchAddressComponent(
          core.String name, core.List<SearchAddressComponentKind> kinds) =>
      SearchAddressComponentImpl(name, kinds);

  /// Component name.
  core.String get name;

  /// Component kinds. May contain both general and specific kind, for
  /// example [SearchAddressComponentKind.Station] and
  /// [SearchAddressComponentKind.MetroStation].
  core.List<SearchAddressComponentKind> get kinds;

  @core.override
  core.int get hashCode => core.Object.hashAll([name, kinds]);

  @core.override
  core.bool operator ==(covariant SearchAddressComponent other) {
    if (core.identical(this, other)) {
      return true;
    }
    return name == other.name && kinds == other.kinds;
  }

  @core.override
  core.String toString() {
    return "SearchAddressComponent(name: $name, kinds: $kinds)";
  }
}

/// An address component kind, for example, large administrative area.
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
}
