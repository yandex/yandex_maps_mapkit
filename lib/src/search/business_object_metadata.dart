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
import 'package:yandex_maps_mapkit/src/bindings/common/struct_factory.dart'
    as struct_factory;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;
import 'package:yandex_maps_mapkit/src/mapkit/localized_value.dart'
    as mapkit_localized_value;
import 'package:yandex_maps_mapkit/src/search/address.dart' as search_address;
import 'package:yandex_maps_mapkit/src/search/category.dart' as search_category;
import 'package:yandex_maps_mapkit/src/search/chain.dart' as search_chain;
import 'package:yandex_maps_mapkit/src/search/feature.dart' as search_feature;
import 'package:yandex_maps_mapkit/src/search/link.dart' as search_link;
import 'package:yandex_maps_mapkit/src/search/phone.dart' as search_phone;
import 'package:yandex_maps_mapkit/src/search/precision.dart'
    as search_precision;
import 'package:yandex_maps_mapkit/src/search/working_hours.dart'
    as search_working_hours;

part 'business_object_metadata.containers.dart';

/// Company working status.
@bindings_annotations.ContainerData(
    toNative: 'SearchClosed.toPointer',
    toPlatform: '(val) => SearchClosed.fromPointer(val, needFree: false)')
enum SearchClosed {
  /// Default value.
  Unknown,

  /// A company which is closed forever.
  Permanent,

  /// A company that is closed temporarily.
  Temporary,
  ;

