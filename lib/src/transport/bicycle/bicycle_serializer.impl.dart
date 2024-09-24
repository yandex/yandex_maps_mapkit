part of 'bicycle_serializer.dart';

typed_data.ByteBuffer _save(transport_bicycle_route.BicycleRoute route) {
  final result = _BicycleRouteSerializer_save(
      transport_bicycle_route.BicycleRouteImpl.getNativePtr(route));
  return to_platform.toPlatformBytes(result);
}

transport_bicycle_route.BicycleRoute _load(typed_data.ByteBuffer data) {
  final result = _BicycleRouteSerializer_load(to_native.toNativeBytes(data));
  return transport_bicycle_route.BicycleRouteImpl.fromNativePtr(result);
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
