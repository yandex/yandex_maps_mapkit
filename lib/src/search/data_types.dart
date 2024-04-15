import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
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

/// Bitmask for requested search types.
@bindings_annotations.ContainerData(
    toNative: 'SearchType.toPointer',
    toPlatform: '(val) => SearchType.fromPointer(val, needFree: false)')
class SearchType {
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

  /// @nodoc
  @internal
  static SearchType fromInt(core.int val) {
    return SearchType(val);
  }

  /// @nodoc
  @internal
  static core.int toInt(SearchType e) {
    return e.value;
  }

  /// @nodoc
  @internal
  static SearchType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
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
@bindings_annotations.ContainerData(
    toNative: 'SearchSnippet.toPointer',
    toPlatform: '(val) => SearchSnippet.fromPointer(val, needFree: false)')
class SearchSnippet {
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

  /// @nodoc
  @internal
  static SearchSnippet fromInt(core.int val) {
    return SearchSnippet(val);
  }

  /// @nodoc
  @internal
  static core.int toInt(SearchSnippet e) {
    return e.value;
  }

  /// @nodoc
  @internal
  static SearchSnippet? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchSnippet? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}
