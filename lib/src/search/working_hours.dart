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
import 'package:yandex_maps_mapkit/src/search/availability.dart'
    as search_availability;

part 'working_hours.containers.dart';
part 'working_hours.impl.dart';

abstract final class SearchState implements ffi.Finalizable {
  factory SearchState(core.bool? isOpenNow, core.String? text,
          core.String? shortText, core.List<core.String> tags) =>
      SearchStateImpl(isOpenNow, text, shortText, tags);

  core.bool? get isOpenNow;
  core.String? get text;
  core.String? get shortText;
  core.List<core.String> get tags;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([isOpenNow, text, shortText, tags]);

  @core.override
  core.bool operator ==(covariant SearchState other) {
    if (core.identical(this, other)) {
      return true;
    }
    return isOpenNow == other.isOpenNow &&
        text == other.text &&
        shortText == other.shortText &&
        tags == other.tags;
  }

  @core.override
  core.String toString() {
    return "SearchState(isOpenNow: $isOpenNow, text: $text, shortText: $shortText, tags: $tags)";
  }
}

abstract final class SearchWorkingHours implements ffi.Finalizable {
  factory SearchWorkingHours(
          core.String text,
          core.List<search_availability.SearchAvailability> availabilities,
          SearchState? state) =>
      SearchWorkingHoursImpl(text, availabilities, state);

  core.String get text;
  core.List<search_availability.SearchAvailability> get availabilities;
  SearchState? get state;

  @core.override
  core.int get hashCode => core.Object.hashAll([text, availabilities, state]);

  @core.override
  core.bool operator ==(covariant SearchWorkingHours other) {
    if (core.identical(this, other)) {
      return true;
    }
    return text == other.text &&
        availabilities == other.availabilities &&
        state == other.state;
  }

  @core.override
  core.String toString() {
    return "SearchWorkingHours(text: $text, availabilities: $availabilities, state: $state)";
  }
}
