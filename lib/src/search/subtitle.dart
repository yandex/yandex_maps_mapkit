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
import 'package:yandex_maps_mapkit/src/runtime/key_value_pair.dart'
    as runtime_key_value_pair;

part 'subtitle.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchSubtitleItem.toPointer',
    toPlatform: '(val) => SearchSubtitleItem.fromPointer(val, needFree: false)')
class SearchSubtitleItem implements ffi.Finalizable {
  late final type =
      to_platform.toPlatformString(_SearchSubtitleItem_get_type(_ptr));
  late final text = to_platform
      .toPlatformFromPointerString(_SearchSubtitleItem_get_text(_ptr));
  late final properties =
      runtime_key_value_pair.KeyValuePairContainerExtension.toPlatformVector(
          _SearchSubtitleItem_get_properties(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchSubtitleItem_free.cast());

  SearchSubtitleItem(core.String type, core.String? text,
      core.List<runtime_key_value_pair.KeyValuePair> properties)
      : this.fromNativePtr(_SearchSubtitleItem_init(
            to_native.toNativeString(type),
            to_native.toNativePtrString(text),
            runtime_key_value_pair.KeyValuePairContainerExtension
                .toNativeVector(properties)));

  /// @nodoc
  @internal
  SearchSubtitleItem.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchSubtitleItem? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchSubtitleItem? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchSubtitleItem.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchSubtitleItem? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchSubtitleItem.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchSubtitleItem? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchSubtitleItem_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchSubtitleItem_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleItem_clone')
        .asFunction(isLeaf: true);

final _SearchSubtitleItem_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchSubtitleItem_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchSubtitleItem_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(native_types.NativeString,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleItem_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchSubtitleItem_get_type = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleItem_get_type')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchSubtitleItem_get_text = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleItem_get_text')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchSubtitleItem_get_properties = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleItem_get_properties')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchSubtitleMetadata.toPointer',
    toPlatform:
        '(val) => SearchSubtitleMetadata.fromPointer(val, needFree: false)')
class SearchSubtitleMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final subtitleItems =
      SearchSubtitleItemContainerExtension.toPlatformVector(
          _SearchSubtitleMetadata_get_subtitleItems(_ptr));
  late final serpSubtitleItems =
      SearchSubtitleItemContainerExtension.toPlatformVector(
          _SearchSubtitleMetadata_get_serpSubtitleItems(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchSubtitleMetadata_free.cast());

  SearchSubtitleMetadata(core.List<SearchSubtitleItem> subtitleItems,
      core.List<SearchSubtitleItem> serpSubtitleItems)
      : this.fromNativePtr(_SearchSubtitleMetadata_init(
            SearchSubtitleItemContainerExtension.toNativeVector(subtitleItems),
            SearchSubtitleItemContainerExtension.toNativeVector(
                serpSubtitleItems)));

  /// @nodoc
  @internal
  SearchSubtitleMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchSubtitleMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchSubtitleMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchSubtitleMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchSubtitleMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchSubtitleMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchSubtitleMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchSubtitleMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _SearchSubtitleMetadataFactory get factory =>
      const _SearchSubtitleMetadataFactory();

  /// @nodoc
  @core.override
  _SearchSubtitleMetadataFactory get runtimeFactory =>
      const _SearchSubtitleMetadataFactory();
}

/// @nodoc
class _SearchSubtitleMetadataFactory
    extends struct_factory.StructFactory<SearchSubtitleMetadata> {
  const _SearchSubtitleMetadataFactory();

  @core.override
  SearchSubtitleMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchSubtitleMetadata.fromNativePtr(ptr);
  }

  @core.override
  SearchSubtitleMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchSubtitleMetadata.fromNativePtr(
        _SearchSubtitleMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchSubtitleMetadata obj) {
    return _SearchSubtitleMetadata_upcast(
        SearchSubtitleMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchSubtitleMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchSubtitleMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchSubtitleMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _SearchSubtitleMetadata_name = lib
    .library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_search_SearchSubtitleMetadata_name')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchSubtitleMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchSubtitleMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchSubtitleMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchSubtitleMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchSubtitleMetadata_get_subtitleItems = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSubtitleMetadata_get_subtitleItems')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchSubtitleMetadata_get_serpSubtitleItems = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchSubtitleMetadata_get_serpSubtitleItems')
    .asFunction(isLeaf: true);
