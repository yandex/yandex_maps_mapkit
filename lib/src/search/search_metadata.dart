import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
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
import 'package:yandex_maps_mapkit/src/mapkit/geo_object.dart'
    as mapkit_geo_object;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_mapkit/src/search/business_result_metadata.dart'
    as search_business_result_metadata;
import 'package:yandex_maps_mapkit/src/search/display_type.dart'
    as search_display_type;
import 'package:yandex_maps_mapkit/src/search/sort.dart' as search_sort;
import 'package:yandex_maps_mapkit/src/search/toponym_result_metadata.dart'
    as search_toponym_result_metadata;

part 'search_metadata.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchMetadata.toPointer',
    toPlatform: '(val) => SearchMetadata.fromPointer(val, needFree: false)')
class SearchMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final found = _SearchMetadata_get_found(_ptr);
  late final displayType = search_display_type.SearchDisplayType.fromInt(
      _SearchMetadata_get_displayType(_ptr));
  late final boundingBox = mapkit_geometry_geometry.BoundingBox.fromPointer(
      _SearchMetadata_get_boundingBox(_ptr));
  late final sort =
      search_sort.SearchSort.fromPointer(_SearchMetadata_get_sort(_ptr));
  late final toponym = mapkit_geo_object.GeoObject.fromOptionalPtr(
      _SearchMetadata_get_toponym(_ptr));
  late final toponymResultMetadata =
      search_toponym_result_metadata.SearchToponymResultMetadata
          .fromOptionalPtr(_SearchMetadata_get_toponymResultMetadata(_ptr));
  late final businessResultMetadata =
      search_business_result_metadata.SearchBusinessResultMetadata
          .fromOptionalPtr(_SearchMetadata_get_businessResultMetadata(_ptr));
  late final reqid =
      to_platform.toPlatformString(_SearchMetadata_get_reqid(_ptr));
  late final context =
      to_platform.toPlatformString(_SearchMetadata_get_context(_ptr));
  late final requestText =
      to_platform.toPlatformString(_SearchMetadata_get_requestText(_ptr));
  late final correctedRequestText = to_platform.toPlatformFromPointerString(
      _SearchMetadata_get_correctedRequestText(_ptr));
  late final requestBoundingBox =
      mapkit_geometry_geometry.BoundingBox.fromPointer(
          _SearchMetadata_get_requestBoundingBox(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchMetadata_free.cast());

  SearchMetadata(
      core.int found,
      search_display_type.SearchDisplayType displayType,
      mapkit_geometry_geometry.BoundingBox? boundingBox,
      search_sort.SearchSort? sort,
      mapkit_geo_object.GeoObject? toponym,
      search_toponym_result_metadata.SearchToponymResultMetadata?
          toponymResultMetadata,
      search_business_result_metadata.SearchBusinessResultMetadata?
          businessResultMetadata,
      core.String reqid,
      core.String context,
      core.String requestText,
      core.String? correctedRequestText,
      mapkit_geometry_geometry.BoundingBox? requestBoundingBox)
      : this.fromNativePtr(_SearchMetadata_init(
            found,
            search_display_type.SearchDisplayType.toInt(displayType),
            mapkit_geometry_geometry.BoundingBox.toPointer(boundingBox),
            search_sort.SearchSort.toPointer(sort),
            mapkit_geo_object.GeoObject.getNativePtr(toponym),
            search_toponym_result_metadata.SearchToponymResultMetadata
                .getNativePtr(toponymResultMetadata),
            search_business_result_metadata.SearchBusinessResultMetadata
                .getNativePtr(businessResultMetadata),
            to_native.toNativeString(reqid),
            to_native.toNativeString(context),
            to_native.toNativeString(requestText),
            to_native.toNativePtrString(correctedRequestText),
            mapkit_geometry_geometry.BoundingBox.toPointer(
                requestBoundingBox)));

  /// @nodoc
  @internal
  SearchMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SearchMetadata.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _SearchMetadataFactory get factory => const _SearchMetadataFactory();

  /// @nodoc
  @core.override
  _SearchMetadataFactory get runtimeFactory => const _SearchMetadataFactory();
}

/// @nodoc
class _SearchMetadataFactory
    extends struct_factory.StructFactory<SearchMetadata> {
  const _SearchMetadataFactory();

  @core.override
  SearchMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchMetadata.fromNativePtr(ptr);
  }

  @core.override
  SearchMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchMetadata.fromNativePtr(_SearchMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchMetadata obj) {
    return _SearchMetadata_upcast(SearchMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _SearchMetadata_name = lib.library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_search_SearchMetadata_name')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchMetadata_free');

final ffi.Pointer<ffi.Void> Function(
    core.int,
    core.int,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    native_types.NativeString,
    native_types.NativeString,
    native_types.NativeString,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _SearchMetadata_init = lib.library
    .lookup<
        ffi.NativeFunction<
            ffi.Pointer<ffi.Void> Function(
                ffi.Int,
                ffi.Int64,
                ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>,
                native_types.NativeString,
                native_types.NativeString,
                native_types.NativeString,
                ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>)>>('yandex_flutter_search_SearchMetadata_init')
    .asFunction(isLeaf: true);

final core.int Function(ffi.Pointer<ffi.Void>) _SearchMetadata_get_found = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchMetadata_get_found')
    .asFunction(isLeaf: true);
final core.int Function(ffi.Pointer<ffi.Void>) _SearchMetadata_get_displayType =
    lib
        .library
        .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_displayType')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_boundingBox = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_boundingBox')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_sort = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_sort')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_toponym = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_toponym')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_toponymResultMetadata = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_toponymResultMetadata')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_businessResultMetadata = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_businessResultMetadata')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_reqid = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_reqid')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_context = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_context')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_requestText = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_requestText')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_correctedRequestText = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_correctedRequestText')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_requestBoundingBox = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_requestBoundingBox')
        .asFunction(isLeaf: true);
