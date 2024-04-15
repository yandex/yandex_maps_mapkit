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
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;
import 'package:yandex_maps_mapkit/src/search/related_places.dart'
    as search_related_places;

part 'related_places_object_metadata.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchRelatedPlacesObjectMetadata.toPointer',
    toPlatform:
        '(val) => SearchRelatedPlacesObjectMetadata.fromPointer(val, needFree: false)')
class SearchRelatedPlacesObjectMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  late final similarPlaces =
      search_related_places.SearchPlaceInfoContainerExtension.toPlatformVector(
          _SearchRelatedPlacesObjectMetadata_get_similarPlaces(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchRelatedPlacesObjectMetadata_free.cast());

  SearchRelatedPlacesObjectMetadata(
      core.List<search_related_places.SearchPlaceInfo> similarPlaces)
      : this.fromNativePtr(_SearchRelatedPlacesObjectMetadata_init(
            search_related_places.SearchPlaceInfoContainerExtension
                .toNativeVector(similarPlaces)));

  /// @nodoc
  @internal
  SearchRelatedPlacesObjectMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchRelatedPlacesObjectMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchRelatedPlacesObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchRelatedPlacesObjectMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchRelatedPlacesObjectMetadata? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchRelatedPlacesObjectMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      SearchRelatedPlacesObjectMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchRelatedPlacesObjectMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _SearchRelatedPlacesObjectMetadataFactory get factory =>
      const _SearchRelatedPlacesObjectMetadataFactory();

  /// @nodoc
  @core.override
  _SearchRelatedPlacesObjectMetadataFactory get runtimeFactory =>
      const _SearchRelatedPlacesObjectMetadataFactory();
}

/// @nodoc
class _SearchRelatedPlacesObjectMetadataFactory
    extends struct_factory.StructFactory<SearchRelatedPlacesObjectMetadata> {
  const _SearchRelatedPlacesObjectMetadataFactory();

  @core.override
  SearchRelatedPlacesObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchRelatedPlacesObjectMetadata.fromNativePtr(ptr);
  }

  @core.override
  SearchRelatedPlacesObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchRelatedPlacesObjectMetadata.fromNativePtr(
        _SearchRelatedPlacesObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchRelatedPlacesObjectMetadata obj) {
    return _SearchRelatedPlacesObjectMetadata_upcast(
        SearchRelatedPlacesObjectMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchRelatedPlacesObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchRelatedPlacesObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchRelatedPlacesObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchRelatedPlacesObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchRelatedPlacesObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function()
    _SearchRelatedPlacesObjectMetadata_name = lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchRelatedPlacesObjectMetadata_name')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchRelatedPlacesObjectMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchRelatedPlacesObjectMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchRelatedPlacesObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchRelatedPlacesObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchRelatedPlacesObjectMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchRelatedPlacesObjectMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchRelatedPlacesObjectMetadata_get_similarPlaces = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchRelatedPlacesObjectMetadata_get_similarPlaces')
    .asFunction(isLeaf: true);
