import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/search/business_photo_object_metadata.dart'
    as search_business_photo_object_metadata;
import 'package:yandex_maps_mapkit/src/search/panoramas_object_metadata.dart'
    as search_panoramas_object_metadata;

part 'data_types.containers.dart';
part 'data_types.impl.dart';

/// Bitmask for requested search types.
final class SearchType {
  /// Default value: all types requested.
  static const None = SearchType(0);

  /// Toponyms.
  static const Geo = SearchType(1);

  /// Companies.
  static const Biz = SearchType(1 << 1);

  const SearchType(this.value);

  final core.int value;

  SearchType operator |(SearchType other) {
    return SearchType(value | other.value);
  }

  SearchType operator &(SearchType other) {
    return SearchType(value & other.value);
  }

  SearchType operator ~() {
    return SearchType(~value);
  }

  @core.override
  core.int get hashCode => value;

  @core.override
  core.bool operator ==(covariant SearchType other) {
    return value == other.value;
  }

  @core.override
  core.String toString() {
    return "SearchType(value: ${value.toRadixString(16)})";
  }
}

/// Requested snippets bitmask.
///
/// Snippets are additional pieces of information (possibly from
/// different services) which are not directly stored in object metadata
/// but may be requested separately based on client needs.
///
/// Different snippets are applicable to different objects: some of the
/// snippets can be provided only for toponyms, some for businesses and
/// some for all object types.
final class SearchSnippet {
  /// Default value: no snippets requested.
  static const None = SearchSnippet(0);

  /// Related photos snippet (can be requested for a business or toponym).
  /// See
  /// [search_business_photo_object_metadata.SearchBusinessPhotoObjectMetadata].
  static const Photos = SearchSnippet(1);

  /// Nearest panoramas to this point. See
  /// [search_panoramas_object_metadata.SearchPanoramasObjectMetadata].
  static const Panoramas = SearchSnippet(1 << 5);

  const SearchSnippet(this.value);

  final core.int value;

  SearchSnippet operator |(SearchSnippet other) {
    return SearchSnippet(value | other.value);
  }

  SearchSnippet operator &(SearchSnippet other) {
    return SearchSnippet(value & other.value);
  }

  SearchSnippet operator ~() {
    return SearchSnippet(~value);
  }

  @core.override
  core.int get hashCode => value;

  @core.override
  core.bool operator ==(covariant SearchSnippet other) {
    return value == other.value;
  }

  @core.override
  core.String toString() {
    return "SearchSnippet(value: ${value.toRadixString(16)})";
  }
}
