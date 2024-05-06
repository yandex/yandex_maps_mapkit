import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/search/filter_collection.dart'
    as search_filter_collection;

part 'filter_collection_builder.containers.dart';
part 'filter_collection_builder.impl.dart';

/// Builder for filter collection.
abstract class SearchFilterCollectionBuilder implements ffi.Finalizable {
  /// Adds boolean filter with given id to collection.
  ///
  /// [filterId] filter id to add.
  void addBooleanFilter(core.String filterId);

  /// Adds enum filter with given id and values to the collection.
  ///
  /// [filterId] filter id to add.
  /// [valueIds] list of value ids for the enum filter.
  void addEnumFilter({
    required core.String filterId,
    required core.List<core.String> valueIds,
  });

  /// Adds range filter with given id and limits to the collection.
  ///
  /// [filterId] filter id to add.
  /// [from] lower range limit.
  /// [to] upper range limit.
  void addRangeFilter({
    required core.String filterId,
    required core.double from,
    required core.double to,
  });

  /// Adds date filter with given id and limits to the collection. Limits
  /// are encoded as strings in YYYYMMDD format.
  ///
  /// [filterId] filter id to add.
  /// [from] lower range limit.
  /// [to] upper range limit.
  void addDateFilter({
    required core.String filterId,
    required core.String from,
    required core.String to,
  });

  /// Builds resulting collection.
  /// Return collection built from previously given filters.
  search_filter_collection.SearchFilterCollection build();
}

class SearchFilterCollectionUtils {
  SearchFilterCollectionUtils._();

  /// Creates new [SearchFilterCollectionBuilder].
  /// Return builder for [search_filter_collection.SearchFilterCollection].
  static SearchFilterCollectionBuilder createFilterCollectionBuilder() {
    return _createFilterCollectionBuilder();
  }
}
