part of 'business_object_metadata.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchClosedImpl.toPointer',
    toPlatform: '(val) => SearchClosedImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchClosed')
extension SearchClosedImpl on SearchClosed {
  static core.int toInt(SearchClosed e) {
    return e.index;
  }

  static SearchClosed fromInt(core.int val) {
    return SearchClosed.values[val];
  }

  static SearchClosed? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(SearchClosed? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SearchPropertiesImpl.getNativePtr',
    toPlatform:
        '(val) => SearchPropertiesImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchProperties')
final class SearchPropertiesImpl extends SearchProperties {
  SearchPropertiesImpl(core.List<SearchPropertiesItem> items)
      : this.fromNativePtr(_SearchProperties_init(
            SearchPropertiesItemContainerExtension.toNativeVector(items)));

  @core.override
  late final items = SearchPropertiesItemContainerExtension.toPlatformVector(
      _SearchProperties_get_items(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchProperties_free.cast());

  SearchPropertiesImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchProperties? obj) {
    return (obj as SearchPropertiesImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchProperties? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : SearchPropertiesImpl.fromNativePtr(ptr);
  }

  static SearchProperties? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchPropertiesImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchProperties_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchProperties_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchProperties_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchProperties_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchProperties_get_items = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchProperties_get_items')
        .asFunction(isLeaf: true);

final class SearchPropertiesItemNative extends ffi.Struct {
  external native_types.NativeString key;
  external native_types.NativeString value;
}

final SearchPropertiesItemNative Function(
        native_types.NativeString, native_types.NativeString)
    _SearchPropertiesItemNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchPropertiesItemNative Function(
                        native_types.NativeString, native_types.NativeString)>>(
            'yandex_flutter_search_Properties_SearchPropertiesItem_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchPropertiesItemImpl.toPointer',
    toPlatform:
        '(val) => SearchPropertiesItemImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchPropertiesItem')
extension SearchPropertiesItemImpl on SearchPropertiesItem {
  static SearchPropertiesItem fromNative(SearchPropertiesItemNative native) {
    return SearchPropertiesItem(
        key: to_platform.toPlatformString(native.key),
        value: to_platform.toPlatformString(native.value));
  }

  static SearchPropertiesItemNative toNative(SearchPropertiesItem obj) {
    return _SearchPropertiesItemNativeInit(
        to_native.toNativeString(obj.key), to_native.toNativeString(obj.value));
  }

  static SearchPropertiesItem? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchPropertiesItemImpl.fromNative(
        ptr.cast<SearchPropertiesItemNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchPropertiesItem? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchPropertiesItemNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessObjectMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => SearchBusinessObjectMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchBusinessObjectMetadata')
final class SearchBusinessObjectMetadataImpl
    extends SearchBusinessObjectMetadata {
  SearchBusinessObjectMetadataImpl(
      core.String oid,
      core.String name,
      search_address.SearchAddress address,
      core.List<search_category.SearchCategory> categories,
      core.List<search_phone.SearchPhone> phones,
      search_working_hours.SearchWorkingHours? workingHours,
      search_precision.SearchPrecision? precision,
      core.List<search_feature.SearchFeature> features,
      search_feature.SearchFeatureSet? importantFeatures,
      core.List<search_link.SearchLink> links,
      mapkit_localized_value.LocalizedValue? distance,
      core.List<search_chain.SearchChain> chains,
      SearchClosed? closed,
      core.bool? unreliable,
      core.String? seoname,
      core.String? shortName,
      SearchProperties? properties,
      core.List<search_feature.SearchFeatureGroup> featureGroups,
      core.String? indoorLevel)
      : this.fromNativePtr(_SearchBusinessObjectMetadata_init(
            to_native.toNativeString(oid),
            to_native.toNativeString(name),
            search_address.SearchAddressImpl.getNativePtr(address),
            search_category.SearchCategoryContainerExtension.toNativeVector(
                categories),
            search_phone.SearchPhoneContainerExtension.toNativeVector(phones),
            search_working_hours.SearchWorkingHoursImpl.getNativePtr(
                workingHours),
            search_precision.SearchPrecisionImpl.toPointer(precision),
            search_feature.SearchFeatureContainerExtension.toNativeVector(
                features),
            search_feature.SearchFeatureSetImpl.getNativePtr(importantFeatures),
            search_link.SearchLinkContainerExtension.toNativeVector(links),
            mapkit_localized_value.LocalizedValueImpl.toPointer(distance),
            search_chain.SearchChainContainerExtension.toNativeVector(chains),
            SearchClosedImpl.toPointer(closed),
            to_native.toNativePtrBool(unreliable),
            to_native.toNativePtrString(seoname),
            to_native.toNativePtrString(shortName),
            SearchPropertiesImpl.getNativePtr(properties),
            search_feature.SearchFeatureGroupContainerExtension.toNativeVector(
                featureGroups),
            to_native.toNativePtrString(indoorLevel)));

  @core.override
  late final oid =
      to_platform.toPlatformString(_SearchBusinessObjectMetadata_get_oid(_ptr));
  @core.override
  late final name = to_platform
      .toPlatformString(_SearchBusinessObjectMetadata_get_name(_ptr));
  @core.override
  late final address = search_address.SearchAddressImpl.fromNativePtr(
      _SearchBusinessObjectMetadata_get_address(_ptr));
  @core.override
  late final categories =
      search_category.SearchCategoryContainerExtension.toPlatformVector(
          _SearchBusinessObjectMetadata_get_categories(_ptr));
  @core.override
  late final phones =
      search_phone.SearchPhoneContainerExtension.toPlatformVector(
          _SearchBusinessObjectMetadata_get_phones(_ptr));
  @core.override
  late final workingHours =
      search_working_hours.SearchWorkingHoursImpl.fromOptionalPtr(
          _SearchBusinessObjectMetadata_get_workingHours(_ptr));
  @core.override
  late final precision = search_precision.SearchPrecisionImpl.fromPointer(
      _SearchBusinessObjectMetadata_get_precision(_ptr));
  @core.override
  late final features =
      search_feature.SearchFeatureContainerExtension.toPlatformVector(
          _SearchBusinessObjectMetadata_get_features(_ptr));
  @core.override
  late final importantFeatures =
      search_feature.SearchFeatureSetImpl.fromOptionalPtr(
          _SearchBusinessObjectMetadata_get_importantFeatures(_ptr));
  @core.override
  late final links = search_link.SearchLinkContainerExtension.toPlatformVector(
      _SearchBusinessObjectMetadata_get_links(_ptr));
  @core.override
  late final distance = mapkit_localized_value.LocalizedValueImpl.fromPointer(
      _SearchBusinessObjectMetadata_get_distance(_ptr));
  @core.override
  late final chains =
      search_chain.SearchChainContainerExtension.toPlatformVector(
          _SearchBusinessObjectMetadata_get_chains(_ptr));
  @core.override
  late final closed = SearchClosedImpl.fromPointer(
      _SearchBusinessObjectMetadata_get_closed(_ptr));
  @core.override
  late final unreliable = to_platform.toPlatformFromPointerBool(
      _SearchBusinessObjectMetadata_get_unreliable(_ptr));
  @core.override
  late final seoname = to_platform.toPlatformFromPointerString(
      _SearchBusinessObjectMetadata_get_seoname(_ptr));
  @core.override
  late final shortName = to_platform.toPlatformFromPointerString(
      _SearchBusinessObjectMetadata_get_shortName(_ptr));
  @core.override
  late final properties = SearchPropertiesImpl.fromOptionalPtr(
      _SearchBusinessObjectMetadata_get_properties(_ptr));
  @core.override
  late final featureGroups =
      search_feature.SearchFeatureGroupContainerExtension.toPlatformVector(
          _SearchBusinessObjectMetadata_get_featureGroups(_ptr));
  @core.override
  late final indoorLevel = to_platform.toPlatformFromPointerString(
      _SearchBusinessObjectMetadata_get_indoorLevel(_ptr));

  @core.override
  final _SearchBusinessObjectMetadataFactory runtimeFactory =
      const _SearchBusinessObjectMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchBusinessObjectMetadata_free.cast());

  SearchBusinessObjectMetadataImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchBusinessObjectMetadata? obj) {
    return (obj as SearchBusinessObjectMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchBusinessObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchBusinessObjectMetadataImpl.fromNativePtr(ptr);
  }

  static SearchBusinessObjectMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchBusinessObjectMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _SearchBusinessObjectMetadataFactory
    extends struct_factory.StructFactory<SearchBusinessObjectMetadata> {
  const _SearchBusinessObjectMetadataFactory();

  @core.override
  SearchBusinessObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchBusinessObjectMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  SearchBusinessObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchBusinessObjectMetadataImpl.fromNativePtr(
        _SearchBusinessObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchBusinessObjectMetadata obj) {
    return _SearchBusinessObjectMetadata_upcast(
        SearchBusinessObjectMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchBusinessObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _SearchBusinessObjectMetadata_name =
    lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_name')
        .asFunction(isLeaf: true);

final _SearchBusinessObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchBusinessObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString,
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
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _SearchBusinessObjectMetadata_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString,
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
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_get_oid = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_get_oid')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_get_address = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_get_address')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_get_categories = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_get_categories')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_get_phones = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_get_phones')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchBusinessObjectMetadata_get_workingHours = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessObjectMetadata_get_workingHours')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_get_precision = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_get_precision')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_get_features = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_get_features')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchBusinessObjectMetadata_get_importantFeatures = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessObjectMetadata_get_importantFeatures')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_get_links = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_get_links')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_get_distance = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_get_distance')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_get_chains = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_get_chains')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_get_closed = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_get_closed')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_get_unreliable = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_get_unreliable')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_get_seoname = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_get_seoname')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_get_shortName = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_get_shortName')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_get_properties = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_get_properties')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchBusinessObjectMetadata_get_featureGroups = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessObjectMetadata_get_featureGroups')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchBusinessObjectMetadata_get_indoorLevel = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessObjectMetadata_get_indoorLevel')
    .asFunction(isLeaf: true);
