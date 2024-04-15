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
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'filter_collection.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchFilterCollection.toPointer',
    toPlatform:
        '(val) => SearchFilterCollection.fromPointer(val, needFree: false)')
class SearchFilterCollection implements ffi.Finalizable {
  late final booleanFilters = to_platform
      .toVectorString(_SearchFilterCollection_get_booleanFilters(_ptr));
  late final enumFilters = to_platform
      .toMapVectorString(_SearchFilterCollection_get_enumFilters(_ptr));
  late final rangeFilters =
      SearchFilterCollectionNumberRangeContainerExtension.toPlatformMap(
          _SearchFilterCollection_get_rangeFilters(_ptr));
  late final dateFilters =
      SearchFilterCollectionDateRangeContainerExtension.toPlatformMap(
          _SearchFilterCollection_get_dateFilters(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchFilterCollection_free.cast());

  SearchFilterCollection(
      core.List<core.String> booleanFilters,
      core.Map<core.String, core.List<core.String>> enumFilters,
      core.Map<core.String, SearchFilterCollectionNumberRange> rangeFilters,
      core.Map<core.String, SearchFilterCollectionDateRange> dateFilters)
      : this.fromNativePtr(_SearchFilterCollection_init(
            to_native.toNativeVectorString(booleanFilters),
            to_native.toNativeMapVectorString(enumFilters),
            SearchFilterCollectionNumberRangeContainerExtension.toNativeMap(
                rangeFilters),
            SearchFilterCollectionDateRangeContainerExtension.toNativeMap(
                dateFilters)));

  /// @nodoc
  @internal
  SearchFilterCollection.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchFilterCollection? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchFilterCollection? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchFilterCollection.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchFilterCollection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchFilterCollection.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchFilterCollection? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchFilterCollection_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFilterCollection_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFilterCollection_clone')
        .asFunction(isLeaf: true);

final _SearchFilterCollection_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchFilterCollection_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchFilterCollection_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFilterCollection_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFilterCollection_get_booleanFilters = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFilterCollection_get_booleanFilters')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFilterCollection_get_enumFilters = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFilterCollection_get_enumFilters')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFilterCollection_get_rangeFilters = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFilterCollection_get_rangeFilters')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFilterCollection_get_dateFilters = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFilterCollection_get_dateFilters')
        .asFunction(isLeaf: true);

/// @nodoc
final class SearchFilterCollectionNumberRangeNative extends ffi.Struct {
  @ffi.Double()
  external core.double from;
  @ffi.Double()
  external core.double to;
}

final SearchFilterCollectionNumberRangeNative Function(
    core.double,
    core
        .double) _SearchFilterCollectionNumberRangeNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                SearchFilterCollectionNumberRangeNative Function(
                    ffi.Double, ffi.Double)>>(
        'yandex_flutter_search_FilterCollection_SearchFilterCollectionNumberRange_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchFilterCollectionNumberRange.toPointer',
    toPlatform:
        '(val) => SearchFilterCollectionNumberRange.fromPointer(val, needFree: false)')
class SearchFilterCollectionNumberRange {
  final core.double from;
  final core.double to;

  const SearchFilterCollectionNumberRange({
    required this.from,
    required this.to,
  });

  /// @nodoc
  @internal
  SearchFilterCollectionNumberRange.fromNative(
      SearchFilterCollectionNumberRangeNative native)
      : this(from: native.from, to: native.to);

  /// @nodoc
  @internal
  static SearchFilterCollectionNumberRangeNative toNative(
      SearchFilterCollectionNumberRange c) {
    return _SearchFilterCollectionNumberRangeNativeInit(c.from, c.to);
  }

  /// @nodoc
  @internal
  static SearchFilterCollectionNumberRange? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchFilterCollectionNumberRange.fromNative(
        ptr.cast<SearchFilterCollectionNumberRangeNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      SearchFilterCollectionNumberRange? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchFilterCollectionNumberRangeNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class SearchFilterCollectionDateRangeNative extends ffi.Struct {
  external native_types.NativeString from;
  external native_types.NativeString to;
}

final SearchFilterCollectionDateRangeNative Function(
    native_types.NativeString,
    native_types
        .NativeString) _SearchFilterCollectionDateRangeNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                SearchFilterCollectionDateRangeNative Function(
                    native_types.NativeString, native_types.NativeString)>>(
        'yandex_flutter_search_FilterCollection_SearchFilterCollectionDateRange_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchFilterCollectionDateRange.toPointer',
    toPlatform:
        '(val) => SearchFilterCollectionDateRange.fromPointer(val, needFree: false)')
class SearchFilterCollectionDateRange {
  final core.String from;
  final core.String to;

  const SearchFilterCollectionDateRange({
    required this.from,
    required this.to,
  });

  /// @nodoc
  @internal
  SearchFilterCollectionDateRange.fromNative(
      SearchFilterCollectionDateRangeNative native)
      : this(
            from: to_platform.toPlatformString(native.from),
            to: to_platform.toPlatformString(native.to));

  /// @nodoc
  @internal
  static SearchFilterCollectionDateRangeNative toNative(
      SearchFilterCollectionDateRange c) {
    return _SearchFilterCollectionDateRangeNativeInit(
        to_native.toNativeString(c.from), to_native.toNativeString(c.to));
  }

  /// @nodoc
  @internal
  static SearchFilterCollectionDateRange? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchFilterCollectionDateRange.fromNative(
        ptr.cast<SearchFilterCollectionDateRangeNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchFilterCollectionDateRange? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchFilterCollectionDateRangeNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
