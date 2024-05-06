part of 'filter_collection.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchFilterCollectionImpl.toPointer',
    toPlatform:
        '(val) => SearchFilterCollectionImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchFilterCollection')
final class SearchFilterCollectionImpl implements SearchFilterCollection {
  SearchFilterCollectionImpl(
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

  @core.override
  late final booleanFilters = to_platform
      .toVectorString(_SearchFilterCollection_get_booleanFilters(_ptr));
  @core.override
  late final enumFilters = to_platform
      .toMapVectorString(_SearchFilterCollection_get_enumFilters(_ptr));
  @core.override
  late final rangeFilters =
      SearchFilterCollectionNumberRangeContainerExtension.toPlatformMap(
          _SearchFilterCollection_get_rangeFilters(_ptr));
  @core.override
  late final dateFilters =
      SearchFilterCollectionDateRangeContainerExtension.toPlatformMap(
          _SearchFilterCollection_get_dateFilters(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchFilterCollection_free.cast());

  SearchFilterCollectionImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchFilterCollection? obj) {
    return (obj as SearchFilterCollectionImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchFilterCollection? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchFilterCollectionImpl.fromNativePtr(ptr);
  }

  static SearchFilterCollection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchFilterCollectionImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

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
    toNative: 'SearchFilterCollectionNumberRangeImpl.toPointer',
    toPlatform:
        '(val) => SearchFilterCollectionNumberRangeImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchFilterCollectionNumberRange')
extension SearchFilterCollectionNumberRangeImpl
    on SearchFilterCollectionNumberRange {
  static SearchFilterCollectionNumberRange fromNative(
      SearchFilterCollectionNumberRangeNative native) {
    return SearchFilterCollectionNumberRange(from: native.from, to: native.to);
  }

  static SearchFilterCollectionNumberRangeNative toNative(
      SearchFilterCollectionNumberRange obj) {
    return _SearchFilterCollectionNumberRangeNativeInit(obj.from, obj.to);
  }

  static SearchFilterCollectionNumberRange? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchFilterCollectionNumberRangeImpl.fromNative(
        ptr.cast<SearchFilterCollectionNumberRangeNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      SearchFilterCollectionNumberRange? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchFilterCollectionNumberRangeNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

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
    toNative: 'SearchFilterCollectionDateRangeImpl.toPointer',
    toPlatform:
        '(val) => SearchFilterCollectionDateRangeImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchFilterCollectionDateRange')
extension SearchFilterCollectionDateRangeImpl
    on SearchFilterCollectionDateRange {
  static SearchFilterCollectionDateRange fromNative(
      SearchFilterCollectionDateRangeNative native) {
    return SearchFilterCollectionDateRange(
        from: to_platform.toPlatformString(native.from),
        to: to_platform.toPlatformString(native.to));
  }

  static SearchFilterCollectionDateRangeNative toNative(
      SearchFilterCollectionDateRange obj) {
    return _SearchFilterCollectionDateRangeNativeInit(
        to_native.toNativeString(obj.from), to_native.toNativeString(obj.to));
  }

  static SearchFilterCollectionDateRange? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchFilterCollectionDateRangeImpl.fromNative(
        ptr.cast<SearchFilterCollectionDateRangeNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchFilterCollectionDateRange? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchFilterCollectionDateRangeNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
