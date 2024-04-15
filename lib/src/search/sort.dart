import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'sort.containers.dart';

/// Sort type as returned in response.
@bindings_annotations.ContainerData(
    toNative: 'SearchSortType.toPointer',
    toPlatform: '(val) => SearchSortType.fromPointer(val, needFree: false)')
enum SearchSortType {
  /// Results are ordered by rank (or "goodness").
  Rank,

  /// Results are ordered by distance from some origin.
  Distance,
  ;

  /// @nodoc
  @internal
  static SearchSortType fromInt(core.int val) {
    return SearchSortType.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(SearchSortType e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static SearchSortType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(SearchSortType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// Sort origin types when results are ordered by distance (see
/// [SearchSortType]).
@bindings_annotations.ContainerData(
    toNative: 'SearchSortOrigin.toPointer',
    toPlatform: '(val) => SearchSortOrigin.fromPointer(val, needFree: false)')
enum SearchSortOrigin {
  /// Sort origin is a user position. User position can be set via {link
  /// SearchOptions}.
  User,

  /// Sort origin is a toponym extracted from the user query. For example
  /// this type can be set for queries like "cafe near Central Park".
  Query,

  /// Sort origin is directly specified by client. This type can be set for
  /// sessions with {link search.Session#setSortByDistance(const
  /// mapkit.geometry.Geometry)} called.
  Request,
  ;

  /// @nodoc
  @internal
  static SearchSortOrigin fromInt(core.int val) {
    return SearchSortOrigin.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(SearchSortOrigin e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static SearchSortOrigin? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(SearchSortOrigin? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class SearchSortNative extends ffi.Struct {
  @ffi.Int64()
  external core.int type;
  external ffi.Pointer<ffi.Void> origin;
}

final SearchSortNative Function(core.int, ffi.Pointer<ffi.Void>)
    _SearchSortNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchSortNative Function(
                        ffi.Int64, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSort_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchSort.toPointer',
    toPlatform: '(val) => SearchSort.fromPointer(val, needFree: false)')
class SearchSort {
  final SearchSortType type;
  final SearchSortOrigin? origin;

  const SearchSort(
    this.type, {
    this.origin,
  });

  /// @nodoc
  @internal
  SearchSort.fromNative(SearchSortNative native)
      : this(SearchSortType.fromInt(native.type),
            origin: SearchSortOrigin.fromPointer(native.origin));

  /// @nodoc
  @internal
  static SearchSortNative toNative(SearchSort c) {
    return _SearchSortNativeInit(
        SearchSortType.toInt(c.type), SearchSortOrigin.toPointer(c.origin));
  }

  /// @nodoc
  @internal
  static SearchSort? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchSort.fromNative(ptr.cast<SearchSortNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchSort? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchSortNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
