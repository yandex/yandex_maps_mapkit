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

part 'business_photo_object_metadata.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessPhotoObjectMetadata.toPointer',
    toPlatform:
        '(val) => SearchBusinessPhotoObjectMetadata.fromPointer(val, needFree: false)')
class SearchBusinessPhotoObjectMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  late final count = _SearchBusinessPhotoObjectMetadata_get_count(_ptr);
  late final photos =
      SearchBusinessPhotoObjectMetadataPhotoContainerExtension.toPlatformVector(
          _SearchBusinessPhotoObjectMetadata_get_photos(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchBusinessPhotoObjectMetadata_free.cast());

  SearchBusinessPhotoObjectMetadata(
      core.int count, core.List<SearchBusinessPhotoObjectMetadataPhoto> photos)
      : this.fromNativePtr(_SearchBusinessPhotoObjectMetadata_init(
            count,
            SearchBusinessPhotoObjectMetadataPhotoContainerExtension
                .toNativeVector(photos)));

  /// @nodoc
  @internal
  SearchBusinessPhotoObjectMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchBusinessPhotoObjectMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchBusinessPhotoObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchBusinessPhotoObjectMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchBusinessPhotoObjectMetadata? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchBusinessPhotoObjectMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      SearchBusinessPhotoObjectMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchBusinessPhotoObjectMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _SearchBusinessPhotoObjectMetadataFactory get factory =>
      const _SearchBusinessPhotoObjectMetadataFactory();

  /// @nodoc
  @core.override
  _SearchBusinessPhotoObjectMetadataFactory get runtimeFactory =>
      const _SearchBusinessPhotoObjectMetadataFactory();
}

/// @nodoc
class _SearchBusinessPhotoObjectMetadataFactory
    extends struct_factory.StructFactory<SearchBusinessPhotoObjectMetadata> {
  const _SearchBusinessPhotoObjectMetadataFactory();

  @core.override
  SearchBusinessPhotoObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchBusinessPhotoObjectMetadata.fromNativePtr(ptr);
  }

  @core.override
  SearchBusinessPhotoObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchBusinessPhotoObjectMetadata.fromNativePtr(
        _SearchBusinessPhotoObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchBusinessPhotoObjectMetadata obj) {
    return _SearchBusinessPhotoObjectMetadata_upcast(
        SearchBusinessPhotoObjectMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchBusinessPhotoObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessPhotoObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessPhotoObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function()
    _SearchBusinessPhotoObjectMetadata_name = lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_name')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessPhotoObjectMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchBusinessPhotoObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(core.int, ffi.Pointer<ffi.Void>)
    _SearchBusinessPhotoObjectMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Uint32, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_init')
        .asFunction(isLeaf: true);

final core.int Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessPhotoObjectMetadata_get_count = lib.library
        .lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_get_count')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchBusinessPhotoObjectMetadata_get_photos = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessPhotoObjectMetadata_get_photos')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessPhotoObjectMetadataPhoto.toPointer',
    toPlatform:
        '(val) => SearchBusinessPhotoObjectMetadataPhoto.fromPointer(val, needFree: false)')
