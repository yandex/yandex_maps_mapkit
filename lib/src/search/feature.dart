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

part 'feature.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchFeature.toPointer',
    toPlatform: '(val) => SearchFeature.fromPointer(val, needFree: false)')
class SearchFeature implements ffi.Finalizable {
  late final id = to_platform.toPlatformString(_SearchFeature_get_id(_ptr));
  late final value =
      SearchFeatureVariantValue.toPlatform(_SearchFeature_get_value(_ptr));
  late final name =
      to_platform.toPlatformFromPointerString(_SearchFeature_get_name(_ptr));
  late final aref =
      to_platform.toPlatformFromPointerString(_SearchFeature_get_aref(_ptr));
  late final iconLight =
      mapkit_image.Image.fromOptionalPtr(_SearchFeature_get_iconLight(_ptr));
  late final iconDark =
      mapkit_image.Image.fromOptionalPtr(_SearchFeature_get_iconDark(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchFeature_free.cast());

  SearchFeature(
      core.String id,
      SearchFeatureVariantValue value,
      core.String? name,
      core.String? aref,
      mapkit_image.Image? iconLight,
      mapkit_image.Image? iconDark)
      : this.fromNativePtr(_SearchFeature_init(
            to_native.toNativeString(id),
            SearchFeatureVariantValue.toNative(value),
            to_native.toNativePtrString(name),
            to_native.toNativePtrString(aref),
            mapkit_image.Image.getNativePtr(iconLight),
            mapkit_image.Image.getNativePtr(iconDark)));

  /// @nodoc
  @internal
  SearchFeature.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchFeature? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchFeature? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchFeature.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchFeature? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SearchFeature.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchFeature? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchFeature_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFeature_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFeature_clone')
        .asFunction(isLeaf: true);

final _SearchFeature_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchFeature_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString,
        SearchFeatureVariantValueNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _SearchFeature_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString,
                        SearchFeatureVariantValueNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFeature_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchFeature_get_id = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFeature_get_id')
        .asFunction(isLeaf: true);
final SearchFeatureVariantValueNative Function(ffi.Pointer<ffi.Void>)
    _SearchFeature_get_value = lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchFeatureVariantValueNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFeature_get_value')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFeature_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFeature_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFeature_get_aref = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFeature_get_aref')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFeature_get_iconLight = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFeature_get_iconLight')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFeature_get_iconDark = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFeature_get_iconDark')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchFeatureEnumValue.toPointer',
    toPlatform:
        '(val) => SearchFeatureEnumValue.fromPointer(val, needFree: false)')
