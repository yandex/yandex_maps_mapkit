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

part 'trajectory.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'TrajectorySegmentMetadata.toPointer',
    toPlatform:
        '(val) => TrajectorySegmentMetadata.fromPointer(val, needFree: false)')
class TrajectorySegmentMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final time = _TrajectorySegmentMetadata_get_time(_ptr);
  late final duration = _TrajectorySegmentMetadata_get_duration(_ptr);

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_TrajectorySegmentMetadata_free.cast());

  TrajectorySegmentMetadata(core.int time, core.int duration)
      : this.fromNativePtr(_TrajectorySegmentMetadata_init(time, duration));

  /// @nodoc
  @internal
  TrajectorySegmentMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(TrajectorySegmentMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static TrajectorySegmentMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return TrajectorySegmentMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static TrajectorySegmentMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = TrajectorySegmentMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(TrajectorySegmentMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _TrajectorySegmentMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _TrajectorySegmentMetadataFactory get factory =>
      const _TrajectorySegmentMetadataFactory();

  /// @nodoc
  @core.override
  _TrajectorySegmentMetadataFactory get runtimeFactory =>
      const _TrajectorySegmentMetadataFactory();
}

/// @nodoc
class _TrajectorySegmentMetadataFactory
    extends struct_factory.StructFactory<TrajectorySegmentMetadata> {
  const _TrajectorySegmentMetadataFactory();

  @core.override
  TrajectorySegmentMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return TrajectorySegmentMetadata.fromNativePtr(ptr);
  }

  @core.override
  TrajectorySegmentMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return TrajectorySegmentMetadata.fromNativePtr(
        _TrajectorySegmentMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(TrajectorySegmentMetadata obj) {
    return _TrajectorySegmentMetadata_upcast(
        TrajectorySegmentMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _TrajectorySegmentMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _TrajectorySegmentMetadata_downcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TrajectorySegmentMetadata_downcast')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _TrajectorySegmentMetadata_upcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TrajectorySegmentMetadata_upcast')
    .asFunction(isLeaf: true);

final native_types.NativeString Function() _TrajectorySegmentMetadata_name = lib
    .library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_transport_masstransit_internal_TrajectorySegmentMetadata_name')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _TrajectorySegmentMetadata_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TrajectorySegmentMetadata_clone')
    .asFunction(isLeaf: true);

final _TrajectorySegmentMetadata_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_transport_masstransit_internal_TrajectorySegmentMetadata_free');

final ffi.Pointer<ffi.Void> Function(
    core.int,
    core
        .int) _TrajectorySegmentMetadata_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Int64, ffi.Uint32)>>(
        'yandex_flutter_transport_masstransit_internal_TrajectorySegmentMetadata_init')
    .asFunction(isLeaf: true);

final core.int Function(
    ffi
        .Pointer<ffi.Void>) _TrajectorySegmentMetadata_get_time = lib.library
    .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TrajectorySegmentMetadata_get_time')
    .asFunction(isLeaf: true);
final core.int Function(
    ffi
        .Pointer<ffi.Void>) _TrajectorySegmentMetadata_get_duration = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TrajectorySegmentMetadata_get_duration')
    .asFunction(isLeaf: true);
