import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:typed_data' as typed_data;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/transport/bicycle/route.dart'
    as transport_bicycle_route;

class BicycleRouteSerializer {
  BicycleRouteSerializer._();

  /// Returns a route's serialized representation. Returns an empty array
  /// if there are any errors.
  static typed_data.ByteBuffer save(
      transport_bicycle_route.BicycleRoute route) {
    return to_platform.toPlatformBytes(_BicycleRouteSerializer_save(
        transport_bicycle_route.BicycleRoute.getNativePtr(route)));
  }

  /// Returns a deserialized route. Returns null on error.
  static transport_bicycle_route.BicycleRoute load(typed_data.ByteBuffer data) {
    return transport_bicycle_route.BicycleRoute.fromNativePtr(
        _BicycleRouteSerializer_load(to_native.toNativeBytes(data)));
  }
}

final native_types.NativeBytes Function(ffi.Pointer<ffi.Void>)
    _BicycleRouteSerializer_save = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeBytes Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRouteSerializer_save')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(native_types.NativeBytes)
    _BicycleRouteSerializer_load = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(native_types.NativeBytes)>>(
            'yandex_flutter_transport_bicycle_BicycleRouteSerializer_load')
        .asFunction();
