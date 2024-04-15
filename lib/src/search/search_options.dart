import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/search/data_types.dart'
    as search_data_types;
import 'package:yandex_maps_mapkit/src/search/filter_collection.dart'
    as search_filter_collection;

part 'search_options.containers.dart';

/// @nodoc
final class SearchOptionsNative extends ffi.Struct {
  @ffi.Int64()
  external core.int searchTypes;
  external ffi.Pointer<ffi.Void> resultPageSize;
  @ffi.Int64()
  external core.int snippets;
  external ffi.Pointer<ffi.Void> userPosition;
  external ffi.Pointer<ffi.Void> origin;
  @ffi.Bool()
  external core.bool geometry;
  @ffi.Bool()
  external core.bool disableSpellingCorrection;
  external ffi.Pointer<ffi.Void> filters;
}

final SearchOptionsNative Function(
        core.int,
        ffi.Pointer<ffi.Void>,
        core.int,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        core.bool,
        core.bool,
        ffi.Pointer<ffi.Void>) _SearchOptionsNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchOptionsNative Function(
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>,
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchOptions_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchOptions.toPointer',
    toPlatform: '(val) => SearchOptions.fromPointer(val, needFree: false)')
class SearchOptions {
  final search_data_types.SearchType searchTypes;
  final core.int? resultPageSize;
  final search_data_types.SearchSnippet snippets;
  final mapkit_geometry_point.Point? userPosition;
  final core.String? origin;
  final core.bool geometry;
  final core.bool disableSpellingCorrection;
  final search_filter_collection.SearchFilterCollection? filters;

  const SearchOptions({
    this.searchTypes = search_data_types.SearchType.None,
    this.resultPageSize,
    this.snippets = search_data_types.SearchSnippet.None,
    this.userPosition,
    this.origin,
    this.geometry = false,
    this.disableSpellingCorrection = false,
    this.filters,
  });

  /// @nodoc
  @internal
  SearchOptions.fromNative(SearchOptionsNative native)
      : this(
            searchTypes:
                search_data_types.SearchType.fromInt(native.searchTypes),
            resultPageSize:
                to_platform.toPlatformFromPointerUint32(native.resultPageSize),
            snippets: search_data_types.SearchSnippet.fromInt(native.snippets),
            userPosition:
                mapkit_geometry_point.Point.fromPointer(native.userPosition),
            origin: to_platform.toPlatformFromPointerString(native.origin),
            geometry: native.geometry,
            disableSpellingCorrection: native.disableSpellingCorrection,
            filters:
                search_filter_collection.SearchFilterCollection.fromOptionalPtr(
                    native.filters));

  /// @nodoc
  @internal
  static SearchOptionsNative toNative(SearchOptions c) {
    return _SearchOptionsNativeInit(
        search_data_types.SearchType.toInt(c.searchTypes),
        to_native.toNativePtrUint32(c.resultPageSize),
        search_data_types.SearchSnippet.toInt(c.snippets),
        mapkit_geometry_point.Point.toPointer(c.userPosition),
        to_native.toNativePtrString(c.origin),
        c.geometry,
        c.disableSpellingCorrection,
        search_filter_collection.SearchFilterCollection.getNativePtr(
            c.filters));
  }

  /// @nodoc
  @internal
  static SearchOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SearchOptions.fromNative(ptr.cast<SearchOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchOptionsNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
