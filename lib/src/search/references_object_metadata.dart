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

part 'references_object_metadata.containers.dart';
part 'references_object_metadata.impl.dart';

abstract final class SearchReferenceType implements ffi.Finalizable {
  factory SearchReferenceType(core.String id, core.String scope) =>
      SearchReferenceTypeImpl(id, scope);

  core.String get id;
  core.String get scope;

  @core.override
  core.int get hashCode => core.Object.hashAll([id, scope]);

  @core.override
  core.bool operator ==(covariant SearchReferenceType other) {
    if (core.identical(this, other)) {
      return true;
    }
    return id == other.id && scope == other.scope;
  }

  @core.override
  core.String toString() {
    return "SearchReferenceType(id: $id, scope: $scope)";
  }
}

abstract final class SearchReferencesObjectMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory SearchReferencesObjectMetadata(
          core.List<SearchReferenceType> references) =>
      SearchReferencesObjectMetadataImpl(references);

  core.List<SearchReferenceType> get references;

  @core.override
  core.int get hashCode => core.Object.hashAll([references]);

  @core.override
  core.bool operator ==(covariant SearchReferencesObjectMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return references == other.references;
  }

  @core.override
  core.String toString() {
    return "SearchReferencesObjectMetadata(references: $references)";
  }

  static final struct_factory.StructFactory<SearchReferencesObjectMetadata>
      factory = const _SearchReferencesObjectMetadataFactory();
}
