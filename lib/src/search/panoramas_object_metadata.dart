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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/direction.dart'
    as mapkit_geometry_direction;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/span.dart'
    as mapkit_geometry_span;

part 'panoramas_object_metadata.containers.dart';

/// @nodoc
final class SearchPanoramaNative extends ffi.Struct {
  external native_types.NativeString id;
  external mapkit_geometry_direction.DirectionNative direction;
  external mapkit_geometry_span.SpanNative span;
  external mapkit_geometry_point.PointNative point;
}

final SearchPanoramaNative Function(
  native_types.NativeString,
  mapkit_geometry_direction.DirectionNative,
  mapkit_geometry_span.SpanNative,
  mapkit_geometry_point.PointNative,
) _SearchPanoramaNativeInit = lib.library
    .lookup<
        ffi.NativeFunction<
            SearchPanoramaNative Function(
              native_types.NativeString,
              mapkit_geometry_direction.DirectionNative,
              mapkit_geometry_span.SpanNative,
              mapkit_geometry_point.PointNative,
            )>>('yandex_flutter_search_SearchPanorama_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchPanorama.toPointer',
    toPlatform: '(val) => SearchPanorama.fromPointer(val, needFree: false)')
class SearchPanorama {
  final core.String id;
  final mapkit_geometry_direction.Direction direction;
  final mapkit_geometry_span.Span span;
  final mapkit_geometry_point.Point point;

  const SearchPanorama(
    this.direction,
    this.span,
    this.point, {
    required this.id,
  });

  /// @nodoc
  @internal
  SearchPanorama.fromNative(SearchPanoramaNative native)
      : this(
          id: to_platform.toPlatformString(native.id),
          mapkit_geometry_direction.Direction.fromNative(native.direction),
          mapkit_geometry_span.Span.fromNative(native.span),
          mapkit_geometry_point.Point.fromNative(native.point),
        );

  /// @nodoc
  @internal
  static SearchPanoramaNative toNative(SearchPanorama c) {
    return _SearchPanoramaNativeInit(
      to_native.toNativeString(c.id),
      mapkit_geometry_direction.Direction.toNative(c.direction),
      mapkit_geometry_span.Span.toNative(c.span),
      mapkit_geometry_point.Point.toNative(c.point),
    );
  }

  /// @nodoc
  @internal
  static SearchPanorama? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SearchPanorama.fromNative(ptr.cast<SearchPanoramaNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchPanorama? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchPanoramaNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SearchPanoramasObjectMetadata.toPointer',
    toPlatform:
        '(val) => SearchPanoramasObjectMetadata.fromPointer(val, needFree: false)')
class SearchPanoramasObjectMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final panoramas = SearchPanoramaContainerExtension.toPlatformVector(
      _SearchPanoramasObjectMetadata_get_panoramas(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchPanoramasObjectMetadata_free.cast());

  SearchPanoramasObjectMetadata(core.List<SearchPanorama> panoramas)
      : this.fromNativePtr(_SearchPanoramasObjectMetadata_init(
            SearchPanoramaContainerExtension.toNativeVector(panoramas)));

  /// @nodoc
  @internal
  SearchPanoramasObjectMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchPanoramasObjectMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchPanoramasObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchPanoramasObjectMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchPanoramasObjectMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchPanoramasObjectMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchPanoramasObjectMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchPanoramasObjectMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _SearchPanoramasObjectMetadataFactory get factory =>
      const _SearchPanoramasObjectMetadataFactory();

  /// @nodoc
  @core.override
  _SearchPanoramasObjectMetadataFactory get runtimeFactory =>
      const _SearchPanoramasObjectMetadataFactory();
}

/// @nodoc
class _SearchPanoramasObjectMetadataFactory
    extends struct_factory.StructFactory<SearchPanoramasObjectMetadata> {
  const _SearchPanoramasObjectMetadataFactory();

  @core.override
  SearchPanoramasObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchPanoramasObjectMetadata.fromNativePtr(ptr);
  }

  @core.override
  SearchPanoramasObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchPanoramasObjectMetadata.fromNativePtr(
        _SearchPanoramasObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchPanoramasObjectMetadata obj) {
    return _SearchPanoramasObjectMetadata_upcast(
        SearchPanoramasObjectMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchPanoramasObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPanoramasObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPanoramasObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPanoramasObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPanoramasObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _SearchPanoramasObjectMetadata_name =
    lib
        .library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchPanoramasObjectMetadata_name')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPanoramasObjectMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPanoramasObjectMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchPanoramasObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchPanoramasObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPanoramasObjectMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPanoramasObjectMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPanoramasObjectMetadata_get_panoramas = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPanoramasObjectMetadata_get_panoramas')
        .asFunction(isLeaf: true);
