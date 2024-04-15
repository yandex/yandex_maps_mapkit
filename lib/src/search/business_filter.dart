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
import 'package:yandex_maps_mapkit/src/mapkit/image.dart' as mapkit_image;
import 'package:yandex_maps_mapkit/src/search/feature.dart' as search_feature;

part 'business_filter.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessFilter.toPointer',
    toPlatform:
        '(val) => SearchBusinessFilter.fromPointer(val, needFree: false)')
class SearchBusinessFilter implements ffi.Finalizable {
  late final id =
      to_platform.toPlatformString(_SearchBusinessFilter_get_id(_ptr));
  late final name = to_platform
      .toPlatformFromPointerString(_SearchBusinessFilter_get_name(_ptr));
  late final disabled = to_platform
      .toPlatformFromPointerBool(_SearchBusinessFilter_get_disabled(_ptr));
  late final iconLight = mapkit_image.Image.fromOptionalPtr(
      _SearchBusinessFilter_get_iconLight(_ptr));
  late final iconDark = mapkit_image.Image.fromOptionalPtr(
      _SearchBusinessFilter_get_iconDark(_ptr));
  late final singleSelect = to_platform
      .toPlatformFromPointerBool(_SearchBusinessFilter_get_singleSelect(_ptr));
  late final values = SearchBusinessFilterValues.toPlatform(
      _SearchBusinessFilter_get_values(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchBusinessFilter_free.cast());

  SearchBusinessFilter(
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
            mapkit_image.Image.getNativePtr(iconLight),
            mapkit_image.Image.getNativePtr(iconDark),
            to_native.toNativePtrBool(singleSelect),
            SearchBusinessFilterValues.toNative(values)));

  /// @nodoc
  @internal
  SearchBusinessFilter.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchBusinessFilter? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchBusinessFilter? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchBusinessFilter.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchBusinessFilter? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchBusinessFilter.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchBusinessFilter? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchBusinessFilter_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessFilter_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessFilter_clone')
        .asFunction(isLeaf: true);

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

/// @nodoc
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
    toNative: 'SearchBusinessFilterBooleanValue.toPointer',
    toPlatform:
        '(val) => SearchBusinessFilterBooleanValue.fromPointer(val, needFree: false)')
class SearchBusinessFilterBooleanValue {
  final core.bool value;
  final core.bool? selected;

  const SearchBusinessFilterBooleanValue({
    required this.value,
    this.selected,
  });

  /// @nodoc
  @internal
  SearchBusinessFilterBooleanValue.fromNative(
      SearchBusinessFilterBooleanValueNative native)
      : this(
            value: native.value,
            selected: to_platform.toPlatformFromPointerBool(native.selected));

  /// @nodoc
  @internal
  static SearchBusinessFilterBooleanValueNative toNative(
      SearchBusinessFilterBooleanValue c) {
    return _SearchBusinessFilterBooleanValueNativeInit(
        c.value, to_native.toNativePtrBool(c.selected));
  }

