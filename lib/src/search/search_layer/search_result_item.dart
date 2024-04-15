import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geo_object.dart'
    as mapkit_geo_object;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/search/subtitle.dart' as search_subtitle;

part 'search_result_item.containers.dart';

/// Wrapper of the GeoObject in response, which makes it easy to get the
/// certain fields from GeoObject
@bindings_annotations.ContainerData(
    toNative: 'SearchResultItem.getNativePtr',
    toPlatform:
        '(val) => SearchResultItem.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class SearchResultItem implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchResultItem_free.cast());

  /// @nodoc
  SearchResultItem.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SearchResultItem.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SearchResultItem? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static SearchResultItem? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchResultItem.fromNativePtr(ptr);
  }

  /// Id (constructed inside)
  core.String get id {
    return to_platform.toPlatformString(_SearchResultItem_get_id(ptr));
  }

  /// Name (from GeoObject)
  core.String get name {
    return to_platform.toPlatformString(_SearchResultItem_get_name(ptr));
  }

  /// CategoryClass (optional, first if there are several)
  ///
  core.String? get categoryClass {
    return to_platform
        .toPlatformFromPointerString(_SearchResultItem_get_categoryClass(ptr));
  }

  /// Wrapped GeoObject itself
  mapkit_geo_object.GeoObject get geoObject {
    return mapkit_geo_object.GeoObject.fromNativePtr(
        _SearchResultItem_get_geoObject(ptr));
  }

  /// Point from the GeoObject
  mapkit_geometry_point.Point get point {
    return mapkit_geometry_point.Point.fromNative(
        _SearchResultItem_get_point(ptr));
  }

  /// Does the GeoObject contain details for subtitle
  core.bool hasDetails() {
    return _SearchResultItem_hasDetails(ptr);
  }

  /// Details for the subtitle
  core.List<search_subtitle.SearchSubtitleItem> details() {
    return search_subtitle.SearchSubtitleItemContainerExtension
        .toPlatformVector(_SearchResultItem_details(ptr));
  }

  /// Is it a collection GeoObject
  core.bool isCollection() {
    return _SearchResultItem_isCollection(ptr);
  }

  /// Is the organization closed now
  core.bool isClosed() {
    return _SearchResultItem_isClosed(ptr);
  }

  /// Is the GeoObject found in offline search
  core.bool isOffline() {
    return _SearchResultItem_isOffline(ptr);
  }
}

final _SearchResultItem_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchResultItem_free');

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchResultItem_get_id = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_get_id')
        .asFunction();

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchResultItem_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_get_name')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchResultItem_get_categoryClass = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchResultItem_get_categoryClass')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchResultItem_get_geoObject = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_get_geoObject')
        .asFunction();

final mapkit_geometry_point.PointNative Function(ffi.Pointer<ffi.Void>)
    _SearchResultItem_get_point = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_point.PointNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_get_point')
        .asFunction();

final core.bool Function(ffi.Pointer<ffi.Void>) _SearchResultItem_hasDetails =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_hasDetails')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchResultItem_details = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_details')
        .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _SearchResultItem_isCollection =
    lib
        .library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_isCollection')
        .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _SearchResultItem_isClosed = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchResultItem_isClosed')
    .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _SearchResultItem_isOffline =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_isOffline')
        .asFunction();
