import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geo_object_collection.dart'
    as mapkit_geo_object_collection;
import 'package:yandex_maps_mapkit/src/search/search_metadata.dart'
    as search_search_metadata;

part 'response.containers.dart';
part 'response.impl.dart';

abstract final class SearchResponse implements ffi.Finalizable {
  factory SearchResponse(
          search_search_metadata.SearchMetadata metadata,
          mapkit_geo_object_collection.GeoObjectCollection collection,
          core.bool isOffline) =>
      SearchResponseImpl(metadata, collection, isOffline);

  search_search_metadata.SearchMetadata get metadata;
  mapkit_geo_object_collection.GeoObjectCollection get collection;
  core.bool get isOffline;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([metadata, collection, isOffline]);

  @core.override
  core.bool operator ==(covariant SearchResponse other) {
    if (core.identical(this, other)) {
      return true;
    }
    return metadata == other.metadata &&
        collection == other.collection &&
        isOffline == other.isOffline;
  }

  @core.override
  core.String toString() {
    return "SearchResponse(metadata: $metadata, collection: $collection, isOffline: $isOffline)";
  }
}
