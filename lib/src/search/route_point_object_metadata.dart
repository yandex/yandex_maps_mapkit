import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/direction.dart'
    as mapkit_geometry_direction;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/mapkit/money.dart' as mapkit_money;

part 'route_point_object_metadata.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchEntrance.toPointer',
    toPlatform: '(val) => SearchEntrance.fromPointer(val, needFree: false)')
class SearchEntrance implements ffi.Finalizable {
  late final name =
      to_platform.toPlatformFromPointerString(_SearchEntrance_get_name(_ptr));
  late final point =
      mapkit_geometry_point.Point.fromNative(_SearchEntrance_get_point(_ptr));
  late final direction = mapkit_geometry_direction.Direction.fromPointer(
      _SearchEntrance_get_direction(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchEntrance_free.cast());

  SearchEntrance(core.String? name, mapkit_geometry_point.Point point,
      mapkit_geometry_direction.Direction? direction)
      : this.fromNativePtr(_SearchEntrance_init(
            to_native.toNativePtrString(name),
            mapkit_geometry_point.Point.toNative(point),
            mapkit_geometry_direction.Direction.toPointer(direction)));

  /// @nodoc
  @internal
  SearchEntrance.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchEntrance? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchEntrance? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchEntrance.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchEntrance? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SearchEntrance.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchEntrance? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchEntrance_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchEntrance_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEntrance_clone')
        .asFunction(isLeaf: true);

final _SearchEntrance_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchEntrance_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
        mapkit_geometry_point.PointNative, ffi.Pointer<ffi.Void>)
    _SearchEntrance_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEntrance_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchEntrance_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEntrance_get_name')
        .asFunction(isLeaf: true);
final mapkit_geometry_point.PointNative Function(ffi.Pointer<ffi.Void>)
    _SearchEntrance_get_point = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_point.PointNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEntrance_get_point')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchEntrance_get_direction = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEntrance_get_direction')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchParkingAttributes.toPointer',
    toPlatform:
        '(val) => SearchParkingAttributes.fromPointer(val, needFree: false)')
class SearchParkingAttributes implements ffi.Finalizable {
  late final orgURI = to_platform
      .toPlatformFromPointerString(_SearchParkingAttributes_get_orgURI(_ptr));
  late final firstHourPrice = mapkit_money.TaxiMoney.fromPointer(
      _SearchParkingAttributes_get_firstHourPrice(_ptr));
  late final placesCount = to_platform.toPlatformFromPointerUint32(
      _SearchParkingAttributes_get_placesCount(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchParkingAttributes_free.cast());

  SearchParkingAttributes(core.String? orgURI,
      mapkit_money.TaxiMoney? firstHourPrice, core.int? placesCount)
      : this.fromNativePtr(_SearchParkingAttributes_init(
            to_native.toNativePtrString(orgURI),
            mapkit_money.TaxiMoney.toPointer(firstHourPrice),
            to_native.toNativePtrUint32(placesCount)));

  /// @nodoc
  @internal
  SearchParkingAttributes.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchParkingAttributes? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchParkingAttributes? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchParkingAttributes.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchParkingAttributes? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchParkingAttributes.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchParkingAttributes? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchParkingAttributes_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchParkingAttributes_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchParkingAttributes_clone')
        .asFunction(isLeaf: true);

final _SearchParkingAttributes_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchParkingAttributes_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchParkingAttributes_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchParkingAttributes_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchParkingAttributes_get_orgURI = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchParkingAttributes_get_orgURI')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchParkingAttributes_get_firstHourPrice = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchParkingAttributes_get_firstHourPrice')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchParkingAttributes_get_placesCount = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchParkingAttributes_get_placesCount')
        .asFunction(isLeaf: true);
