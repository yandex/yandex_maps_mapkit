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

part 'toponym_result_metadata.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchToponymResultMetadata.toPointer',
    toPlatform:
        '(val) => SearchToponymResultMetadata.fromPointer(val, needFree: false)')
class SearchToponymResultMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final found = _SearchToponymResultMetadata_get_found(_ptr);
  late final responseInfo = SearchToponymResultMetadataResponseInfo.fromPointer(
      _SearchToponymResultMetadata_get_responseInfo(_ptr));
  late final reversePoint = mapkit_geometry_point.Point.fromPointer(
      _SearchToponymResultMetadata_get_reversePoint(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchToponymResultMetadata_free.cast());

  SearchToponymResultMetadata(
      core.int found,
      SearchToponymResultMetadataResponseInfo? responseInfo,
      mapkit_geometry_point.Point? reversePoint)
      : this.fromNativePtr(_SearchToponymResultMetadata_init(
            found,
            SearchToponymResultMetadataResponseInfo.toPointer(responseInfo),
            mapkit_geometry_point.Point.toPointer(reversePoint)));

  /// @nodoc
  @internal
  SearchToponymResultMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchToponymResultMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchToponymResultMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchToponymResultMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchToponymResultMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchToponymResultMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchToponymResultMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchToponymResultMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _SearchToponymResultMetadataFactory get factory =>
      const _SearchToponymResultMetadataFactory();

  /// @nodoc
  @core.override
  _SearchToponymResultMetadataFactory get runtimeFactory =>
      const _SearchToponymResultMetadataFactory();
}

/// @nodoc
class _SearchToponymResultMetadataFactory
    extends struct_factory.StructFactory<SearchToponymResultMetadata> {
  const _SearchToponymResultMetadataFactory();

  @core.override
  SearchToponymResultMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchToponymResultMetadata.fromNativePtr(ptr);
  }

  @core.override
  SearchToponymResultMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchToponymResultMetadata.fromNativePtr(
        _SearchToponymResultMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchToponymResultMetadata obj) {
    return _SearchToponymResultMetadata_upcast(
        SearchToponymResultMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchToponymResultMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymResultMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymResultMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymResultMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymResultMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _SearchToponymResultMetadata_name =
    lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchToponymResultMetadata_name')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymResultMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymResultMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchToponymResultMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchToponymResultMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        core.int, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchToponymResultMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Int,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymResultMetadata_init')
        .asFunction(isLeaf: true);

final core.int Function(ffi.Pointer<ffi.Void>)
    _SearchToponymResultMetadata_get_found = lib.library
        .lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymResultMetadata_get_found')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchToponymResultMetadata_get_responseInfo = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchToponymResultMetadata_get_responseInfo')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchToponymResultMetadata_get_reversePoint = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchToponymResultMetadata_get_reversePoint')
    .asFunction(isLeaf: true);

/// Search mode.
@bindings_annotations.ContainerData(
    toNative: 'SearchToponymResultMetadataSearchMode.toPointer',
    toPlatform:
        '(val) => SearchToponymResultMetadataSearchMode.fromPointer(val, needFree: false)')
enum SearchToponymResultMetadataSearchMode {
  /// Search from text to toponym.
  Geocode,

  /// Search from coordinates to toponym.
  Reverse,
  ;

  /// @nodoc
  @internal
  static SearchToponymResultMetadataSearchMode fromInt(core.int val) {
    return SearchToponymResultMetadataSearchMode.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(SearchToponymResultMetadataSearchMode e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static SearchToponymResultMetadataSearchMode? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      SearchToponymResultMetadataSearchMode? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class SearchToponymResultMetadataResponseInfoNative extends ffi.Struct {
  @ffi.Int64()
  external core.int mode;
  external ffi.Pointer<ffi.Void> accuracy;
}

final SearchToponymResultMetadataResponseInfoNative Function(
    core.int,
    ffi.Pointer<
        ffi.Void>) _SearchToponymResultMetadataResponseInfoNativeInit = lib
    .library
    .lookup<
            ffi.NativeFunction<
                SearchToponymResultMetadataResponseInfoNative Function(
                    ffi.Int64, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_ToponymResultMetadata_SearchToponymResultMetadataResponseInfo_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchToponymResultMetadataResponseInfo.toPointer',
    toPlatform:
        '(val) => SearchToponymResultMetadataResponseInfo.fromPointer(val, needFree: false)')
class SearchToponymResultMetadataResponseInfo {
  final SearchToponymResultMetadataSearchMode mode;
  final core.double? accuracy;

  const SearchToponymResultMetadataResponseInfo(
    this.mode, {
    this.accuracy,
  });

  /// @nodoc
  @internal
  SearchToponymResultMetadataResponseInfo.fromNative(
      SearchToponymResultMetadataResponseInfoNative native)
      : this(SearchToponymResultMetadataSearchMode.fromInt(native.mode),
            accuracy: to_platform.toPlatformFromPointerDouble(native.accuracy));

  /// @nodoc
  @internal
  static SearchToponymResultMetadataResponseInfoNative toNative(
      SearchToponymResultMetadataResponseInfo c) {
    return _SearchToponymResultMetadataResponseInfoNativeInit(
        SearchToponymResultMetadataSearchMode.toInt(c.mode),
        to_native.toNativePtrDouble(c.accuracy));
  }

  /// @nodoc
  @internal
  static SearchToponymResultMetadataResponseInfo? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchToponymResultMetadataResponseInfo.fromNative(
        ptr.cast<SearchToponymResultMetadataResponseInfoNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      SearchToponymResultMetadataResponseInfo? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchToponymResultMetadataResponseInfoNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
