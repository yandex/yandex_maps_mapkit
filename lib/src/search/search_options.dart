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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/search/data_types.dart'
    as search_data_types;
import 'package:yandex_maps_mapkit/src/search/filter_collection.dart'
    as search_filter_collection;

part 'search_options.containers.dart';
part 'search_options.impl.dart';

final class SearchOptions {
  final search_data_types.SearchType searchTypes;
  final core.int? resultPageSize;
  final search_data_types.SearchSnippet snippets;
  final mapkit_geometry_point.Point? userPosition;
  final core.String? origin;
  final core.bool geometry;
  final core.bool disableSpellingCorrection;
  final search_filter_collection.SearchFilterCollection? filters;

  const SearchOptions({
    this.searchTypes = search_data_types.SearchType.None,
    this.resultPageSize,
    this.snippets = search_data_types.SearchSnippet.None,
    this.userPosition,
    this.origin,
    this.geometry = false,
    this.disableSpellingCorrection = false,
    this.filters,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        searchTypes,
        resultPageSize,
        snippets,
        userPosition,
        origin,
        geometry,
        disableSpellingCorrection,
        filters
      ]);

  @core.override
  core.bool operator ==(covariant SearchOptions other) {
    if (core.identical(this, other)) {
      return true;
    }
    return searchTypes == other.searchTypes &&
        resultPageSize == other.resultPageSize &&
        snippets == other.snippets &&
        userPosition == other.userPosition &&
        origin == other.origin &&
        geometry == other.geometry &&
        disableSpellingCorrection == other.disableSpellingCorrection &&
        filters == other.filters;
  }

  @core.override
  core.String toString() {
    return "SearchOptions(searchTypes: $searchTypes, resultPageSize: $resultPageSize, snippets: $snippets, userPosition: $userPosition, origin: $origin, geometry: $geometry, disableSpellingCorrection: $disableSpellingCorrection, filters: $filters)";
  }
}
