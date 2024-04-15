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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/search/working_hours.dart'
    as search_working_hours;

part 'related_places.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchPlaceInfo.toPointer',
    toPlatform: '(val) => SearchPlaceInfo.fromPointer(val, needFree: false)')
class SearchPlaceInfo implements ffi.Finalizable {
  late final name =
      to_platform.toPlatformString(_SearchPlaceInfo_get_name(_ptr));
  late final uri =
      to_platform.toPlatformFromPointerString(_SearchPlaceInfo_get_uri(_ptr));
  late final photoUrlTemplate = to_platform
      .toPlatformFromPointerString(_SearchPlaceInfo_get_photoUrlTemplate(_ptr));
  late final logId =
      to_platform.toPlatformFromPointerString(_SearchPlaceInfo_get_logId(_ptr));
  late final point =
      mapkit_geometry_point.Point.fromPointer(_SearchPlaceInfo_get_point(_ptr));
  late final category = to_platform
      .toPlatformFromPointerString(_SearchPlaceInfo_get_category(_ptr));
  late final shortName = to_platform
      .toPlatformFromPointerString(_SearchPlaceInfo_get_shortName(_ptr));
  late final rating =
      to_platform.toPlatformFromPointerFloat(_SearchPlaceInfo_get_rating(_ptr));
  late final workingHours =
      search_working_hours.SearchWorkingHours.fromOptionalPtr(
          _SearchPlaceInfo_get_workingHours(_ptr));
  late final address = to_platform
      .toPlatformFromPointerString(_SearchPlaceInfo_get_address(_ptr));
  late final tag = to_platform.toVectorString(_SearchPlaceInfo_get_tag(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchPlaceInfo_free.cast());

  SearchPlaceInfo(
      core.String name,
      core.String? uri,
      core.String? photoUrlTemplate,
      core.String? logId,
      mapkit_geometry_point.Point? point,
      core.String? category,
      core.String? shortName,
      core.double? rating,
      search_working_hours.SearchWorkingHours? workingHours,
      core.String? address,
      core.List<core.String> tag)
      : this.fromNativePtr(_SearchPlaceInfo_init(
            to_native.toNativeString(name),
            to_native.toNativePtrString(uri),
            to_native.toNativePtrString(photoUrlTemplate),
            to_native.toNativePtrString(logId),
            mapkit_geometry_point.Point.toPointer(point),
            to_native.toNativePtrString(category),
            to_native.toNativePtrString(shortName),
            to_native.toNativePtrFloat(rating),
            search_working_hours.SearchWorkingHours.getNativePtr(workingHours),
            to_native.toNativePtrString(address),
            to_native.toNativeVectorString(tag)));

  /// @nodoc
  @internal
  SearchPlaceInfo.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchPlaceInfo? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchPlaceInfo? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchPlaceInfo.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchPlaceInfo? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SearchPlaceInfo.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchPlaceInfo? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchPlaceInfo_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_clone')
        .asFunction(isLeaf: true);

final _SearchPlaceInfo_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchPlaceInfo_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _SearchPlaceInfo_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_uri = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_uri')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_photoUrlTemplate = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_photoUrlTemplate')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_logId = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_logId')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_point = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_point')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_category = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_category')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_shortName = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_shortName')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_rating = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_rating')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_workingHours = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_workingHours')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_address = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_address')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_tag = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_tag')
        .asFunction(isLeaf: true);
