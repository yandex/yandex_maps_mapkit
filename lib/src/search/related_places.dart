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
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/search/working_hours.dart'
    as search_working_hours;

part 'related_places.containers.dart';
part 'related_places.impl.dart';

/// Related place information.
abstract final class SearchPlaceInfo implements ffi.Finalizable {
  factory SearchPlaceInfo(
          core.String name,
          core.String? uri,
          core.String? photoUrlTemplate,
          core.String? logId,
          mapkit_geometry_point.Point? point,
          core.String? category,
          core.String? shortName,
          core.double? rating,
          search_working_hours.SearchWorkingHours? workingHours,
          core.String? address,
          core.List<core.String> tag) =>
      SearchPlaceInfoImpl(name, uri, photoUrlTemplate, logId, point, category,
          shortName, rating, workingHours, address, tag);

  SearchPlaceInfo._();

  /// Place name.
  core.String get name;

  /// Place URI.
  ///
  core.String? get uri;

  /// Url template for place photo.
  ///
  core.String? get photoUrlTemplate;

  /// Server-generated log identifier.
  ///
  core.String? get logId;

  /// Place position.
  ///
  mapkit_geometry_point.Point? get point;

  /// Place category as a string.
  ///
  core.String? get category;

  /// Short name for a place.
  ///
  core.String? get shortName;

  /// Place rating as number in 0 to 10 range.
  ///
  core.double? get rating;

  /// Open hours for a place.
  ///
  search_working_hours.SearchWorkingHours? get workingHours;

  /// Formatted address for an organization.
  ///
  core.String? get address;

  /// Tags
  core.List<core.String> get tag;

  @core.override
  core.int get hashCode => core.Object.hashAll([
        name,
        uri,
        photoUrlTemplate,
        logId,
        point,
        category,
        shortName,
        rating,
        workingHours,
        address,
        tag
      ]);

  @core.override
  core.bool operator ==(covariant SearchPlaceInfo other) {
    if (core.identical(this, other)) {
      return true;
    }
    return name == other.name &&
        uri == other.uri &&
        photoUrlTemplate == other.photoUrlTemplate &&
        logId == other.logId &&
        point == other.point &&
        category == other.category &&
        shortName == other.shortName &&
        rating == other.rating &&
        workingHours == other.workingHours &&
        address == other.address &&
        tag == other.tag;
  }

  @core.override
  core.String toString() {
    return "SearchPlaceInfo(name: $name, uri: $uri, photoUrlTemplate: $photoUrlTemplate, logId: $logId, point: $point, category: $category, shortName: $shortName, rating: $rating, workingHours: $workingHours, address: $address, tag: $tag)";
  }
}
