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

part 'availability.containers.dart';
part 'availability.impl.dart';

final class SearchTimeRange {
  final core.bool? isTwentyFourHours;
  final core.int? from;
  final core.int? to;

  const SearchTimeRange({
    this.isTwentyFourHours,
    this.from,
    this.to,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([isTwentyFourHours, from, to]);

  @core.override
  core.bool operator ==(covariant SearchTimeRange other) {
    if (core.identical(this, other)) {
      return true;
    }
    return isTwentyFourHours == other.isTwentyFourHours &&
        from == other.from &&
        to == other.to;
  }

  @core.override
  core.String toString() {
    return "SearchTimeRange(isTwentyFourHours: $isTwentyFourHours, from: $from, to: $to)";
  }
}

/// A group of week days.
final class SearchDayGroup {
  /// Nothing.
  static const None = SearchDayGroup(0);

  /// Sunday.
  static const Sunday = SearchDayGroup(1);

  /// Monday.
  static const Monday = SearchDayGroup(1 << 1);

  /// Tuesday.
  static const Tuesday = SearchDayGroup(1 << 2);

  /// Wednesday.
  static const Wednesday = SearchDayGroup(1 << 3);

  /// Thursday.
  static const Thursday = SearchDayGroup(1 << 4);

  /// Friday.
  static const Friday = SearchDayGroup(1 << 5);

  /// Saturday.
  static const Saturday = SearchDayGroup(1 << 6);

  /// Weekdays from Monday to Friday.
  static const Weekdays =
      SearchDayGroup(1 << 1 | 1 << 2 | 1 << 3 | 1 << 4 | 1 << 5);

  /// Weekend days (Saturday and Sunday)
  static const Weekend = SearchDayGroup(1 << 6 | 1);

  /// Every day of the week
  static const Everyday =
      SearchDayGroup(1 << 1 | 1 << 2 | 1 << 3 | 1 << 4 | 1 << 5 | 1 << 6 | 1);

  const SearchDayGroup(this.value);

  final core.int value;

  SearchDayGroup operator |(SearchDayGroup other) {
    return SearchDayGroup(value | other.value);
  }

  SearchDayGroup operator &(SearchDayGroup other) {
    return SearchDayGroup(value & other.value);
  }

  SearchDayGroup operator ~() {
    return SearchDayGroup(~value);
  }

  @core.override
  core.int get hashCode => value;

  @core.override
  core.bool operator ==(covariant SearchDayGroup other) {
    return value == other.value;
  }

  @core.override
  core.String toString() {
    return "SearchDayGroup(value: ${value.toRadixString(16)})";
  }
}

abstract final class SearchAvailability implements ffi.Finalizable {
  factory SearchAvailability(
          SearchDayGroup days, core.List<SearchTimeRange> timeRanges) =>
      SearchAvailabilityImpl(days, timeRanges);

  SearchDayGroup get days;
  core.List<SearchTimeRange> get timeRanges;

  @core.override
  core.int get hashCode => core.Object.hashAll([days, timeRanges]);

  @core.override
  core.bool operator ==(covariant SearchAvailability other) {
    if (core.identical(this, other)) {
      return true;
    }
    return days == other.days && timeRanges == other.timeRanges;
  }

  @core.override
  core.String toString() {
    return "SearchAvailability(days: $days, timeRanges: $timeRanges)";
  }
}
