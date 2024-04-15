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

part 'references_object_metadata.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchReferenceType.toPointer',
    toPlatform:
        '(val) => SearchReferenceType.fromPointer(val, needFree: false)')
class SearchReferenceType implements ffi.Finalizable {
  late final id =
      to_platform.toPlatformString(_SearchReferenceType_get_id(_ptr));
  late final scope =
      to_platform.toPlatformString(_SearchReferenceType_get_scope(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchReferenceType_free.cast());

  SearchReferenceType(core.String id, core.String scope)
      : this.fromNativePtr(_SearchReferenceType_init(
            to_native.toNativeString(id), to_native.toNativeString(scope)));

  /// @nodoc
  @internal
  SearchReferenceType.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchReferenceType? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchReferenceType? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchReferenceType.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchReferenceType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchReferenceType.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchReferenceType? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchReferenceType_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchReferenceType_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchReferenceType_clone')
        .asFunction(isLeaf: true);

final _SearchReferenceType_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchReferenceType_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString, native_types.NativeString)
    _SearchReferenceType_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString, native_types.NativeString)>>(
            'yandex_flutter_search_SearchReferenceType_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchReferenceType_get_id = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchReferenceType_get_id')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchReferenceType_get_scope = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchReferenceType_get_scope')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchReferencesObjectMetadata.toPointer',
    toPlatform:
        '(val) => SearchReferencesObjectMetadata.fromPointer(val, needFree: false)')
class SearchReferencesObjectMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final references =
      SearchReferenceTypeContainerExtension.toPlatformVector(
          _SearchReferencesObjectMetadata_get_references(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchReferencesObjectMetadata_free.cast());

  SearchReferencesObjectMetadata(core.List<SearchReferenceType> references)
      : this.fromNativePtr(_SearchReferencesObjectMetadata_init(
            SearchReferenceTypeContainerExtension.toNativeVector(references)));

  /// @nodoc
  @internal
  SearchReferencesObjectMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchReferencesObjectMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchReferencesObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchReferencesObjectMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchReferencesObjectMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchReferencesObjectMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchReferencesObjectMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchReferencesObjectMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _SearchReferencesObjectMetadataFactory get factory =>
      const _SearchReferencesObjectMetadataFactory();

  /// @nodoc
  @core.override
  _SearchReferencesObjectMetadataFactory get runtimeFactory =>
      const _SearchReferencesObjectMetadataFactory();
}

/// @nodoc
class _SearchReferencesObjectMetadataFactory
    extends struct_factory.StructFactory<SearchReferencesObjectMetadata> {
  const _SearchReferencesObjectMetadataFactory();

  @core.override
  SearchReferencesObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchReferencesObjectMetadata.fromNativePtr(ptr);
  }

  @core.override
  SearchReferencesObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchReferencesObjectMetadata.fromNativePtr(
        _SearchReferencesObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchReferencesObjectMetadata obj) {
    return _SearchReferencesObjectMetadata_upcast(
        SearchReferencesObjectMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchReferencesObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchReferencesObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchReferencesObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchReferencesObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchReferencesObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function()
    _SearchReferencesObjectMetadata_name = lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchReferencesObjectMetadata_name')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchReferencesObjectMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchReferencesObjectMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchReferencesObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchReferencesObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchReferencesObjectMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchReferencesObjectMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchReferencesObjectMetadata_get_references = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchReferencesObjectMetadata_get_references')
    .asFunction(isLeaf: true);
