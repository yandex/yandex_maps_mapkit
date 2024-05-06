part of 'toll_post.dart';

final class DrivingTollPostNative extends ffi.Struct {
  external mapkit_geometry_geometry.PolylinePositionNative position;
  external ffi.Pointer<ffi.Void> id;
  external ffi.Pointer<ffi.Void> time_with_traffic;
  external ffi.Pointer<ffi.Void> nonTransactional;
}

final DrivingTollPostNative Function(
        mapkit_geometry_geometry.PolylinePositionNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingTollPostNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingTollPostNative Function(
                        mapkit_geometry_geometry.PolylinePositionNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_internal_DrivingTollPost_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingTollPostImpl.toPointer',
    toPlatform:
        '(val) => DrivingTollPostImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingTollPost')
extension DrivingTollPostImpl on DrivingTollPost {
  static DrivingTollPost fromNative(DrivingTollPostNative native) {
    return DrivingTollPost(
        mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
            native.position),
        id: to_platform.toPlatformFromPointerInt64(native.id),
        time_with_traffic:
            to_platform.toPlatformFromPointerDouble(native.time_with_traffic),
        nonTransactional:
            to_platform.toPlatformFromPointerBool(native.nonTransactional));
  }

  static DrivingTollPostNative toNative(DrivingTollPost obj) {
    return _DrivingTollPostNativeInit(
        mapkit_geometry_geometry.PolylinePositionImpl.toNative(obj.position),
        to_native.toNativePtrInt64(obj.id),
        to_native.toNativePtrDouble(obj.time_with_traffic),
        to_native.toNativePtrBool(obj.nonTransactional));
  }

  static DrivingTollPost? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        DrivingTollPostImpl.fromNative(ptr.cast<DrivingTollPostNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingTollPost? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingTollPostNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
