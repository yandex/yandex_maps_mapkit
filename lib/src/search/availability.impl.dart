part of 'availability.dart';

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
    toNative: 'SearchTimeRangeImpl.toPointer',
    toPlatform:
        '(val) => SearchTimeRangeImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchTimeRange')
extension SearchTimeRangeImpl on SearchTimeRange {
  static SearchTimeRange fromNative(SearchTimeRangeNative native) {
    return SearchTimeRange(
        isTwentyFourHours:
            to_platform.toPlatformFromPointerBool(native.isTwentyFourHours),
        from: to_platform.toPlatformFromPointerUint32(native.from),
        to: to_platform.toPlatformFromPointerUint32(native.to));
  }

  static SearchTimeRangeNative toNative(SearchTimeRange obj) {
    return _SearchTimeRangeNativeInit(
        to_native.toNativePtrBool(obj.isTwentyFourHours),
        to_native.toNativePtrUint32(obj.from),
        to_native.toNativePtrUint32(obj.to));
  }

  static SearchTimeRange? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        SearchTimeRangeImpl.fromNative(ptr.cast<SearchTimeRangeNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchTimeRange? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchTimeRangeNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SearchDayGroupImpl.toPointer',
    toPlatform: '(val) => SearchDayGroupImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchDayGroup')
extension SearchDayGroupImpl on SearchDayGroup {
  static core.int toInt(SearchDayGroup e) {
    return e.value;
  }

  static SearchDayGroup fromInt(core.int val) {
    return SearchDayGroup(val);
  }

  static SearchDayGroup? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchDayGroup? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SearchAvailabilityImpl.getNativePtr',
    toPlatform:
        '(val) => SearchAvailabilityImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchAvailability')
final class SearchAvailabilityImpl extends SearchAvailability {
  SearchAvailabilityImpl(
      SearchDayGroup days, core.List<SearchTimeRange> timeRanges)
      : this.fromNativePtr(_SearchAvailability_init(
            SearchDayGroupImpl.toInt(days),
            SearchTimeRangeContainerExtension.toNativeVector(timeRanges)));

  @core.override
  late final days =
      SearchDayGroupImpl.fromInt(_SearchAvailability_get_days(_ptr));
  @core.override
  late final timeRanges = SearchTimeRangeContainerExtension.toPlatformVector(
      _SearchAvailability_get_timeRanges(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchAvailability_free.cast());

  SearchAvailabilityImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchAvailability? obj) {
    return (obj as SearchAvailabilityImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchAvailability? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchAvailabilityImpl.fromNativePtr(ptr);
  }

  static SearchAvailability? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchAvailabilityImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
