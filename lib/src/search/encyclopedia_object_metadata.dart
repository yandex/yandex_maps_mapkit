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
import 'package:yandex_maps_mapkit/src/mapkit/attribution.dart'
    as mapkit_attribution;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;

part 'encyclopedia_object_metadata.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchEncyclopediaObjectMetadata.toPointer',
    toPlatform:
        '(val) => SearchEncyclopediaObjectMetadata.fromPointer(val, needFree: false)')
class SearchEncyclopediaObjectMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final title = to_platform.toPlatformFromPointerString(
      _SearchEncyclopediaObjectMetadata_get_title(_ptr));
  late final description = to_platform.toPlatformFromPointerString(
      _SearchEncyclopediaObjectMetadata_get_description(_ptr));
  late final attribution = mapkit_attribution.Attribution.fromPointer(
      _SearchEncyclopediaObjectMetadata_get_attribution(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchEncyclopediaObjectMetadata_free.cast());

  SearchEncyclopediaObjectMetadata(core.String? title, core.String? description,
      mapkit_attribution.Attribution? attribution)
      : this.fromNativePtr(_SearchEncyclopediaObjectMetadata_init(
            to_native.toNativePtrString(title),
            to_native.toNativePtrString(description),
            mapkit_attribution.Attribution.toPointer(attribution)));

  /// @nodoc
  @internal
  SearchEncyclopediaObjectMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchEncyclopediaObjectMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchEncyclopediaObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchEncyclopediaObjectMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchEncyclopediaObjectMetadata? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchEncyclopediaObjectMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      SearchEncyclopediaObjectMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchEncyclopediaObjectMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _SearchEncyclopediaObjectMetadataFactory get factory =>
      const _SearchEncyclopediaObjectMetadataFactory();

  /// @nodoc
  @core.override
  _SearchEncyclopediaObjectMetadataFactory get runtimeFactory =>
      const _SearchEncyclopediaObjectMetadataFactory();
}

/// @nodoc
class _SearchEncyclopediaObjectMetadataFactory
    extends struct_factory.StructFactory<SearchEncyclopediaObjectMetadata> {
  const _SearchEncyclopediaObjectMetadataFactory();

  @core.override
  SearchEncyclopediaObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchEncyclopediaObjectMetadata.fromNativePtr(ptr);
  }

  @core.override
  SearchEncyclopediaObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchEncyclopediaObjectMetadata.fromNativePtr(
        _SearchEncyclopediaObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchEncyclopediaObjectMetadata obj) {
    return _SearchEncyclopediaObjectMetadata_upcast(
        SearchEncyclopediaObjectMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchEncyclopediaObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchEncyclopediaObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEncyclopediaObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchEncyclopediaObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEncyclopediaObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function()
    _SearchEncyclopediaObjectMetadata_name = lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchEncyclopediaObjectMetadata_name')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchEncyclopediaObjectMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEncyclopediaObjectMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchEncyclopediaObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchEncyclopediaObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchEncyclopediaObjectMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEncyclopediaObjectMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchEncyclopediaObjectMetadata_get_title = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEncyclopediaObjectMetadata_get_title')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchEncyclopediaObjectMetadata_get_description = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchEncyclopediaObjectMetadata_get_description')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchEncyclopediaObjectMetadata_get_attribution = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchEncyclopediaObjectMetadata_get_attribution')
    .asFunction(isLeaf: true);
