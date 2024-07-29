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
part 'search.impl.dart';

abstract class Search implements ffi.Finalizable {
  /// Gets the search_layer object.
  search_search_layer_search_layer.SearchLayer createSearchLayer(
      mapkit_map_map_window.MapWindow mapWindow);

  /// Creates a manager that allows to search for various geographical
  /// objects using a variety of parameters.
  search_search_manager.SearchManager createSearchManager(
      search_search_manager.SearchManagerType searchManagerType);

  core.bool isValid();
}

class SearchFactory {
  SearchFactory._();

  static Search get instance => _instance;
}
