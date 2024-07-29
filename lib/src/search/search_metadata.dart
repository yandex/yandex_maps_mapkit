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
import 'package:yandex_maps_mapkit/src/mapkit/geo_object.dart'
    as mapkit_geo_object;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_mapkit/src/search/business_result_metadata.dart'
    as search_business_result_metadata;
import 'package:yandex_maps_mapkit/src/search/display_type.dart'
    as search_display_type;
import 'package:yandex_maps_mapkit/src/search/sort.dart' as search_sort;
import 'package:yandex_maps_mapkit/src/search/toponym_result_metadata.dart'
    as search_toponym_result_metadata;

part 'search_metadata.containers.dart';
part 'search_metadata.impl.dart';

/// Additional info for search response;
abstract final class SearchMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  factory SearchMetadata(
          core.int found,
          search_display_type.SearchDisplayType displayType,
          mapkit_geometry_geometry.BoundingBox? boundingBox,
          search_sort.SearchSort? sort,
          mapkit_geo_object.GeoObject? toponym,
          search_toponym_result_metadata.SearchToponymResultMetadata?
              toponymResultMetadata,
          search_business_result_metadata.SearchBusinessResultMetadata?
              businessResultMetadata,
          core.String reqid,
          core.String context,
          core.String requestText,
          core.String? correctedRequestText,
          mapkit_geometry_geometry.BoundingBox? requestBoundingBox) =>
      SearchMetadataImpl(
          found,
          displayType,
          boundingBox,
          sort,
          toponym,
          toponymResultMetadata,
          businessResultMetadata,
          reqid,
          context,
          requestText,
          correctedRequestText,
          requestBoundingBox);

  /// Approximate number of found objects.
  core.int get found;

  /// Display type.
  search_display_type.SearchDisplayType get displayType;

  /// Bounding box of the response as a whole.
  ///
  mapkit_geometry_geometry.BoundingBox? get boundingBox;

  /// Server-chosen sorting.
  ///
  search_sort.SearchSort? get sort;

  /// Geocoder response to the toponym part of the query.
  ///
  mapkit_geo_object.GeoObject? get toponym;

  /// Additional info for the response from toponym search.
  ///
  search_toponym_result_metadata.SearchToponymResultMetadata?
      get toponymResultMetadata;

  /// Additional info for the response from organization search.
  ///
  search_business_result_metadata.SearchBusinessResultMetadata?
      get businessResultMetadata;

  /// Server-generated request ID.
  core.String get reqid;

  /// Server-generated request context.
  core.String get context;

  /// Initial request text.
  core.String get requestText;

  /// Initial request text with correction of spelling mistakes.
  ///
  core.String? get correctedRequestText;

  /// Initial request bounding box.
  ///
  mapkit_geometry_geometry.BoundingBox? get requestBoundingBox;

  @core.override
  core.int get hashCode => core.Object.hashAll([
        found,
        displayType,
        boundingBox,
        sort,
        toponym,
        toponymResultMetadata,
        businessResultMetadata,
        reqid,
        context,
        requestText,
        correctedRequestText,
        requestBoundingBox
      ]);

  @core.override
  core.bool operator ==(covariant SearchMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return found == other.found &&
        displayType == other.displayType &&
        boundingBox == other.boundingBox &&
        sort == other.sort &&
        toponym == other.toponym &&
        toponymResultMetadata == other.toponymResultMetadata &&
        businessResultMetadata == other.businessResultMetadata &&
        reqid == other.reqid &&
        context == other.context &&
        requestText == other.requestText &&
        correctedRequestText == other.correctedRequestText &&
        requestBoundingBox == other.requestBoundingBox;
  }

  @core.override
  core.String toString() {
    return "SearchMetadata(found: $found, displayType: $displayType, boundingBox: $boundingBox, sort: $sort, toponym: $toponym, toponymResultMetadata: $toponymResultMetadata, businessResultMetadata: $businessResultMetadata, reqid: $reqid, context: $context, requestText: $requestText, correctedRequestText: $correctedRequestText, requestBoundingBox: $requestBoundingBox)";
  }

  static final struct_factory.StructFactory<SearchMetadata> factory =
      const _SearchMetadataFactory();
}