  /// @nodoc
  @internal
  static SearchBusinessFilterBooleanValue? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchBusinessFilterBooleanValue.fromNative(
        ptr.cast<SearchBusinessFilterBooleanValueNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      SearchBusinessFilterBooleanValue? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchBusinessFilterBooleanValueNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessFilterEnumValue.toPointer',
    toPlatform:
        '(val) => SearchBusinessFilterEnumValue.fromPointer(val, needFree: false)')
class SearchBusinessFilterEnumValue implements ffi.Finalizable {
  late final value = search_feature.SearchFeatureEnumValue.fromNativePtr(
      _SearchBusinessFilterEnumValue_get_value(_ptr));
  late final selected = to_platform.toPlatformFromPointerBool(
      _SearchBusinessFilterEnumValue_get_selected(_ptr));
  late final disabled = to_platform.toPlatformFromPointerBool(
      _SearchBusinessFilterEnumValue_get_disabled(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchBusinessFilterEnumValue_free.cast());

  SearchBusinessFilterEnumValue(search_feature.SearchFeatureEnumValue value,
      core.bool? selected, core.bool? disabled)
      : this.fromNativePtr(_SearchBusinessFilterEnumValue_init(
            search_feature.SearchFeatureEnumValue.getNativePtr(value),
            to_native.toNativePtrBool(selected),
            to_native.toNativePtrBool(disabled)));

  /// @nodoc
  @internal
  SearchBusinessFilterEnumValue.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchBusinessFilterEnumValue? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchBusinessFilterEnumValue? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchBusinessFilterEnumValue.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchBusinessFilterEnumValue? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchBusinessFilterEnumValue.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchBusinessFilterEnumValue? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchBusinessFilterEnumValue_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchBusinessFilterEnumValue_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessFilter_SearchBusinessFilterEnumValue_clone')
    .asFunction(isLeaf: true);

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

/// @nodoc
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
    toNative: 'SearchBusinessFilterRangeValue.toPointer',
    toPlatform:
        '(val) => SearchBusinessFilterRangeValue.fromPointer(val, needFree: false)')
class SearchBusinessFilterRangeValue {
  final core.double from;
  final core.double to;

  const SearchBusinessFilterRangeValue({
    required this.from,
    required this.to,
  });

  /// @nodoc
  @internal
  SearchBusinessFilterRangeValue.fromNative(
      SearchBusinessFilterRangeValueNative native)
      : this(from: native.from, to: native.to);

  /// @nodoc
  @internal
  static SearchBusinessFilterRangeValueNative toNative(
      SearchBusinessFilterRangeValue c) {
    return _SearchBusinessFilterRangeValueNativeInit(c.from, c.to);
  }

  /// @nodoc
  @internal
  static SearchBusinessFilterRangeValue? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchBusinessFilterRangeValue.fromNative(
        ptr.cast<SearchBusinessFilterRangeValueNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchBusinessFilterRangeValue? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchBusinessFilterRangeValueNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
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
    toNative: 'SearchBusinessFilterDateValue.toPointer',
    toPlatform:
        '(val) => SearchBusinessFilterDateValue.fromPointer(val, needFree: false)')
class SearchBusinessFilterDateValue {
  final core.int reserved;

  const SearchBusinessFilterDateValue({
    required this.reserved,
  });

  /// @nodoc
  @internal
  SearchBusinessFilterDateValue.fromNative(
      SearchBusinessFilterDateValueNative native)
      : this(reserved: native.reserved);

  /// @nodoc
  @internal
  static SearchBusinessFilterDateValueNative toNative(
      SearchBusinessFilterDateValue c) {
    return _SearchBusinessFilterDateValueNativeInit(c.reserved);
  }

  /// @nodoc
  @internal
  static SearchBusinessFilterDateValue? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchBusinessFilterDateValue.fromNative(
        ptr.cast<SearchBusinessFilterDateValueNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchBusinessFilterDateValue? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchBusinessFilterDateValueNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
@internal
final class SearchBusinessFilterValuesNativeData extends ffi.Union {
  external ffi.Pointer<ffi.Void> booleans;
  external ffi.Pointer<ffi.Void> enums;
  external SearchBusinessFilterRangeValueNative range;
  external SearchBusinessFilterDateValueNative date;
}

/// @nodoc
@internal
final class SearchBusinessFilterValuesNative extends ffi.Struct {
  @ffi.Int()
  external core.int tag;
  external SearchBusinessFilterValuesNativeData data;
}

/// Possible filter values.
@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessFilterValues.toPointer',
    toPlatform:
        '(val) => SearchBusinessFilterValues.fromPointer(val, needFree: false)')
class SearchBusinessFilterValues {
  const SearchBusinessFilterValues.fromVectorBooleanValue(
      core.List<SearchBusinessFilterBooleanValue> booleans)
      : _value = booleans;

