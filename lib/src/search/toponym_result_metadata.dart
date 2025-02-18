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

part 'toponym_result_metadata.containers.dart';
part 'toponym_result_metadata.impl.dart';

/// Common info for response from toponym search.
abstract final class SearchToponymResultMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory SearchToponymResultMetadata(
          core.int found,
          SearchToponymResultMetadataResponseInfo? responseInfo,
          mapkit_geometry_point.Point? reversePoint) =>
      SearchToponymResultMetadataImpl(found, responseInfo, reversePoint);

  SearchToponymResultMetadata._();

  /// Approximate number of found objects.
  core.int get found;

  /// Additional response info.
  ///
  SearchToponymResultMetadataResponseInfo? get responseInfo;

  /// The search coordinates given via 'll' or parsed from 'text' (only in
  /// reverse mode).
  ///
  mapkit_geometry_point.Point? get reversePoint;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([found, responseInfo, reversePoint]);

  @core.override
  core.bool operator ==(covariant SearchToponymResultMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return found == other.found &&
        responseInfo == other.responseInfo &&
        reversePoint == other.reversePoint;
  }

  @core.override
  core.String toString() {
    return "SearchToponymResultMetadata(found: $found, responseInfo: $responseInfo, reversePoint: $reversePoint)";
  }

  static final struct_factory.StructFactory<SearchToponymResultMetadata>
      factory = const _SearchToponymResultMetadataFactory();
}

/// Search mode.
enum SearchToponymResultMetadataSearchMode {
  /// Search from text to toponym.
  Geocode,

  /// Search from coordinates to toponym.
  Reverse,
  ;
}

/// Additional response info.

final class SearchToponymResultMetadataResponseInfo {
  /// Search mode.
  final SearchToponymResultMetadataSearchMode mode;

  /// Search response accuracy.
  ///
  final core.double? accuracy;

  const SearchToponymResultMetadataResponseInfo(
    this.mode, {
    this.accuracy,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([mode, accuracy]);

  @core.override
  core.bool operator ==(
      covariant SearchToponymResultMetadataResponseInfo other) {
    if (core.identical(this, other)) {
      return true;
    }
    return mode == other.mode && accuracy == other.accuracy;
  }

  @core.override
  core.String toString() {
    return "SearchToponymResultMetadataResponseInfo(mode: $mode, accuracy: $accuracy)";
  }
}