class SearchBusinessPhotoObjectMetadataPhoto implements ffi.Finalizable {
  late final id = to_platform
      .toPlatformString(_SearchBusinessPhotoObjectMetadataPhoto_get_id(_ptr));
  late final links =
      SearchBusinessPhotoObjectMetadataPhotoPhotoLinkContainerExtension
          .toPlatformVector(
              _SearchBusinessPhotoObjectMetadataPhoto_get_links(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchBusinessPhotoObjectMetadataPhoto_free.cast());

  SearchBusinessPhotoObjectMetadataPhoto(core.String id,
      core.List<SearchBusinessPhotoObjectMetadataPhotoPhotoLink> links)
      : this.fromNativePtr(_SearchBusinessPhotoObjectMetadataPhoto_init(
            to_native.toNativeString(id),
            SearchBusinessPhotoObjectMetadataPhotoPhotoLinkContainerExtension
                .toNativeVector(links)));

  /// @nodoc
  @internal
  SearchBusinessPhotoObjectMetadataPhoto.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchBusinessPhotoObjectMetadataPhoto? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchBusinessPhotoObjectMetadataPhoto? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchBusinessPhotoObjectMetadataPhoto.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchBusinessPhotoObjectMetadataPhoto? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchBusinessPhotoObjectMetadataPhoto.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      SearchBusinessPhotoObjectMetadataPhoto? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value =
        _SearchBusinessPhotoObjectMetadataPhoto_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchBusinessPhotoObjectMetadataPhoto_clone = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_SearchBusinessPhotoObjectMetadataPhoto_clone')
    .asFunction(isLeaf: true);

final _SearchBusinessPhotoObjectMetadataPhoto_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_search_BusinessPhotoObjectMetadata_SearchBusinessPhotoObjectMetadataPhoto_free');

final ffi.Pointer<ffi.Void> Function(
    native_types.NativeString,
    ffi
        .Pointer<ffi.Void>) _SearchBusinessPhotoObjectMetadataPhoto_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    native_types.NativeString, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_SearchBusinessPhotoObjectMetadataPhoto_init')
    .asFunction(isLeaf: true);

final native_types.NativeString Function(
    ffi
        .Pointer<ffi.Void>) _SearchBusinessPhotoObjectMetadataPhoto_get_id = lib
    .library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_SearchBusinessPhotoObjectMetadataPhoto_get_id')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchBusinessPhotoObjectMetadataPhoto_get_links = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_SearchBusinessPhotoObjectMetadataPhoto_get_links')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessPhotoObjectMetadataPhotoPhotoLink.toPointer',
    toPlatform:
        '(val) => SearchBusinessPhotoObjectMetadataPhotoPhotoLink.fromPointer(val, needFree: false)')
class SearchBusinessPhotoObjectMetadataPhotoPhotoLink
    implements ffi.Finalizable {
  late final type = to_platform.toPlatformFromPointerString(
      _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_get_type(_ptr));
  late final uri = to_platform.toPlatformString(
      _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_get_uri(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(
      _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_free.cast());

  SearchBusinessPhotoObjectMetadataPhotoPhotoLink(
      core.String? type, core.String uri)
      : this.fromNativePtr(
            _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_init(
                to_native.toNativePtrString(type),
                to_native.toNativeString(uri)));

  /// @nodoc
  @internal
  SearchBusinessPhotoObjectMetadataPhotoPhotoLink.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchBusinessPhotoObjectMetadataPhotoPhotoLink? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SearchBusinessPhotoObjectMetadataPhotoPhotoLink? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchBusinessPhotoObjectMetadataPhotoPhotoLink.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SearchBusinessPhotoObjectMetadataPhotoPhotoLink? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SearchBusinessPhotoObjectMetadataPhotoPhotoLink.fromNativePtr(
            ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      SearchBusinessPhotoObjectMetadataPhotoPhotoLink? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_clone(
        getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_clone = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_Photo_SearchBusinessPhotoObjectMetadataPhotoPhotoLink_clone')
    .asFunction(isLeaf: true);

final _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_search_BusinessPhotoObjectMetadata_Photo_SearchBusinessPhotoObjectMetadataPhotoPhotoLink_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    native_types
        .NativeString) _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, native_types.NativeString)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_Photo_SearchBusinessPhotoObjectMetadataPhotoPhotoLink_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi
        .Void>) _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_get_type = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_Photo_SearchBusinessPhotoObjectMetadataPhotoPhotoLink_get_type')
    .asFunction(isLeaf: true);
final native_types.NativeString Function(
    ffi.Pointer<
        ffi
        .Void>) _SearchBusinessPhotoObjectMetadataPhotoPhotoLink_get_uri = lib
    .library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_BusinessPhotoObjectMetadata_Photo_SearchBusinessPhotoObjectMetadataPhotoPhotoLink_get_uri')
    .asFunction(isLeaf: true);
