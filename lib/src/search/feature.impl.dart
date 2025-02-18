part of 'feature.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchFeatureImpl.getNativePtr',
    toPlatform: '(val) => SearchFeatureImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchFeature')
final class SearchFeatureImpl extends SearchFeature {
  SearchFeatureImpl(
      core.String id,
      SearchFeatureVariantValue value,
      core.String? name,
      core.String? aref,
      mapkit_image.Image? iconLight,
      mapkit_image.Image? iconDark)
      : this.fromNativePtr(_SearchFeature_init(
            to_native.toNativeString(id),
            SearchFeatureVariantValueImpl.toNative(value),
            to_native.toNativePtrString(name),
            to_native.toNativePtrString(aref),
            mapkit_image.ImageImpl.getNativePtr(iconLight),
            mapkit_image.ImageImpl.getNativePtr(iconDark)));

  @core.override
  late final id = to_platform.toPlatformString(_SearchFeature_get_id(_ptr));
  @core.override
  late final value =
      SearchFeatureVariantValueImpl.toPlatform(_SearchFeature_get_value(_ptr));
  @core.override
  late final name =
      to_platform.toPlatformFromPointerString(_SearchFeature_get_name(_ptr));
  @core.override
  late final aref =
      to_platform.toPlatformFromPointerString(_SearchFeature_get_aref(_ptr));
  @core.override
  late final iconLight = mapkit_image.ImageImpl.fromOptionalPtr(
      _SearchFeature_get_iconLight(_ptr));
  @core.override
  late final iconDark =
      mapkit_image.ImageImpl.fromOptionalPtr(_SearchFeature_get_iconDark(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchFeature_free.cast());

  SearchFeatureImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchFeature? obj) {
    return (obj as SearchFeatureImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchFeature? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : SearchFeatureImpl.fromNativePtr(ptr);
  }

  static SearchFeature? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchFeatureImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'SearchFeatureEnumValueImpl.getNativePtr',
    toPlatform:
        '(val) => SearchFeatureEnumValueImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchFeatureEnumValue')
final class SearchFeatureEnumValueImpl extends SearchFeatureEnumValue {
  SearchFeatureEnumValueImpl(core.String id, core.String name,
      core.String? imageUrlTemplate, core.List<core.String> tags)
      : this.fromNativePtr(_SearchFeatureEnumValue_init(
            to_native.toNativeString(id),
            to_native.toNativeString(name),
            to_native.toNativePtrString(imageUrlTemplate),
            to_native.toNativeVectorString(tags)));

  @core.override
  late final id =
      to_platform.toPlatformString(_SearchFeatureEnumValue_get_id(_ptr));
  @core.override
  late final name =
      to_platform.toPlatformString(_SearchFeatureEnumValue_get_name(_ptr));
  @core.override
  late final imageUrlTemplate = to_platform.toPlatformFromPointerString(
      _SearchFeatureEnumValue_get_imageUrlTemplate(_ptr));
  @core.override
  late final tags =
      to_platform.toVectorString(_SearchFeatureEnumValue_get_tags(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchFeatureEnumValue_free.cast());

  SearchFeatureEnumValueImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchFeatureEnumValue? obj) {
    return (obj as SearchFeatureEnumValueImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchFeatureEnumValue? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchFeatureEnumValueImpl.fromNativePtr(ptr);
  }

  static SearchFeatureEnumValue? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchFeatureEnumValueImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'SearchFeatureBooleanValueImpl.toPointer',
    toPlatform:
        '(val) => SearchFeatureBooleanValueImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchFeatureBooleanValue')
extension SearchFeatureBooleanValueImpl on SearchFeatureBooleanValue {
  static SearchFeatureBooleanValue fromNative(
      SearchFeatureBooleanValueNative native) {
    return SearchFeatureBooleanValue(value: native.value);
  }

  static SearchFeatureBooleanValueNative toNative(
      SearchFeatureBooleanValue obj) {
    return _SearchFeatureBooleanValueNativeInit(obj.value);
  }

  static SearchFeatureBooleanValue? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchFeatureBooleanValueImpl.fromNative(
        ptr.cast<SearchFeatureBooleanValueNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchFeatureBooleanValue? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchFeatureBooleanValueNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class _SearchFeatureVariantValueNativeData extends ffi.Union {
  external SearchFeatureBooleanValueNative booleanValue;
  external ffi.Pointer<ffi.Void> textValue;
  external ffi.Pointer<ffi.Void> enumValue;
}

final class SearchFeatureVariantValueNative extends ffi.Struct {
  @ffi.Int()
  external core.int tag;
  external _SearchFeatureVariantValueNativeData data;
}

@bindings_annotations.ContainerData(
    toNative: 'SearchFeatureVariantValueImpl.toPointer',
    toPlatform:
        '(val) => SearchFeatureVariantValueImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchFeatureVariantValue')
extension SearchFeatureVariantValueImpl on SearchFeatureVariantValue {
  static SearchFeatureVariantValueNative toNative(
      SearchFeatureVariantValue obj) {
    if (obj._value is SearchFeatureBooleanValue) {
      return _Feature_VariantValueNative_Feature_BooleanValueNative_init(
          SearchFeatureBooleanValueImpl.toNative(obj._value));
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

  static SearchFeatureVariantValue toPlatform(
      SearchFeatureVariantValueNative obj) {
    switch (obj.tag) {
      case 0:
        return SearchFeatureVariantValue.fromBooleanValue(
            SearchFeatureBooleanValueImpl.fromNative(obj.data.booleanValue));
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

  static SearchFeatureVariantValue? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = toPlatform(ptr.cast<SearchFeatureVariantValueNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchFeatureVariantValue? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<SearchFeatureVariantValueNative>();
    result.ref = toNative(val);

    return result.cast();
  }
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
    toNative: 'SearchFeatureSetImpl.getNativePtr',
    toPlatform:
        '(val) => SearchFeatureSetImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchFeatureSet')
final class SearchFeatureSetImpl extends SearchFeatureSet {
  SearchFeatureSetImpl(core.List<core.String> ids)
      : this.fromNativePtr(
            _SearchFeatureSet_init(to_native.toNativeVectorString(ids)));

  @core.override
  late final ids = to_platform.toVectorString(_SearchFeatureSet_get_ids(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchFeatureSet_free.cast());

  SearchFeatureSetImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchFeatureSet? obj) {
    return (obj as SearchFeatureSetImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchFeatureSet? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : SearchFeatureSetImpl.fromNativePtr(ptr);
  }

  static SearchFeatureSet? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchFeatureSetImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'SearchFeatureGroupImpl.getNativePtr',
    toPlatform:
        '(val) => SearchFeatureGroupImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchFeatureGroup')
final class SearchFeatureGroupImpl extends SearchFeatureGroup {
  SearchFeatureGroupImpl(core.String? name, core.List<core.String> ids)
      : this.fromNativePtr(_SearchFeatureGroup_init(
            to_native.toNativePtrString(name),
            to_native.toNativeVectorString(ids)));

  @core.override
  late final name = to_platform
      .toPlatformFromPointerString(_SearchFeatureGroup_get_name(_ptr));
  @core.override
  late final ids =
      to_platform.toVectorString(_SearchFeatureGroup_get_ids(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchFeatureGroup_free.cast());

  SearchFeatureGroupImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchFeatureGroup? obj) {
    return (obj as SearchFeatureGroupImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchFeatureGroup? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchFeatureGroupImpl.fromNativePtr(ptr);
  }

  static SearchFeatureGroup? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchFeatureGroupImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