  /// @nodoc
  @internal
  static SearchClosed fromInt(core.int val) {
    return SearchClosed.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(SearchClosed e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static SearchClosed? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(SearchClosed? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SearchProperties.toPointer',
    toPlatform: '(val) => SearchProperties.fromPointer(val, needFree: false)')
class SearchProperties implements ffi.Finalizable {
  late final items = SearchPropertiesItemContainerExtension.toPlatformVector(
      _SearchProperties_get_items(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchProperties_free.cast());

  SearchProperties(core.List<SearchPropertiesItem> items)
      : this.fromNativePtr(_SearchProperties_init(
            SearchPropertiesItemContainerExtension.toNativeVector(items)));

  /// @nodoc
  @internal
  SearchProperties.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchProperties? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchProperties? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchProperties.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchProperties? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SearchProperties.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchProperties? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchProperties_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchProperties_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchProperties_clone')
        .asFunction(isLeaf: true);

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

/// @nodoc
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
    toNative: 'SearchPropertiesItem.toPointer',
    toPlatform:
        '(val) => SearchPropertiesItem.fromPointer(val, needFree: false)')
class SearchPropertiesItem {
  final core.String key;
  final core.String value;

  const SearchPropertiesItem({
    required this.key,
    required this.value,
  });

  /// @nodoc
  @internal
  SearchPropertiesItem.fromNative(SearchPropertiesItemNative native)
      : this(
            key: to_platform.toPlatformString(native.key),
            value: to_platform.toPlatformString(native.value));

  /// @nodoc
  @internal
  static SearchPropertiesItemNative toNative(SearchPropertiesItem c) {
    return _SearchPropertiesItemNativeInit(
        to_native.toNativeString(c.key), to_native.toNativeString(c.value));
  }

  /// @nodoc
  @internal
  static SearchPropertiesItem? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchPropertiesItem.fromNative(
        ptr.cast<SearchPropertiesItemNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchPropertiesItem? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchPropertiesItemNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessObjectMetadata.toPointer',
    toPlatform:
        '(val) => SearchBusinessObjectMetadata.fromPointer(val, needFree: false)')
class SearchBusinessObjectMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final oid =
      to_platform.toPlatformString(_SearchBusinessObjectMetadata_get_oid(_ptr));
  late final name = to_platform
      .toPlatformString(_SearchBusinessObjectMetadata_get_name(_ptr));
  late final address = search_address.SearchAddress.fromNativePtr(
      _SearchBusinessObjectMetadata_get_address(_ptr));
  late final categories =
      search_category.SearchCategoryContainerExtension.toPlatformVector(
          _SearchBusinessObjectMetadata_get_categories(_ptr));
  late final phones =
      search_phone.SearchPhoneContainerExtension.toPlatformVector(
          _SearchBusinessObjectMetadata_get_phones(_ptr));
  late final workingHours =
      search_working_hours.SearchWorkingHours.fromOptionalPtr(
          _SearchBusinessObjectMetadata_get_workingHours(_ptr));
  late final precision = search_precision.SearchPrecision.fromPointer(
      _SearchBusinessObjectMetadata_get_precision(_ptr));
  late final features =
      search_feature.SearchFeatureContainerExtension.toPlatformVector(
          _SearchBusinessObjectMetadata_get_features(_ptr));
  late final importantFeatures =
      search_feature.SearchFeatureSet.fromOptionalPtr(
          _SearchBusinessObjectMetadata_get_importantFeatures(_ptr));
  late final links = search_link.SearchLinkContainerExtension.toPlatformVector(
      _SearchBusinessObjectMetadata_get_links(_ptr));
  late final distance = mapkit_localized_value.LocalizedValue.fromPointer(
      _SearchBusinessObjectMetadata_get_distance(_ptr));
  late final chains =
      search_chain.SearchChainContainerExtension.toPlatformVector(
          _SearchBusinessObjectMetadata_get_chains(_ptr));
  late final closed =
      SearchClosed.fromPointer(_SearchBusinessObjectMetadata_get_closed(_ptr));
  late final unreliable = to_platform.toPlatformFromPointerBool(
      _SearchBusinessObjectMetadata_get_unreliable(_ptr));
  late final seoname = to_platform.toPlatformFromPointerString(
      _SearchBusinessObjectMetadata_get_seoname(_ptr));
  late final shortName = to_platform.toPlatformFromPointerString(
      _SearchBusinessObjectMetadata_get_shortName(_ptr));
  late final properties = SearchProperties.fromOptionalPtr(
      _SearchBusinessObjectMetadata_get_properties(_ptr));
  late final featureGroups =
      search_feature.SearchFeatureGroupContainerExtension.toPlatformVector(
          _SearchBusinessObjectMetadata_get_featureGroups(_ptr));
  late final indoorLevel = to_platform.toPlatformFromPointerString(
      _SearchBusinessObjectMetadata_get_indoorLevel(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchBusinessObjectMetadata_free.cast());

  SearchBusinessObjectMetadata(
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
            search_address.SearchAddress.getNativePtr(address),
            search_category.SearchCategoryContainerExtension.toNativeVector(
                categories),
            search_phone.SearchPhoneContainerExtension.toNativeVector(phones),
            search_working_hours.SearchWorkingHours.getNativePtr(workingHours),
            search_precision.SearchPrecision.toPointer(precision),
            search_feature.SearchFeatureContainerExtension.toNativeVector(
                features),
            search_feature.SearchFeatureSet.getNativePtr(importantFeatures),
            search_link.SearchLinkContainerExtension.toNativeVector(links),
            mapkit_localized_value.LocalizedValue.toPointer(distance),
            search_chain.SearchChainContainerExtension.toNativeVector(chains),
            SearchClosed.toPointer(closed),
            to_native.toNativePtrBool(unreliable),
            to_native.toNativePtrString(seoname),
            to_native.toNativePtrString(shortName),
            SearchProperties.getNativePtr(properties),
            search_feature.SearchFeatureGroupContainerExtension.toNativeVector(
                featureGroups),
            to_native.toNativePtrString(indoorLevel)));

  /// @nodoc
  @internal
  SearchBusinessObjectMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchBusinessObjectMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchBusinessObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchBusinessObjectMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchBusinessObjectMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchBusinessObjectMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchBusinessObjectMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchBusinessObjectMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _SearchBusinessObjectMetadataFactory get factory =>
      const _SearchBusinessObjectMetadataFactory();

  /// @nodoc
  @core.override
  _SearchBusinessObjectMetadataFactory get runtimeFactory =>
      const _SearchBusinessObjectMetadataFactory();
}

/// @nodoc
class _SearchBusinessObjectMetadataFactory
    extends struct_factory.StructFactory<SearchBusinessObjectMetadata> {
  const _SearchBusinessObjectMetadataFactory();

  @core.override
  SearchBusinessObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchBusinessObjectMetadata.fromNativePtr(ptr);
  }

  @core.override
  SearchBusinessObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchBusinessObjectMetadata.fromNativePtr(
        _SearchBusinessObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchBusinessObjectMetadata obj) {
    return _SearchBusinessObjectMetadata_upcast(
        SearchBusinessObjectMetadata.getNativePtr(obj));
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

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessObjectMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessObjectMetadata_clone')
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
