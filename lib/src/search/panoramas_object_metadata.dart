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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/direction.dart'
    as mapkit_geometry_direction;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/span.dart'
    as mapkit_geometry_span;

part 'panoramas_object_metadata.containers.dart';
part 'panoramas_object_metadata.impl.dart';

/// Panorama info.

final class SearchPanorama {
  /// Machine readable panorama identifier.
  final core.String id;

  /// Direction of the panorama center.
  final mapkit_geometry_direction.Direction direction;

  /// H-Span and V-Span hints for the panorama player.
  final mapkit_geometry_span.Span span;

  /// Panorama point.
  final mapkit_geometry_point.Point point;

  const SearchPanorama(
    this.direction,
    this.span,
    this.point, {
    required this.id,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        id,
        direction,
        span,
        point,
      ]);

  @core.override
  core.bool operator ==(covariant SearchPanorama other) {
    if (core.identical(this, other)) {
      return true;
    }
    return id == other.id &&
        direction == other.direction &&
        span == other.span &&
        point == other.point;
  }

  @core.override
  core.String toString() {
    return "SearchPanorama(id: $id, direction: $direction, span: $span, point: $point, )";
  }
}

/// Snippet data to get panoramas info.
abstract final class SearchPanoramasObjectMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory SearchPanoramasObjectMetadata(core.List<SearchPanorama> panoramas) =>
      SearchPanoramasObjectMetadataImpl(panoramas);

  SearchPanoramasObjectMetadata._();

  /// List of panoramas.
  core.List<SearchPanorama> get panoramas;

  @core.override
  core.int get hashCode => core.Object.hashAll([panoramas]);

  @core.override
  core.bool operator ==(covariant SearchPanoramasObjectMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return panoramas == other.panoramas;
  }

  @core.override
  core.String toString() {
    return "SearchPanoramasObjectMetadata(panoramas: $panoramas)";
  }

  static final struct_factory.StructFactory<SearchPanoramasObjectMetadata>
      factory = const _SearchPanoramasObjectMetadataFactory();
}
