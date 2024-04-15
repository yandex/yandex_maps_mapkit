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

part 'availability.containers.dart';

/// @nodoc
final class SearchTimeRangeNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> isTwentyFourHours;
  external ffi.Pointer<ffi.Void> from;
  external ffi.Pointer<ffi.Void> to;
}

final SearchTimeRangeNative Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchTimeRangeNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchTimeRangeNative Function(ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchTimeRange_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchTimeRange.toPointer',
    toPlatform: '(val) => SearchTimeRange.fromPointer(val, needFree: false)')
class SearchTimeRange {
  final core.bool? isTwentyFourHours;
  final core.int? from;
  final core.int? to;

  const SearchTimeRange({
    this.isTwentyFourHours,
    this.from,
    this.to,
  });

  /// @nodoc
  @internal
  SearchTimeRange.fromNative(SearchTimeRangeNative native)
      : this(
            isTwentyFourHours:
                to_platform.toPlatformFromPointerBool(native.isTwentyFourHours),
            from: to_platform.toPlatformFromPointerUint32(native.from),
            to: to_platform.toPlatformFromPointerUint32(native.to));

  /// @nodoc
  @internal
  static SearchTimeRangeNative toNative(SearchTimeRange c) {
    return _SearchTimeRangeNativeInit(
        to_native.toNativePtrBool(c.isTwentyFourHours),
        to_native.toNativePtrUint32(c.from),
        to_native.toNativePtrUint32(c.to));
  }

  /// @nodoc
  @internal
  static SearchTimeRange? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SearchTimeRange.fromNative(ptr.cast<SearchTimeRangeNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchTimeRange? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchTimeRangeNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// A group of week days.
@bindings_annotations.ContainerData(
    toNative: 'SearchDayGroup.toPointer',
    toPlatform: '(val) => SearchDayGroup.fromPointer(val, needFree: false)')
class SearchDayGroup {
  /// Nothing.
  static const None = SearchDayGroup(0);

  /// Sunday.
  static const Sunday = SearchDayGroup(1);

  /// Monday.
  static const Monday = SearchDayGroup(1 << 1);

  /// Tuesday.
  static const Tuesday = SearchDayGroup(1 << 2);

  /// Wednesday.
  static const Wednesday = SearchDayGroup(1 << 3);

  /// Thursday.
  static const Thursday = SearchDayGroup(1 << 4);

  /// Friday.
  static const Friday = SearchDayGroup(1 << 5);

  /// Saturday.
  static const Saturday = SearchDayGroup(1 << 6);

  /// Weekdays from Monday to Friday.
  static const Weekdays =
      SearchDayGroup(1 << 1 | 1 << 2 | 1 << 3 | 1 << 4 | 1 << 5);

  /// Weekend days (Saturday and Sunday)
  static const Weekend = SearchDayGroup(1 << 6 | 1);

  /// Every day of the week
  static const Everyday =
      SearchDayGroup(1 << 1 | 1 << 2 | 1 << 3 | 1 << 4 | 1 << 5 | 1 << 6 | 1);

  const SearchDayGroup(this.value);
  final core.int value;

  SearchDayGroup operator |(SearchDayGroup other) {
    return SearchDayGroup(value | other.value);
  }

  SearchDayGroup operator &(SearchDayGroup other) {
    return SearchDayGroup(value & other.value);
  }

  SearchDayGroup operator ~() {
    return SearchDayGroup(~value);
  }

  /// @nodoc
  @internal
  static SearchDayGroup fromInt(core.int val) {
    return SearchDayGroup(val);
  }

  /// @nodoc
  @internal
  static core.int toInt(SearchDayGroup e) {
    return e.value;
  }

  /// @nodoc
  @internal
  static SearchDayGroup? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(SearchDayGroup? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SearchAvailability.toPointer',
    toPlatform: '(val) => SearchAvailability.fromPointer(val, needFree: false)')
class SearchAvailability implements ffi.Finalizable {
  late final days = SearchDayGroup.fromInt(_SearchAvailability_get_days(_ptr));
  late final timeRanges = SearchTimeRangeContainerExtension.toPlatformVector(
      _SearchAvailability_get_timeRanges(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchAvailability_free.cast());

  SearchAvailability(SearchDayGroup days, core.List<SearchTimeRange> timeRanges)
      : this.fromNativePtr(_SearchAvailability_init(SearchDayGroup.toInt(days),
            SearchTimeRangeContainerExtension.toNativeVector(timeRanges)));

  /// @nodoc
  @internal
  SearchAvailability.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchAvailability? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchAvailability? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchAvailability.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchAvailability? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchAvailability.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchAvailability? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchAvailability_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchAvailability_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAvailability_clone')
        .asFunction(isLeaf: true);

final _SearchAvailability_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchAvailability_free');

final ffi.Pointer<ffi.Void> Function(core.int, ffi.Pointer<ffi.Void>)
    _SearchAvailability_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Int64, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAvailability_init')
        .asFunction(isLeaf: true);

final core.int Function(ffi.Pointer<ffi.Void>) _SearchAvailability_get_days =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAvailability_get_days')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchAvailability_get_timeRanges = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAvailability_get_timeRanges')
        .asFunction(isLeaf: true);
