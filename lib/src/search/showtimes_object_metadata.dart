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
import 'package:yandex_maps_mapkit/src/mapkit/money.dart' as mapkit_money;
import 'package:yandex_maps_mapkit/src/mapkit/time.dart' as mapkit_time;

part 'showtimes_object_metadata.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchShowtime.toPointer',
    toPlatform: '(val) => SearchShowtime.fromPointer(val, needFree: false)')
class SearchShowtime implements ffi.Finalizable {
  late final startTime =
      mapkit_time.Time.fromNative(_SearchShowtime_get_startTime(_ptr));
  late final price =
      mapkit_money.TaxiMoney.fromPointer(_SearchShowtime_get_price(_ptr));
  late final ticketId = to_platform
      .toPlatformFromPointerString(_SearchShowtime_get_ticketId(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchShowtime_free.cast());

  SearchShowtime(mapkit_time.Time startTime, mapkit_money.TaxiMoney? price,
      core.String? ticketId)
      : this.fromNativePtr(_SearchShowtime_init(
            mapkit_time.Time.toNative(startTime),
            mapkit_money.TaxiMoney.toPointer(price),
            to_native.toNativePtrString(ticketId)));

  /// @nodoc
  @internal
  SearchShowtime.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchShowtime? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchShowtime? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchShowtime.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchShowtime? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SearchShowtime.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchShowtime? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchShowtime_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchShowtime_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtime_clone')
        .asFunction(isLeaf: true);

final _SearchShowtime_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchShowtime_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_time.TimeNative, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchShowtime_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(mapkit_time.TimeNative,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtime_init')
        .asFunction(isLeaf: true);

final mapkit_time.TimeNative Function(ffi.Pointer<ffi.Void>)
    _SearchShowtime_get_startTime = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_time.TimeNative Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtime_get_startTime')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchShowtime_get_price = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtime_get_price')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchShowtime_get_ticketId = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtime_get_ticketId')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchShowtimesObjectMetadata.toPointer',
    toPlatform:
        '(val) => SearchShowtimesObjectMetadata.fromPointer(val, needFree: false)')
class SearchShowtimesObjectMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final title = to_platform
      .toPlatformString(_SearchShowtimesObjectMetadata_get_title(_ptr));
  late final showtimes = SearchShowtimeContainerExtension.toPlatformVector(
      _SearchShowtimesObjectMetadata_get_showtimes(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchShowtimesObjectMetadata_free.cast());

  SearchShowtimesObjectMetadata(
      core.String title, core.List<SearchShowtime> showtimes)
      : this.fromNativePtr(_SearchShowtimesObjectMetadata_init(
            to_native.toNativeString(title),
            SearchShowtimeContainerExtension.toNativeVector(showtimes)));

  /// @nodoc
  @internal
  SearchShowtimesObjectMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchShowtimesObjectMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchShowtimesObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchShowtimesObjectMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchShowtimesObjectMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchShowtimesObjectMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchShowtimesObjectMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchShowtimesObjectMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _SearchShowtimesObjectMetadataFactory get factory =>
      const _SearchShowtimesObjectMetadataFactory();

  /// @nodoc
  @core.override
  _SearchShowtimesObjectMetadataFactory get runtimeFactory =>
      const _SearchShowtimesObjectMetadataFactory();
}

/// @nodoc
class _SearchShowtimesObjectMetadataFactory
    extends struct_factory.StructFactory<SearchShowtimesObjectMetadata> {
  const _SearchShowtimesObjectMetadataFactory();

  @core.override
  SearchShowtimesObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchShowtimesObjectMetadata.fromNativePtr(ptr);
  }

  @core.override
  SearchShowtimesObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchShowtimesObjectMetadata.fromNativePtr(
        _SearchShowtimesObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchShowtimesObjectMetadata obj) {
    return _SearchShowtimesObjectMetadata_upcast(
        SearchShowtimesObjectMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchShowtimesObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchShowtimesObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtimesObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchShowtimesObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtimesObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _SearchShowtimesObjectMetadata_name =
    lib
        .library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchShowtimesObjectMetadata_name')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchShowtimesObjectMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtimesObjectMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchShowtimesObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchShowtimesObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString, ffi.Pointer<ffi.Void>)
    _SearchShowtimesObjectMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtimesObjectMetadata_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchShowtimesObjectMetadata_get_title = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtimesObjectMetadata_get_title')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchShowtimesObjectMetadata_get_showtimes = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtimesObjectMetadata_get_showtimes')
        .asFunction(isLeaf: true);