class SearchFeatureEnumValue implements ffi.Finalizable {
  late final id =
      to_platform.toPlatformString(_SearchFeatureEnumValue_get_id(_ptr));
  late final name =
      to_platform.toPlatformString(_SearchFeatureEnumValue_get_name(_ptr));
  late final imageUrlTemplate = to_platform.toPlatformFromPointerString(
      _SearchFeatureEnumValue_get_imageUrlTemplate(_ptr));
  late final tags =
      to_platform.toVectorString(_SearchFeatureEnumValue_get_tags(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchFeatureEnumValue_free.cast());

  SearchFeatureEnumValue(core.String id, core.String name,
      core.String? imageUrlTemplate, core.List<core.String> tags)
      : this.fromNativePtr(_SearchFeatureEnumValue_init(
            to_native.toNativeString(id),
            to_native.toNativeString(name),
            to_native.toNativePtrString(imageUrlTemplate),
            to_native.toNativeVectorString(tags)));

  /// @nodoc
  @internal
  SearchFeatureEnumValue.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchFeatureEnumValue? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchFeatureEnumValue? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchFeatureEnumValue.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchFeatureEnumValue? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchFeatureEnumValue.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchFeatureEnumValue? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchFeatureEnumValue_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFeatureEnumValue_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_Feature_SearchFeatureEnumValue_clone')
        .asFunction(isLeaf: true);

final _SearchFeatureEnumValue_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_Feature_SearchFeatureEnumValue_free');

final ffi.Pointer<ffi.Void> Function(native_types.NativeString,
        native_types.NativeString, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchFeatureEnumValue_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString,
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_Feature_SearchFeatureEnumValue_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchFeatureEnumValue_get_id = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_Feature_SearchFeatureEnumValue_get_id')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchFeatureEnumValue_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_Feature_SearchFeatureEnumValue_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchFeatureEnumValue_get_imageUrlTemplate = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_Feature_SearchFeatureEnumValue_get_imageUrlTemplate')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFeatureEnumValue_get_tags = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_Feature_SearchFeatureEnumValue_get_tags')
        .asFunction(isLeaf: true);

/// @nodoc
final class SearchFeatureBooleanValueNative extends ffi.Struct {
  @ffi.Bool()
  external core.bool value;
}

final SearchFeatureBooleanValueNative Function(core.bool)
    _SearchFeatureBooleanValueNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchFeatureBooleanValueNative Function(ffi.Bool)>>(
            'yandex_flutter_search_Feature_SearchFeatureBooleanValue_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchFeatureBooleanValue.toPointer',
    toPlatform:
        '(val) => SearchFeatureBooleanValue.fromPointer(val, needFree: false)')
class SearchFeatureBooleanValue {
  final core.bool value;

  const SearchFeatureBooleanValue({
    required this.value,
  });

  /// @nodoc
  @internal
  SearchFeatureBooleanValue.fromNative(SearchFeatureBooleanValueNative native)
      : this(value: native.value);

  /// @nodoc
  @internal
  static SearchFeatureBooleanValueNative toNative(SearchFeatureBooleanValue c) {
    return _SearchFeatureBooleanValueNativeInit(c.value);
  }

  /// @nodoc
  @internal
  static SearchFeatureBooleanValue? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchFeatureBooleanValue.fromNative(
        ptr.cast<SearchFeatureBooleanValueNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchFeatureBooleanValue? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchFeatureBooleanValueNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
@internal
final class SearchFeatureVariantValueNativeData extends ffi.Union {
  external SearchFeatureBooleanValueNative booleanValue;
  external ffi.Pointer<ffi.Void> textValue;
  external ffi.Pointer<ffi.Void> enumValue;
}

/// @nodoc
@internal
final class SearchFeatureVariantValueNative extends ffi.Struct {
  @ffi.Int()
  external core.int tag;
  external SearchFeatureVariantValueNativeData data;
}

/// A variant combining possible feature values.
@bindings_annotations.ContainerData(
    toNative: 'SearchFeatureVariantValue.toPointer',
    toPlatform:
        '(val) => SearchFeatureVariantValue.fromPointer(val, needFree: false)')
class SearchFeatureVariantValue {
  const SearchFeatureVariantValue.fromBooleanValue(
      SearchFeatureBooleanValue booleanValue)
      : _value = booleanValue;

  const SearchFeatureVariantValue.fromVectorString(
      core.List<core.String> textValue)
      : _value = textValue;

  const SearchFeatureVariantValue.fromVectorEnumValue(
      core.List<SearchFeatureEnumValue> enumValue)
      : _value = enumValue;

  /// @nodoc
  @internal
  static SearchFeatureVariantValue toPlatform(
      SearchFeatureVariantValueNative obj) {
    switch (obj.tag) {
      case 0:
        return SearchFeatureVariantValue.fromBooleanValue(
            SearchFeatureBooleanValue.fromNative(obj.data.booleanValue));
      case 1:
        return SearchFeatureVariantValue.fromVectorString(
            to_platform.toVectorString(obj.data.textValue));
      case 2:
        return SearchFeatureVariantValue.fromVectorEnumValue(
            SearchFeatureEnumValueContainerExtension.toPlatformVector(
                obj.data.enumValue));
    }
    throw core.TypeError();
  }

  /// @nodoc
  @internal
  static SearchFeatureVariantValueNative toNative(
      SearchFeatureVariantValue obj) {
    if (obj._value is SearchFeatureBooleanValue) {
      return _Feature_VariantValueNative_Feature_BooleanValueNative_init(
          SearchFeatureBooleanValue.toNative(obj._value));
    }
    if (obj._value is core.List<core.String>) {
      return _Feature_VariantValueNative_VectorString_init(
          to_native.toNativeVectorString(obj._value));
    }
    if (obj._value is core.List<SearchFeatureEnumValue>) {
      return _Feature_VariantValueNative_VectorFeature_EnumValue_init(
          SearchFeatureEnumValueContainerExtension.toNativeVector(obj._value));
    }
    throw core.TypeError();
  }

  SearchFeatureBooleanValue? asBooleanValue() {
    if (_value is SearchFeatureBooleanValue) {
      return _value;
    }
    return null;
  }

  core.List<core.String>? asVectorString() {
    if (_value is core.List<core.String>) {
      return _value;
    }
    return null;
  }

  core.List<SearchFeatureEnumValue>? asVectorEnumValue() {
    if (_value is core.List<SearchFeatureEnumValue>) {
      return _value;
    }
    return null;
  }

  /// Applies the passed function to the variant value.
  void when({
    required void Function(SearchFeatureBooleanValue value) onBooleanValue,
    required void Function(core.List<core.String> value) onVectorString,
    required void Function(core.List<SearchFeatureEnumValue> value)
        onVectorEnumValue,
  }) {
    if (_value is SearchFeatureBooleanValue) {
      return onBooleanValue(_value as SearchFeatureBooleanValue);
    }
    if (_value is core.List<core.String>) {
      return onVectorString(_value as core.List<core.String>);
    }
    if (_value is core.List<SearchFeatureEnumValue>) {
      return onVectorEnumValue(_value as core.List<SearchFeatureEnumValue>);
    }
    assert(false);
  }

  /// @nodoc
  @internal
  static SearchFeatureVariantValue? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = toPlatform(ptr.cast<SearchFeatureVariantValueNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchFeatureVariantValue? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<SearchFeatureVariantValueNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }

  final core.dynamic _value;
}

final SearchFeatureVariantValueNative Function(SearchFeatureBooleanValueNative)
    _Feature_VariantValueNative_Feature_BooleanValueNative_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchFeatureVariantValueNative Function(
                        SearchFeatureBooleanValueNative)>>(
            'yandex_flutter_search_Feature_SearchFeatureVariantValue_Feature_BooleanValueNative_init')
        .asFunction(isLeaf: true);
final SearchFeatureVariantValueNative Function(
    ffi
        .Pointer<ffi.Void>) _Feature_VariantValueNative_VectorString_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                SearchFeatureVariantValueNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_Feature_SearchFeatureVariantValue_VectorString_init')
    .asFunction(isLeaf: true);
final SearchFeatureVariantValueNative Function(
    ffi.Pointer<
        ffi
        .Void>) _Feature_VariantValueNative_VectorFeature_EnumValue_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                SearchFeatureVariantValueNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_Feature_SearchFeatureVariantValue_VectorFeature_EnumValue_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchFeatureSet.toPointer',
    toPlatform: '(val) => SearchFeatureSet.fromPointer(val, needFree: false)')
class SearchFeatureSet implements ffi.Finalizable {
  late final ids = to_platform.toVectorString(_SearchFeatureSet_get_ids(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchFeatureSet_free.cast());

  SearchFeatureSet(core.List<core.String> ids)
      : this.fromNativePtr(
            _SearchFeatureSet_init(to_native.toNativeVectorString(ids)));

  /// @nodoc
  @internal
  SearchFeatureSet.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchFeatureSet? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchFeatureSet? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchFeatureSet.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchFeatureSet? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SearchFeatureSet.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchFeatureSet? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchFeatureSet_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFeatureSet_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFeatureSet_clone')
        .asFunction(isLeaf: true);

final _SearchFeatureSet_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchFeatureSet_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFeatureSet_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFeatureSet_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFeatureSet_get_ids = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFeatureSet_get_ids')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchFeatureGroup.toPointer',
    toPlatform: '(val) => SearchFeatureGroup.fromPointer(val, needFree: false)')
class SearchFeatureGroup implements ffi.Finalizable {
  late final name = to_platform
      .toPlatformFromPointerString(_SearchFeatureGroup_get_name(_ptr));
  late final ids =
      to_platform.toVectorString(_SearchFeatureGroup_get_ids(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchFeatureGroup_free.cast());

  SearchFeatureGroup(core.String? name, core.List<core.String> ids)
      : this.fromNativePtr(_SearchFeatureGroup_init(
            to_native.toNativePtrString(name),
            to_native.toNativeVectorString(ids)));

  /// @nodoc
  @internal
  SearchFeatureGroup.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchFeatureGroup? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchFeatureGroup? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchFeatureGroup.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchFeatureGroup? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchFeatureGroup.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchFeatureGroup? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchFeatureGroup_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFeatureGroup_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFeatureGroup_clone')
        .asFunction(isLeaf: true);

final _SearchFeatureGroup_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchFeatureGroup_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>) _SearchFeatureGroup_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFeatureGroup_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFeatureGroup_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFeatureGroup_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFeatureGroup_get_ids = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFeatureGroup_get_ids')
        .asFunction(isLeaf: true);
