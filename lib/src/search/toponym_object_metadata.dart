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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/search/address.dart' as search_address;
import 'package:yandex_maps_mapkit/src/search/precision.dart'
    as search_precision;

part 'toponym_object_metadata.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchToponymObjectMetadata.toPointer',
    toPlatform:
        '(val) => SearchToponymObjectMetadata.fromPointer(val, needFree: false)')
class SearchToponymObjectMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final address = search_address.SearchAddress.fromNativePtr(
      _SearchToponymObjectMetadata_get_address(_ptr));
  late final precision = search_precision.SearchPrecision.fromPointer(
      _SearchToponymObjectMetadata_get_precision(_ptr));
  late final formerName = to_platform.toPlatformFromPointerString(
      _SearchToponymObjectMetadata_get_formerName(_ptr));
  late final balloonPoint = mapkit_geometry_point.Point.fromNative(
      _SearchToponymObjectMetadata_get_balloonPoint(_ptr));
  late final id = to_platform
      .toPlatformFromPointerString(_SearchToponymObjectMetadata_get_id(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchToponymObjectMetadata_free.cast());

  SearchToponymObjectMetadata(
      search_address.SearchAddress address,
      search_precision.SearchPrecision? precision,
      core.String? formerName,
      mapkit_geometry_point.Point balloonPoint,
      core.String? id)
      : this.fromNativePtr(_SearchToponymObjectMetadata_init(
            search_address.SearchAddress.getNativePtr(address),
            search_precision.SearchPrecision.toPointer(precision),
            to_native.toNativePtrString(formerName),
            mapkit_geometry_point.Point.toNative(balloonPoint),
            to_native.toNativePtrString(id)));

  /// @nodoc
  @internal
  SearchToponymObjectMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchToponymObjectMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchToponymObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchToponymObjectMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchToponymObjectMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchToponymObjectMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchToponymObjectMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchToponymObjectMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _SearchToponymObjectMetadataFactory get factory =>
      const _SearchToponymObjectMetadataFactory();

  /// @nodoc
  @core.override
  _SearchToponymObjectMetadataFactory get runtimeFactory =>
      const _SearchToponymObjectMetadataFactory();
}

/// @nodoc
class _SearchToponymObjectMetadataFactory
    extends struct_factory.StructFactory<SearchToponymObjectMetadata> {
  const _SearchToponymObjectMetadataFactory();

  @core.override
  SearchToponymObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchToponymObjectMetadata.fromNativePtr(ptr);
  }

  @core.override
  SearchToponymObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchToponymObjectMetadata.fromNativePtr(
        _SearchToponymObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchToponymObjectMetadata obj) {
    return _SearchToponymObjectMetadata_upcast(
        SearchToponymObjectMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchToponymObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _SearchToponymObjectMetadata_name =
    lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_name')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymObjectMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchToponymObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchToponymObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        mapkit_geometry_point.PointNative,
        ffi.Pointer<ffi.Void>) _SearchToponymObjectMetadata_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymObjectMetadata_get_address = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_get_address')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymObjectMetadata_get_precision = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_get_precision')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymObjectMetadata_get_formerName = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_get_formerName')
        .asFunction(isLeaf: true);
final mapkit_geometry_point.PointNative Function(
    ffi
        .Pointer<ffi.Void>) _SearchToponymObjectMetadata_get_balloonPoint = lib
    .library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_point.PointNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchToponymObjectMetadata_get_balloonPoint')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymObjectMetadata_get_id = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_get_id')
        .asFunction(isLeaf: true);
