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

part 'phone.containers.dart';
part 'phone.impl.dart';

/// Phone type
enum SearchPhoneType {
  /// Phone.
  Phone,

  /// Fax.
  Fax,

  /// Both phone and fax.
  PhoneFax,
  ;
}

final class SearchPhone {
  final SearchPhoneType type;
  final core.String formattedNumber;
  final core.String? info;
  final core.String? country;
  final core.String? prefix;
  final core.String? ext;
  final core.String? number;

  const SearchPhone(
    this.type, {
    required this.formattedNumber,
    this.info,
    this.country,
    this.prefix,
    this.ext,
    this.number,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll(
      [type, formattedNumber, info, country, prefix, ext, number]);

  @core.override
  core.bool operator ==(covariant SearchPhone other) {
    if (core.identical(this, other)) {
      return true;
    }
    return type == other.type &&
        formattedNumber == other.formattedNumber &&
        info == other.info &&
        country == other.country &&
        prefix == other.prefix &&
        ext == other.ext &&
        number == other.number;
  }

  @core.override
  core.String toString() {
    return "SearchPhone(type: $type, formattedNumber: $formattedNumber, info: $info, country: $country, prefix: $prefix, ext: $ext, number: $number)";
  }
}
