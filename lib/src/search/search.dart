import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_mapkit/src/mapkit/map/map_window.dart'
    as mapkit_map_map_window;
import 'package:yandex_maps_mapkit/src/search/search_layer/search_layer.dart'
    as search_search_layer_search_layer;
import 'package:yandex_maps_mapkit/src/search/search_manager.dart'
    as search_search_manager;

part 'search.containers.dart';

@bindings_annotations.WeakInterface('search.Search')
@bindings_annotations.ContainerData(
    toNative: 'Search.getNativePtr',
    toPlatform:
        '(val) => Search.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class Search implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Search_free.cast());

  /// @nodoc
  Search.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  Search.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory Search.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Search? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _Search_check(ptr);
  }

  @internal

  /// @nodoc
  static Search? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return Search.fromNativePtr(ptr);
  }

  /// Gets the search_layer object.
  search_search_layer_search_layer.SearchLayer createSearchLayer(
      mapkit_map_map_window.MapWindow mapWindow) {
    return search_search_layer_search_layer.SearchLayer.fromNativePtr(
        _Search_createSearchLayer(
            ptr, mapkit_map_map_window.MapWindow.getNativePtr(mapWindow)));
  }

  /// Creates a manager that allows to search for various geographical
  /// objects using a variety of parameters.
  search_search_manager.SearchManager createSearchManager(
      search_search_manager.SearchManagerType searchManagerType) {
    return search_search_manager.SearchManager.fromNativePtr(
        _Search_createSearchManager(ptr,
            search_search_manager.SearchManagerType.toInt(searchManagerType)));
  }
}

final _Search_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_Search_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _Search_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_Search_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Search_createSearchLayer = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_Search_createSearchLayer')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>, core.int)
    _Search_createSearchManager = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Int64)>>(
            'yandex_flutter_search_Search_createSearchManager')
        .asFunction();

class SearchFactory {
  SearchFactory._();

  static Search get instance {
    return Search.fromNativePtr(_SearchFactory_get_instance());
  }
}

final ffi.Pointer<ffi.Void> Function() _SearchFactory_get_instance = lib.library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
        'yandex_flutter_search_SearchFactory_get_instance')
    .asFunction(isLeaf: true);
