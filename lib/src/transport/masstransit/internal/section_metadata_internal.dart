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
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;
import 'package:yandex_maps_mapkit/src/transport/masstransit/route.dart'
    as transport_masstransit_route;

part 'section_metadata_internal.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SectionMetadataInternal.toPointer',
    toPlatform:
        '(val) => SectionMetadataInternal.fromPointer(val, needFree: false)')
class SectionMetadataInternal extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final metadata =
      transport_masstransit_route.MasstransitSectionMetadata.fromNativePtr(
          _SectionMetadataInternal_get_metadata(_ptr));
  late final isPassThroughTransportSection =
      _SectionMetadataInternal_get_isPassThroughTransportSection(_ptr);

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SectionMetadataInternal_free.cast());

  SectionMetadataInternal(
      transport_masstransit_route.MasstransitSectionMetadata metadata,
      core.bool isPassThroughTransportSection)
      : this.fromNativePtr(_SectionMetadataInternal_init(
            transport_masstransit_route.MasstransitSectionMetadata.getNativePtr(
                metadata),
            isPassThroughTransportSection));

  /// @nodoc
  @internal
  SectionMetadataInternal.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SectionMetadataInternal? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SectionMetadataInternal? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SectionMetadataInternal.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SectionMetadataInternal? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SectionMetadataInternal.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SectionMetadataInternal? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SectionMetadataInternal_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _SectionMetadataInternalFactory get factory =>
      const _SectionMetadataInternalFactory();

  /// @nodoc
  @core.override
  _SectionMetadataInternalFactory get runtimeFactory =>
      const _SectionMetadataInternalFactory();
}

/// @nodoc
class _SectionMetadataInternalFactory
    extends struct_factory.StructFactory<SectionMetadataInternal> {
  const _SectionMetadataInternalFactory();

  @core.override
  SectionMetadataInternal create(ffi.Pointer<ffi.Void> ptr) {
    return SectionMetadataInternal.fromNativePtr(ptr);
  }

  @core.override
  SectionMetadataInternal fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SectionMetadataInternal.fromNativePtr(
        _SectionMetadataInternal_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SectionMetadataInternal obj) {
    return _SectionMetadataInternal_upcast(
        SectionMetadataInternal.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SectionMetadataInternal_name();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SectionMetadataInternal_downcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_SectionMetadataInternal_downcast')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SectionMetadataInternal_upcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_SectionMetadataInternal_upcast')
    .asFunction(isLeaf: true);

final native_types.NativeString Function() _SectionMetadataInternal_name = lib
    .library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_transport_masstransit_internal_SectionMetadataInternal_name')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SectionMetadataInternal_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_SectionMetadataInternal_clone')
    .asFunction(isLeaf: true);

final _SectionMetadataInternal_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_transport_masstransit_internal_SectionMetadataInternal_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _SectionMetadataInternal_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_transport_masstransit_internal_SectionMetadataInternal_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SectionMetadataInternal_get_metadata = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_SectionMetadataInternal_get_metadata')
    .asFunction(isLeaf: true);
final core.bool Function(
    ffi.Pointer<
        ffi
        .Void>) _SectionMetadataInternal_get_isPassThroughTransportSection = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_SectionMetadataInternal_get_isPassThroughTransportSection')
    .asFunction(isLeaf: true);
