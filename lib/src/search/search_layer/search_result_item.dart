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
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geo_object.dart'
    as mapkit_geo_object;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/search/subtitle.dart' as search_subtitle;

part 'search_result_item.containers.dart';
part 'search_result_item.impl.dart';

/// Wrapper of the GeoObject in response, which makes it easy to get the
/// certain fields from GeoObject
abstract class SearchResultItem implements ffi.Finalizable {
  /// Id (constructed inside)
  core.String get id;

  /// Name (from GeoObject)
  core.String get name;

  /// CategoryClass (optional, first if there are several)
  ///
  core.String? get categoryClass;

  /// Wrapped GeoObject itself
  mapkit_geo_object.GeoObject get geoObject;

  /// Point from the GeoObject
  mapkit_geometry_point.Point get point;

  /// Does the GeoObject contain details for subtitle
  core.bool hasDetails();

  /// Details for the subtitle
  core.List<search_subtitle.SearchSubtitleItem> details();

  /// Is it a collection GeoObject
  core.bool isCollection();

  /// Is the organization closed now
  core.bool isClosed();

  /// Is the GeoObject found in offline search
  core.bool isOffline();
}
