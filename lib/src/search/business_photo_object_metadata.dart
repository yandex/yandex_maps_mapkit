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

part 'business_photo_object_metadata.containers.dart';
part 'business_photo_object_metadata.impl.dart';

abstract final class SearchBusinessPhotoObjectMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory SearchBusinessPhotoObjectMetadata(core.int count,
          core.List<SearchBusinessPhotoObjectMetadataPhoto> photos) =>
      SearchBusinessPhotoObjectMetadataImpl(count, photos);

  core.int get count;
  core.List<SearchBusinessPhotoObjectMetadataPhoto> get photos;

  @core.override
  core.int get hashCode => core.Object.hashAll([count, photos]);

  @core.override
  core.bool operator ==(covariant SearchBusinessPhotoObjectMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return count == other.count && photos == other.photos;
  }

  @core.override
  core.String toString() {
    return "SearchBusinessPhotoObjectMetadata(count: $count, photos: $photos)";
  }

  static final struct_factory.StructFactory<SearchBusinessPhotoObjectMetadata>
      factory = const _SearchBusinessPhotoObjectMetadataFactory();
}

abstract final class SearchBusinessPhotoObjectMetadataPhoto
    implements ffi.Finalizable {
  factory SearchBusinessPhotoObjectMetadataPhoto(core.String id,
          core.List<SearchBusinessPhotoObjectMetadataPhotoPhotoLink> links) =>
      SearchBusinessPhotoObjectMetadataPhotoImpl(id, links);

  core.String get id;
  core.List<SearchBusinessPhotoObjectMetadataPhotoPhotoLink> get links;

  @core.override
  core.int get hashCode => core.Object.hashAll([id, links]);

  @core.override
  core.bool operator ==(
      covariant SearchBusinessPhotoObjectMetadataPhoto other) {
    if (core.identical(this, other)) {
      return true;
    }
    return id == other.id && links == other.links;
  }

  @core.override
  core.String toString() {
    return "SearchBusinessPhotoObjectMetadataPhoto(id: $id, links: $links)";
  }
}

abstract final class SearchBusinessPhotoObjectMetadataPhotoPhotoLink
    implements ffi.Finalizable {
  factory SearchBusinessPhotoObjectMetadataPhotoPhotoLink(
          core.String? type, core.String uri) =>
      SearchBusinessPhotoObjectMetadataPhotoPhotoLinkImpl(type, uri);

  core.String? get type;
  core.String get uri;

  @core.override
  core.int get hashCode => core.Object.hashAll([type, uri]);

  @core.override
  core.bool operator ==(
      covariant SearchBusinessPhotoObjectMetadataPhotoPhotoLink other) {
    if (core.identical(this, other)) {
      return true;
    }
    return type == other.type && uri == other.uri;
  }

  @core.override
  core.String toString() {
    return "SearchBusinessPhotoObjectMetadataPhotoPhotoLink(type: $type, uri: $uri)";
  }
}
