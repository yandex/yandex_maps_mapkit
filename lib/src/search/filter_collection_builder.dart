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
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/search/filter_collection.dart'
    as search_filter_collection;

part 'filter_collection_builder.containers.dart';

/// Builder for filter collection.
@bindings_annotations.ContainerData(
    toNative: 'SearchFilterCollectionBuilder.getNativePtr',
    toPlatform:
        '(val) => SearchFilterCollectionBuilder.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class SearchFilterCollectionBuilder implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchFilterCollectionBuilder_free.cast());

  /// @nodoc
  SearchFilterCollectionBuilder.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SearchFilterCollectionBuilder.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchFilterCollectionBuilder? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static SearchFilterCollectionBuilder? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchFilterCollectionBuilder.fromNativePtr(ptr);
  }

  /// Adds boolean filter with given id to collection.
  ///
  /// [filterId] filter id to add.
  void addBooleanFilter(core.String filterId) {
    _FilterCollectionBuilder_addBooleanFilter(
        ptr, to_native.toNativeString(filterId));
  }

  /// Adds enum filter with given id and values to the collection.
  ///
  /// [filterId] filter id to add.
  /// [valueIds] list of value ids for the enum filter.
  void addEnumFilter({
    required core.String filterId,
    required core.List<core.String> valueIds,
  }) {
    _FilterCollectionBuilder_addEnumFilter(
        ptr,
        to_native.toNativeString(filterId),
        to_native.toNativeVectorString(valueIds));
  }

  /// Adds range filter with given id and limits to the collection.
  ///
  /// [filterId] filter id to add.
  /// [from] lower range limit.
  /// [to] upper range limit.
  void addRangeFilter({
    required core.String filterId,
    required core.double from,
    required core.double to,
  }) {
    _FilterCollectionBuilder_addRangeFilter(
        ptr, to_native.toNativeString(filterId), from, to);
  }

  /// Adds date filter with given id and limits to the collection. Limits
  /// are encoded as strings in YYYYMMDD format.
  ///
  /// [filterId] filter id to add.
  /// [from] lower range limit.
  /// [to] upper range limit.
  void addDateFilter({
    required core.String filterId,
    required core.String from,
    required core.String to,
  }) {
    _FilterCollectionBuilder_addDateFilter(
        ptr,
        to_native.toNativeString(filterId),
        to_native.toNativeString(from),
        to_native.toNativeString(to));
  }

  /// Builds resulting collection.
  /// Return collection built from previously given filters.
  search_filter_collection.SearchFilterCollection build() {
    return search_filter_collection.SearchFilterCollection.fromNativePtr(
        _FilterCollectionBuilder_build(ptr));
  }
}

final _SearchFilterCollectionBuilder_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchFilterCollectionBuilder_free');

final void Function(
    ffi.Pointer<ffi.Void>,
    native_types
        .NativeString) _FilterCollectionBuilder_addBooleanFilter = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, native_types.NativeString)>>(
        'yandex_flutter_search_SearchFilterCollectionBuilder_addBooleanFilter')
    .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, native_types.NativeString, ffi.Pointer<ffi.Void>)
    _FilterCollectionBuilder_addEnumFilter = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        native_types.NativeString, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFilterCollectionBuilder_addEnumFilter')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    native_types.NativeString,
    core.double,
    core
        .double) _FilterCollectionBuilder_addRangeFilter = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>,
                    native_types.NativeString, ffi.Double, ffi.Double)>>(
        'yandex_flutter_search_SearchFilterCollectionBuilder_addRangeFilter')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeString,
        native_types.NativeString, native_types.NativeString)
    _FilterCollectionBuilder_addDateFilter = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        native_types.NativeString,
                        native_types.NativeString)>>(
            'yandex_flutter_search_SearchFilterCollectionBuilder_addDateFilter')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _FilterCollectionBuilder_build = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFilterCollectionBuilder_build')
        .asFunction();

class SearchFilterCollectionUtils {
  SearchFilterCollectionUtils._();

  /// Creates new [SearchFilterCollectionBuilder].
  /// Return builder for [search_filter_collection.SearchFilterCollection].
  static SearchFilterCollectionBuilder createFilterCollectionBuilder() {
    return SearchFilterCollectionBuilder.fromNativePtr(
        _FilterCollectionUtils_createFilterCollectionBuilder());
  }
}

final ffi.Pointer<ffi.Void> Function()
    _FilterCollectionUtils_createFilterCollectionBuilder = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_search_SearchFilterCollectionUtils_createFilterCollectionBuilder')
        .asFunction();
