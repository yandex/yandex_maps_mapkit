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
import 'package:yandex_maps_mapkit/src/transport/masstransit/common.dart'
    as transport_masstransit_common;

part 'vehicle_raw_data.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'VehicleRawData.toPointer',
    toPlatform: '(val) => VehicleRawData.fromPointer(val, needFree: false)')
class VehicleRawData extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final id = to_platform.toPlatformString(_VehicleRawData_get_id(_ptr));
  late final threadId =
      to_platform.toPlatformString(_VehicleRawData_get_threadId(_ptr));
  late final line = transport_masstransit_common.MasstransitLine.fromNativePtr(
      _VehicleRawData_get_line(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_VehicleRawData_free.cast());

  VehicleRawData(core.String id, core.String threadId,
      transport_masstransit_common.MasstransitLine line)
      : this.fromNativePtr(_VehicleRawData_init(
            to_native.toNativeString(id),
            to_native.toNativeString(threadId),
            transport_masstransit_common.MasstransitLine.getNativePtr(line)));

  /// @nodoc
  @internal
  VehicleRawData.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(VehicleRawData? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static VehicleRawData? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return VehicleRawData.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static VehicleRawData? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        VehicleRawData.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(VehicleRawData? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _VehicleRawData_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _VehicleRawDataFactory get factory => const _VehicleRawDataFactory();

  /// @nodoc
  @core.override
  _VehicleRawDataFactory get runtimeFactory => const _VehicleRawDataFactory();
}

/// @nodoc
class _VehicleRawDataFactory
    extends struct_factory.StructFactory<VehicleRawData> {
  const _VehicleRawDataFactory();

  @core.override
  VehicleRawData create(ffi.Pointer<ffi.Void> ptr) {
    return VehicleRawData.fromNativePtr(ptr);
  }

  @core.override
  VehicleRawData fromParent(ffi.Pointer<ffi.Void> ptr) {
    return VehicleRawData.fromNativePtr(_VehicleRawData_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(VehicleRawData obj) {
    return _VehicleRawData_upcast(VehicleRawData.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _VehicleRawData_name();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _VehicleRawData_downcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_VehicleRawData_downcast')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _VehicleRawData_upcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_VehicleRawData_upcast')
    .asFunction(isLeaf: true);

final native_types.NativeString Function() _VehicleRawData_name = lib.library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_transport_masstransit_internal_VehicleRawData_name')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _VehicleRawData_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_VehicleRawData_clone')
    .asFunction(isLeaf: true);

final _VehicleRawData_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_internal_VehicleRawData_free');

final ffi.Pointer<ffi.Void> Function(native_types.NativeString,
        native_types.NativeString, ffi.Pointer<ffi.Void>) _VehicleRawData_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(native_types.NativeString,
                        native_types.NativeString, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_internal_VehicleRawData_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(
    ffi
        .Pointer<ffi.Void>) _VehicleRawData_get_id = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_VehicleRawData_get_id')
    .asFunction(isLeaf: true);
final native_types.NativeString Function(
    ffi
        .Pointer<ffi.Void>) _VehicleRawData_get_threadId = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_VehicleRawData_get_threadId')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _VehicleRawData_get_line = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_VehicleRawData_get_line')
    .asFunction(isLeaf: true);
