part of 'tunnel.dart';

final class DrivingTunnelNative extends ffi.Struct {
  external mapkit_geometry_geometry.SubpolylineNative position;
}

final DrivingTunnelNative Function(mapkit_geometry_geometry.SubpolylineNative)
    _DrivingTunnelNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingTunnelNative Function(
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_directions_driving_DrivingTunnel_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingTunnelImpl.toPointer',
    toPlatform: '(val) => DrivingTunnelImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingTunnel')
extension DrivingTunnelImpl on DrivingTunnel {
  static DrivingTunnel fromNative(DrivingTunnelNative native) {
    return DrivingTunnel(
        mapkit_geometry_geometry.SubpolylineImpl.fromNative(native.position));
  }

  static DrivingTunnelNative toNative(DrivingTunnel obj) {
    return _DrivingTunnelNativeInit(
        mapkit_geometry_geometry.SubpolylineImpl.toNative(obj.position));
  }

  static DrivingTunnel? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        DrivingTunnelImpl.fromNative(ptr.cast<DrivingTunnelNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingTunnel? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingTunnelNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
