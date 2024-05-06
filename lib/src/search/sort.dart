import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'sort.containers.dart';
part 'sort.impl.dart';

/// Sort type as returned in response.
enum SearchSortType {
  /// Results are ordered by rank (or "goodness").
  Rank,

  /// Results are ordered by distance from some origin.
  Distance,
  ;
}

/// Sort origin types when results are ordered by distance (see
/// [SearchSortType]).
enum SearchSortOrigin {
  /// Sort origin is a user position. User position can be set via {link
  /// SearchOptions}.
  User,

  /// Sort origin is a toponym extracted from the user query. For example
  /// this type can be set for queries like "cafe near Central Park".
  Query,

  /// Sort origin is directly specified by client. This type can be set for
  /// sessions with {link search.Session#setSortByDistance(const
  /// mapkit.geometry.Geometry)} called.
  Request,
  ;
}

final class SearchSort {
  final SearchSortType type;
  final SearchSortOrigin? origin;

  const SearchSort(
    this.type, {
    this.origin,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([type, origin]);

  @core.override
  core.bool operator ==(covariant SearchSort other) {
    if (core.identical(this, other)) {
      return true;
    }
    return type == other.type && origin == other.origin;
  }

  @core.override
  core.String toString() {
    return "SearchSort(type: $type, origin: $origin)";
  }
}
