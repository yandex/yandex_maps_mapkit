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
import 'package:yandex_maps_mapkit/src/mapkit/time.dart' as mapkit_time;

part 'showtimes_object_metadata.containers.dart';
part 'showtimes_object_metadata.impl.dart';

/// Session details.
abstract final class SearchShowtime implements ffi.Finalizable {
  factory SearchShowtime(mapkit_time.Time startTime,
          mapkit_money.TaxiMoney? price, core.String? ticketId) =>
      SearchShowtimeImpl(startTime, price, ticketId);

  SearchShowtime._();

  /// Session start time.
  mapkit_time.Time get startTime;

  /// Ticket price.
  ///
  mapkit_money.TaxiMoney? get price;

  /// Ticket id.
  ///
  core.String? get ticketId;

  @core.override
  core.int get hashCode => core.Object.hashAll([startTime, price, ticketId]);

  @core.override
  core.bool operator ==(covariant SearchShowtime other) {
    if (core.identical(this, other)) {
      return true;
    }
    return startTime == other.startTime &&
        price == other.price &&
        ticketId == other.ticketId;
  }

  @core.override
  core.String toString() {
    return "SearchShowtime(startTime: $startTime, price: $price, ticketId: $ticketId)";
  }
}

/// Event schedule snippet.
abstract final class SearchShowtimesObjectMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory SearchShowtimesObjectMetadata(
          core.String title, core.List<SearchShowtime> showtimes) =>
      SearchShowtimesObjectMetadataImpl(title, showtimes);

  SearchShowtimesObjectMetadata._();

  /// Event title.
  core.String get title;

  /// List of showtimes.
  core.List<SearchShowtime> get showtimes;

  @core.override
  core.int get hashCode => core.Object.hashAll([title, showtimes]);

  @core.override
  core.bool operator ==(covariant SearchShowtimesObjectMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return title == other.title && showtimes == other.showtimes;
  }

  @core.override
  core.String toString() {
    return "SearchShowtimesObjectMetadata(title: $title, showtimes: $showtimes)";
  }

  static final struct_factory.StructFactory<SearchShowtimesObjectMetadata>
      factory = const _SearchShowtimesObjectMetadataFactory();
}