  const SearchBusinessFilterValues.fromVectorEnumValue(
      core.List<SearchBusinessFilterEnumValue> enums)
      : _value = enums;

  const SearchBusinessFilterValues.fromRangeValue(
      SearchBusinessFilterRangeValue range)
      : _value = range;

  const SearchBusinessFilterValues.fromDateValue(
      SearchBusinessFilterDateValue date)
      : _value = date;

  /// @nodoc
  @internal
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
            SearchBusinessFilterRangeValue.fromNative(obj.data.range));
      case 3:
        return SearchBusinessFilterValues.fromDateValue(
            SearchBusinessFilterDateValue.fromNative(obj.data.date));
    }
    throw core.TypeError();
  }

  /// @nodoc
  @internal
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
          SearchBusinessFilterRangeValue.toNative(obj._value));
    }
    if (obj._value is SearchBusinessFilterDateValue) {
      return _BusinessFilter_ValuesNative_BusinessFilter_DateValueNative_init(
          SearchBusinessFilterDateValue.toNative(obj._value));
    }
    throw core.TypeError();
  }

  core.List<SearchBusinessFilterBooleanValue>? asVectorBooleanValue() {
    if (_value is core.List<SearchBusinessFilterBooleanValue>) {
      return _value;
    }
    return null;
  }

  core.List<SearchBusinessFilterEnumValue>? asVectorEnumValue() {
    if (_value is core.List<SearchBusinessFilterEnumValue>) {
      return _value;
    }
    return null;
  }

  SearchBusinessFilterRangeValue? asRangeValue() {
    if (_value is SearchBusinessFilterRangeValue) {
      return _value;
    }
    return null;
  }

  SearchBusinessFilterDateValue? asDateValue() {
    if (_value is SearchBusinessFilterDateValue) {
      return _value;
    }
    return null;
  }

  /// Applies the passed function to the variant value.
  void when({
    required void Function(core.List<SearchBusinessFilterBooleanValue> value)
        onVectorBooleanValue,
    required void Function(core.List<SearchBusinessFilterEnumValue> value)
        onVectorEnumValue,
    required void Function(SearchBusinessFilterRangeValue value) onRangeValue,
    required void Function(SearchBusinessFilterDateValue value) onDateValue,
  }) {
    if (_value is core.List<SearchBusinessFilterBooleanValue>) {
      return onVectorBooleanValue(
          _value as core.List<SearchBusinessFilterBooleanValue>);
    }
    if (_value is core.List<SearchBusinessFilterEnumValue>) {
      return onVectorEnumValue(
          _value as core.List<SearchBusinessFilterEnumValue>);
    }
    if (_value is SearchBusinessFilterRangeValue) {
      return onRangeValue(_value as SearchBusinessFilterRangeValue);
    }
    if (_value is SearchBusinessFilterDateValue) {
      return onDateValue(_value as SearchBusinessFilterDateValue);
    }
    assert(false);
  }

  /// @nodoc
  @internal
  static SearchBusinessFilterValues? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = toPlatform(ptr.cast<SearchBusinessFilterValuesNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchBusinessFilterValues? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<SearchBusinessFilterValuesNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }

  final core.dynamic _value;
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
    toNative: 'SearchFilterSet.toPointer',
    toPlatform: '(val) => SearchFilterSet.fromPointer(val, needFree: false)')
class SearchFilterSet implements ffi.Finalizable {
  late final ids = to_platform.toVectorString(_SearchFilterSet_get_ids(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchFilterSet_free.cast());

  SearchFilterSet(core.List<core.String> ids)
      : this.fromNativePtr(
            _SearchFilterSet_init(to_native.toNativeVectorString(ids)));

  /// @nodoc
  @internal
  SearchFilterSet.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchFilterSet? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchFilterSet? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchFilterSet.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchFilterSet? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SearchFilterSet.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchFilterSet? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchFilterSet_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFilterSet_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFilterSet_clone')
        .asFunction(isLeaf: true);

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
