part of 'business_filter.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessFilterImpl.getNativePtr',
    toPlatform:
        '(val) => SearchBusinessFilterImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchBusinessFilter')
final class SearchBusinessFilterImpl implements SearchBusinessFilter {
  SearchBusinessFilterImpl(
      core.String id,
      core.String? name,
      core.bool? disabled,
      mapkit_image.Image? iconLight,
      mapkit_image.Image? iconDark,
      core.bool? singleSelect,
      SearchBusinessFilterValues values)
      : this.fromNativePtr(_SearchBusinessFilter_init(
            to_native.toNativeString(id),
            to_native.toNativePtrString(name),
            to_native.toNativePtrBool(disabled),
            mapkit_image.ImageImpl.getNativePtr(iconLight),
            mapkit_image.ImageImpl.getNativePtr(iconDark),
            to_native.toNativePtrBool(singleSelect),
            SearchBusinessFilterValuesImpl.toNative(values)));

  @core.override
  late final id =
      to_platform.toPlatformString(_SearchBusinessFilter_get_id(_ptr));
  @core.override
  late final name = to_platform
      .toPlatformFromPointerString(_SearchBusinessFilter_get_name(_ptr));
  @core.override
  late final disabled = to_platform
      .toPlatformFromPointerBool(_SearchBusinessFilter_get_disabled(_ptr));
  @core.override
  late final iconLight = mapkit_image.ImageImpl.fromOptionalPtr(
      _SearchBusinessFilter_get_iconLight(_ptr));
  @core.override
  late final iconDark = mapkit_image.ImageImpl.fromOptionalPtr(
      _SearchBusinessFilter_get_iconDark(_ptr));
  @core.override
  late final singleSelect = to_platform
      .toPlatformFromPointerBool(_SearchBusinessFilter_get_singleSelect(_ptr));
  @core.override
  late final values = SearchBusinessFilterValuesImpl.toPlatform(
      _SearchBusinessFilter_get_values(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchBusinessFilter_free.cast());

  SearchBusinessFilterImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchBusinessFilter? obj) {
    return (obj as SearchBusinessFilterImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchBusinessFilter? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchBusinessFilterImpl.fromNativePtr(ptr);
  }

  static SearchBusinessFilter? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchBusinessFilterImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchBusinessFilter_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchBusinessFilter_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        SearchBusinessFilterValuesNative) _SearchBusinessFilter_init =
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
                        SearchBusinessFilterValuesNative)>>(
            'yandex_flutter_search_SearchBusinessFilter_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessFilter_get_id = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessFilter_get_id')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessFilter_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessFilter_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessFilter_get_disabled = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessFilter_get_disabled')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessFilter_get_iconLight = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessFilter_get_iconLight')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessFilter_get_iconDark = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessFilter_get_iconDark')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessFilter_get_singleSelect = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessFilter_get_singleSelect')
        .asFunction(isLeaf: true);
final SearchBusinessFilterValuesNative Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessFilter_get_values = lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchBusinessFilterValuesNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessFilter_get_values')
        .asFunction(isLeaf: true);

final class SearchBusinessFilterBooleanValueNative extends ffi.Struct {
  @ffi.Bool()
  external core.bool value;
  external ffi.Pointer<ffi.Void> selected;
}

final SearchBusinessFilterBooleanValueNative Function(
    core.bool,
    ffi
        .Pointer<ffi.Void>) _SearchBusinessFilterBooleanValueNativeInit = lib
    .library
    .lookup<
            ffi.NativeFunction<
                SearchBusinessFilterBooleanValueNative Function(
                    ffi.Bool, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessFilter_SearchBusinessFilterBooleanValue_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessFilterBooleanValueImpl.toPointer',
    toPlatform:
        '(val) => SearchBusinessFilterBooleanValueImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchBusinessFilterBooleanValue')
