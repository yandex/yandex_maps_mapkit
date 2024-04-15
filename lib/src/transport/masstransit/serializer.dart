import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:typed_data' as typed_data;
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
import 'package:yandex_maps_mapkit/src/transport/masstransit/route.dart'
    as transport_masstransit_route;

part 'serializer.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'MasstransitRouteSerializer.getNativePtr',
    toPlatform:
        '(val) => MasstransitRouteSerializer.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class MasstransitRouteSerializer implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitRouteSerializer_free.cast());

  /// @nodoc
  MasstransitRouteSerializer.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  MasstransitRouteSerializer.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRouteSerializer? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static MasstransitRouteSerializer? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitRouteSerializer.fromNativePtr(ptr);
  }

  /// Serializes the route.
  /// Return Route's serialized representation. Empty array in case of any
  /// errors.
  typed_data.ByteBuffer save(
      transport_masstransit_route.MasstransitRoute route) {
    return to_platform.toPlatformBytes(_MasstransitRouteSerializer_save(
        ptr, transport_masstransit_route.MasstransitRoute.getNativePtr(route)));
  }

  /// Deserializes the route.
  /// Return Deserialized Route. Null in case of any errors.
  transport_masstransit_route.MasstransitRoute? load(
      typed_data.ByteBuffer data) {
    return transport_masstransit_route.MasstransitRoute.fromOptionalPtr(
        _MasstransitRouteSerializer_load(ptr, to_native.toNativeBytes(data)));
  }
}

final _MasstransitRouteSerializer_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteSerializer_free');

final native_types.NativeBytes Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteSerializer_save = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeBytes Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteSerializer_save')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    native_types
        .NativeBytes) _MasstransitRouteSerializer_load = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, native_types.NativeBytes)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteSerializer_load')
    .asFunction();
