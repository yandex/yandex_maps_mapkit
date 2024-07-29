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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/search/address.dart' as search_address;
import 'package:yandex_maps_mapkit/src/search/precision.dart'
    as search_precision;

part 'toponym_object_metadata.containers.dart';
part 'toponym_object_metadata.impl.dart';

/// Additional data for toponym objects.
abstract final class SearchToponymObjectMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory SearchToponymObjectMetadata(
          search_address.SearchAddress address,
          search_precision.SearchPrecision? precision,
          core.String? formerName,
          mapkit_geometry_point.Point balloonPoint,
          core.String? id) =>
      SearchToponymObjectMetadataImpl(
          address, precision, formerName, balloonPoint, id);

  /// Structured toponym address
  search_address.SearchAddress get address;

  /// Toponym precision.
  ///
  search_precision.SearchPrecision? get precision;

  /// Former name for toponym if any.
  ///
  core.String? get formerName;

  /// Point where balloon for the toponym should be shown. Differs for
  /// direct and reverse search modes: Direct mode -- toponym center.
  /// Reverse mode -- toponym nearest point to the given coordinates.
  mapkit_geometry_point.Point get balloonPoint;

  /// Persistent toponym id (available for Yandex-owned regions).
  ///
  core.String? get id;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([address, precision, formerName, balloonPoint, id]);

  @core.override
  core.bool operator ==(covariant SearchToponymObjectMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return address == other.address &&
        precision == other.precision &&
        formerName == other.formerName &&
        balloonPoint == other.balloonPoint &&
        id == other.id;
  }

  @core.override
  core.String toString() {
    return "SearchToponymObjectMetadata(address: $address, precision: $precision, formerName: $formerName, balloonPoint: $balloonPoint, id: $id)";
  }

  static final struct_factory.StructFactory<SearchToponymObjectMetadata>
      factory = const _SearchToponymObjectMetadataFactory();
}
