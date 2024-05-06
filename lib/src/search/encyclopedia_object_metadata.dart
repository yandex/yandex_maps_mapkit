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
import 'package:yandex_maps_mapkit/src/mapkit/attribution.dart'
    as mapkit_attribution;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;

part 'encyclopedia_object_metadata.containers.dart';
part 'encyclopedia_object_metadata.impl.dart';

abstract final class SearchEncyclopediaObjectMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory SearchEncyclopediaObjectMetadata(
          core.String? title,
          core.String? description,
          mapkit_attribution.Attribution? attribution) =>
      SearchEncyclopediaObjectMetadataImpl(title, description, attribution);

  core.String? get title;
  core.String? get description;
  mapkit_attribution.Attribution? get attribution;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([title, description, attribution]);

  @core.override
  core.bool operator ==(covariant SearchEncyclopediaObjectMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return title == other.title &&
        description == other.description &&
        attribution == other.attribution;
  }

  @core.override
  core.String toString() {
    return "SearchEncyclopediaObjectMetadata(title: $title, description: $description, attribution: $attribution)";
  }

  static final struct_factory.StructFactory<SearchEncyclopediaObjectMetadata>
      factory = const _SearchEncyclopediaObjectMetadataFactory();
}
