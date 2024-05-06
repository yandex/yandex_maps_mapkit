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

  core.String get name;
  core.String? get uri;
  core.String? get photoUrlTemplate;
  core.String? get logId;
  mapkit_geometry_point.Point? get point;
  core.String? get category;
  core.String? get shortName;
  core.double? get rating;
  search_working_hours.SearchWorkingHours? get workingHours;
  core.String? get address;
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
