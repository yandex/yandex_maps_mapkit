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
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;
import 'package:yandex_maps_mapkit/src/search/related_places.dart'
    as search_related_places;

part 'related_places_object_metadata.containers.dart';
part 'related_places_object_metadata.impl.dart';

/// Snippet data to get related places info.
abstract final class SearchRelatedPlacesObjectMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory SearchRelatedPlacesObjectMetadata(
          core.List<search_related_places.SearchPlaceInfo> similarPlaces) =>
      SearchRelatedPlacesObjectMetadataImpl(similarPlaces);

  SearchRelatedPlacesObjectMetadata._();

  /// List of similar places.
  core.List<search_related_places.SearchPlaceInfo> get similarPlaces;

  @core.override
  core.int get hashCode => core.Object.hashAll([similarPlaces]);

  @core.override
  core.bool operator ==(covariant SearchRelatedPlacesObjectMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return similarPlaces == other.similarPlaces;
  }

  @core.override
  core.String toString() {
    return "SearchRelatedPlacesObjectMetadata(similarPlaces: $similarPlaces)";
  }

  static final struct_factory.StructFactory<SearchRelatedPlacesObjectMetadata>
      factory = const _SearchRelatedPlacesObjectMetadataFactory();
}
