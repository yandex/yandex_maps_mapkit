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
import 'package:yandex_maps_mapkit/src/mapkit/geo_object_collection.dart'
    as mapkit_geo_object_collection;
import 'package:yandex_maps_mapkit/src/search/search_metadata.dart'
    as search_search_metadata;

part 'response.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchResponse.toPointer',
    toPlatform: '(val) => SearchResponse.fromPointer(val, needFree: false)')
class SearchResponse implements ffi.Finalizable {
  late final metadata = search_search_metadata.SearchMetadata.fromNativePtr(
      _SearchResponse_get_metadata(_ptr));
  late final collection =
      mapkit_geo_object_collection.GeoObjectCollection.fromNativePtr(
          _SearchResponse_get_collection(_ptr));
  late final isOffline = _SearchResponse_get_isOffline(_ptr);

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchResponse_free.cast());

  SearchResponse(
      search_search_metadata.SearchMetadata metadata,
      mapkit_geo_object_collection.GeoObjectCollection collection,
      core.bool isOffline)
      : this.fromNativePtr(_SearchResponse_init(
            search_search_metadata.SearchMetadata.getNativePtr(metadata),
            mapkit_geo_object_collection.GeoObjectCollection.getNativePtr(
                collection),
            isOffline));

  /// @nodoc
  @internal
  SearchResponse.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchResponse? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchResponse? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchResponse.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchResponse? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SearchResponse.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchResponse? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchResponse_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchResponse_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchResponse_clone')
        .asFunction(isLeaf: true);

final _SearchResponse_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchResponse_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, core.bool)
    _SearchResponse_init = lib
        .library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Bool)>>('yandex_flutter_search_SearchResponse_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchResponse_get_metadata = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchResponse_get_metadata')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchResponse_get_collection = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchResponse_get_collection')
        .asFunction(isLeaf: true);
final core.bool Function(ffi.Pointer<ffi.Void>) _SearchResponse_get_isOffline =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchResponse_get_isOffline')
        .asFunction(isLeaf: true);
