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

/// The time interval used to compose availability info.
///
/// Can describe two kinds of intervals: 1. 24-hour interval
/// (`isTwentyFourHours` is true, `from` and `to` are not used). 2.
/// Smaller time interval (`isTwentyFourHours` is false, `from` and `to`
/// are set to the begin and end of the interval)

final class SearchTimeRange {
  /// All day (24 hours) time range marker.
  ///
  final core.bool? isTwentyFourHours;

  /// Interval start (seconds from midnight).
  ///
  final core.int? from;

  /// Interval end (seconds from midnight).
  ///
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

/// A single value of availability information.
///
/// Allows to describe business schedule for a group of days. For
/// example, an organization open on weekdays from 9 AM to 6 PM with a
/// lunch break from 1 PM to 2 PM can be described as a single
/// `Availability` with `days` equal to `DayGroup::Weekdays` and two time
/// ranges (9:00-13:00, 14:00-18:00). More complicated schedules will
/// require multiple `Availabilities`.
abstract final class SearchAvailability implements ffi.Finalizable {
  factory SearchAvailability(
          SearchDayGroup days, core.List<SearchTimeRange> timeRanges) =>
      SearchAvailabilityImpl(days, timeRanges);

  /// Days where time ranges are applicable
  SearchDayGroup get days;

  /// Ranges for open hours
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