extension SearchBusinessFilterBooleanValueImpl
    on SearchBusinessFilterBooleanValue {
  static SearchBusinessFilterBooleanValue fromNative(
      SearchBusinessFilterBooleanValueNative native) {
    return SearchBusinessFilterBooleanValue(
        value: native.value,
        selected: to_platform.toPlatformFromPointerBool(native.selected));
  }

  static SearchBusinessFilterBooleanValueNative toNative(
      SearchBusinessFilterBooleanValue obj) {
    return _SearchBusinessFilterBooleanValueNativeInit(
        obj.value, to_native.toNativePtrBool(obj.selected));
  }

  static SearchBusinessFilterBooleanValue? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchBusinessFilterBooleanValueImpl.fromNative(
        ptr.cast<SearchBusinessFilterBooleanValueNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      SearchBusinessFilterBooleanValue? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchBusinessFilterBooleanValueNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessFilterEnumValueImpl.getNativePtr',
    toPlatform:
        '(val) => SearchBusinessFilterEnumValueImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchBusinessFilterEnumValue')
final class SearchBusinessFilterEnumValueImpl
    implements SearchBusinessFilterEnumValue {
  SearchBusinessFilterEnumValueImpl(search_feature.SearchFeatureEnumValue value,
      core.bool? selected, core.bool? disabled)
      : this.fromNativePtr(_SearchBusinessFilterEnumValue_init(
            search_feature.SearchFeatureEnumValueImpl.getNativePtr(value),
            to_native.toNativePtrBool(selected),
            to_native.toNativePtrBool(disabled)));

  @core.override
  late final value = search_feature.SearchFeatureEnumValueImpl.fromNativePtr(
      _SearchBusinessFilterEnumValue_get_value(_ptr));
  @core.override
  late final selected = to_platform.toPlatformFromPointerBool(
      _SearchBusinessFilterEnumValue_get_selected(_ptr));
  @core.override
  late final disabled = to_platform.toPlatformFromPointerBool(
      _SearchBusinessFilterEnumValue_get_disabled(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchBusinessFilterEnumValue_free.cast());

  SearchBusinessFilterEnumValueImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchBusinessFilterEnumValue? obj) {
    return (obj as SearchBusinessFilterEnumValueImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchBusinessFilterEnumValue? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchBusinessFilterEnumValueImpl.fromNativePtr(ptr);
  }

  static SearchBusinessFilterEnumValue? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchBusinessFilterEnumValueImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchBusinessFilterEnumValue_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_search_BusinessFilter_SearchBusinessFilterEnumValue_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _SearchBusinessFilterEnumValue_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessFilter_SearchBusinessFilterEnumValue_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchBusinessFilterEnumValue_get_value = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessFilter_SearchBusinessFilterEnumValue_get_value')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchBusinessFilterEnumValue_get_selected = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessFilter_SearchBusinessFilterEnumValue_get_selected')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchBusinessFilterEnumValue_get_disabled = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessFilter_SearchBusinessFilterEnumValue_get_disabled')
    .asFunction(isLeaf: true);

final class SearchBusinessFilterRangeValueNative extends ffi.Struct {
  @ffi.Double()
  external core.double from;
  @ffi.Double()
  external core.double to;
}

final SearchBusinessFilterRangeValueNative Function(
    core.double,
    core
        .double) _SearchBusinessFilterRangeValueNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                SearchBusinessFilterRangeValueNative Function(
                    ffi.Double, ffi.Double)>>(
        'yandex_flutter_search_BusinessFilter_SearchBusinessFilterRangeValue_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessFilterRangeValueImpl.toPointer',
    toPlatform:
        '(val) => SearchBusinessFilterRangeValueImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchBusinessFilterRangeValue')
extension SearchBusinessFilterRangeValueImpl on SearchBusinessFilterRangeValue {
  static SearchBusinessFilterRangeValue fromNative(
      SearchBusinessFilterRangeValueNative native) {
    return SearchBusinessFilterRangeValue(from: native.from, to: native.to);
  }

  static SearchBusinessFilterRangeValueNative toNative(
      SearchBusinessFilterRangeValue obj) {
    return _SearchBusinessFilterRangeValueNativeInit(obj.from, obj.to);
  }

  static SearchBusinessFilterRangeValue? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchBusinessFilterRangeValueImpl.fromNative(
        ptr.cast<SearchBusinessFilterRangeValueNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchBusinessFilterRangeValue? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchBusinessFilterRangeValueNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class SearchBusinessFilterDateValueNative extends ffi.Struct {
  @ffi.Int()
  external core.int reserved;
}

final SearchBusinessFilterDateValueNative Function(
    core
        .int) _SearchBusinessFilterDateValueNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                SearchBusinessFilterDateValueNative Function(ffi.Int)>>(
        'yandex_flutter_search_BusinessFilter_SearchBusinessFilterDateValue_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessFilterDateValueImpl.toPointer',
    toPlatform:
        '(val) => SearchBusinessFilterDateValueImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchBusinessFilterDateValue')
extension SearchBusinessFilterDateValueImpl on SearchBusinessFilterDateValue {
  static SearchBusinessFilterDateValue fromNative(
      SearchBusinessFilterDateValueNative native) {
    return SearchBusinessFilterDateValue(reserved: native.reserved);
  }

  static SearchBusinessFilterDateValueNative toNative(
      SearchBusinessFilterDateValue obj) {
    return _SearchBusinessFilterDateValueNativeInit(obj.reserved);
  }

  static SearchBusinessFilterDateValue? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchBusinessFilterDateValueImpl.fromNative(
        ptr.cast<SearchBusinessFilterDateValueNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchBusinessFilterDateValue? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchBusinessFilterDateValueNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class _SearchBusinessFilterValuesNativeData extends ffi.Union {
  external ffi.Pointer<ffi.Void> booleans;
  external ffi.Pointer<ffi.Void> enums;
  external SearchBusinessFilterRangeValueNative range;
  external SearchBusinessFilterDateValueNative date;
}

final class SearchBusinessFilterValuesNative extends ffi.Struct {
  @ffi.Int()
  external core.int tag;
  external _SearchBusinessFilterValuesNativeData data;
}

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessFilterValuesImpl.toPointer',
    toPlatform:
        '(val) => SearchBusinessFilterValuesImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchBusinessFilterValues')
extension SearchBusinessFilterValuesImpl on SearchBusinessFilterValues {
  static SearchBusinessFilterValuesNative toNative(
      SearchBusinessFilterValues obj) {
    if (obj._value is core.List<SearchBusinessFilterBooleanValue>) {
      return _BusinessFilter_ValuesNative_VectorBusinessFilter_BooleanValueNative_init(
          SearchBusinessFilterBooleanValueContainerExtension.toNativeVector(
              obj._value));
    }
    if (obj._value is core.List<SearchBusinessFilterEnumValue>) {
      return _BusinessFilter_ValuesNative_VectorBusinessFilter_EnumValue_init(
          SearchBusinessFilterEnumValueContainerExtension.toNativeVector(
              obj._value));
    }
    if (obj._value is SearchBusinessFilterRangeValue) {
      return _BusinessFilter_ValuesNative_BusinessFilter_RangeValueNative_init(
          SearchBusinessFilterRangeValueImpl.toNative(obj._value));
    }
    if (obj._value is SearchBusinessFilterDateValue) {
      return _BusinessFilter_ValuesNative_BusinessFilter_DateValueNative_init(
          SearchBusinessFilterDateValueImpl.toNative(obj._value));
    }
    throw core.TypeError();
  }

  static SearchBusinessFilterValues toPlatform(
      SearchBusinessFilterValuesNative obj) {
    switch (obj.tag) {
      case 0:
        return SearchBusinessFilterValues.fromVectorBooleanValue(
            SearchBusinessFilterBooleanValueContainerExtension.toPlatformVector(
                obj.data.booleans));
      case 1:
        return SearchBusinessFilterValues.fromVectorEnumValue(
            SearchBusinessFilterEnumValueContainerExtension.toPlatformVector(
                obj.data.enums));
      case 2:
        return SearchBusinessFilterValues.fromRangeValue(
            SearchBusinessFilterRangeValueImpl.fromNative(obj.data.range));
      case 3:
        return SearchBusinessFilterValues.fromDateValue(
            SearchBusinessFilterDateValueImpl.fromNative(obj.data.date));
    }
    throw core.TypeError();
  }

  static SearchBusinessFilterValues? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = toPlatform(ptr.cast<SearchBusinessFilterValuesNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchBusinessFilterValues? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<SearchBusinessFilterValuesNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final SearchBusinessFilterValuesNative Function(ffi.Pointer<ffi.Void>)
    _BusinessFilter_ValuesNative_VectorBusinessFilter_BooleanValueNative_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchBusinessFilterValuesNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_BusinessFilter_SearchBusinessFilterValues_VectorBusinessFilter_BooleanValueNative_init')
        .asFunction(isLeaf: true);
final SearchBusinessFilterValuesNative Function(ffi.Pointer<ffi.Void>)
    _BusinessFilter_ValuesNative_VectorBusinessFilter_EnumValue_init = lib
        .library
        .lookup<
                ffi.NativeFunction<
                    SearchBusinessFilterValuesNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_BusinessFilter_SearchBusinessFilterValues_VectorBusinessFilter_EnumValue_init')
        .asFunction(isLeaf: true);
final SearchBusinessFilterValuesNative Function(
        SearchBusinessFilterRangeValueNative)
    _BusinessFilter_ValuesNative_BusinessFilter_RangeValueNative_init = lib
        .library
        .lookup<
                ffi.NativeFunction<
                    SearchBusinessFilterValuesNative Function(
                        SearchBusinessFilterRangeValueNative)>>(
            'yandex_flutter_search_BusinessFilter_SearchBusinessFilterValues_BusinessFilter_RangeValueNative_init')
        .asFunction(isLeaf: true);
final SearchBusinessFilterValuesNative Function(
        SearchBusinessFilterDateValueNative)
    _BusinessFilter_ValuesNative_BusinessFilter_DateValueNative_init = lib
        .library
        .lookup<
                ffi.NativeFunction<
                    SearchBusinessFilterValuesNative Function(
                        SearchBusinessFilterDateValueNative)>>(
            'yandex_flutter_search_BusinessFilter_SearchBusinessFilterValues_BusinessFilter_DateValueNative_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchFilterSetImpl.getNativePtr',
    toPlatform:
        '(val) => SearchFilterSetImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchFilterSet')
final class SearchFilterSetImpl implements SearchFilterSet {
  SearchFilterSetImpl(core.List<core.String> ids)
      : this.fromNativePtr(
            _SearchFilterSet_init(to_native.toNativeVectorString(ids)));

  @core.override
  late final ids = to_platform.toVectorString(_SearchFilterSet_get_ids(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchFilterSet_free.cast());

  SearchFilterSetImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchFilterSet? obj) {
    return (obj as SearchFilterSetImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchFilterSet? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : SearchFilterSetImpl.fromNativePtr(ptr);
  }

  static SearchFilterSet? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchFilterSetImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchFilterSet_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchFilterSet_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFilterSet_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFilterSet_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFilterSet_get_ids = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFilterSet_get_ids')
        .asFunction(isLeaf: true);
