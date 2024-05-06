part of 'bicycle_serializer.dart';

typed_data.ByteBuffer _save(transport_bicycle_route.BicycleRoute route) {
  return to_platform.toPlatformBytes(_BicycleRouteSerializer_save(
      transport_bicycle_route.BicycleRouteImpl.getNativePtr(route)));
}

transport_bicycle_route.BicycleRoute _load(typed_data.ByteBuffer data) {
  return transport_bicycle_route.BicycleRouteImpl.fromNativePtr(
      _BicycleRouteSerializer_load(to_native.toNativeBytes(data)));
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
