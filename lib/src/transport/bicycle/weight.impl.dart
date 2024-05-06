part of 'weight.dart';

final class BicycleWeightNative extends ffi.Struct {
  external mapkit_localized_value.LocalizedValueNative time;
  external mapkit_localized_value.LocalizedValueNative distance;
}

final BicycleWeightNative Function(mapkit_localized_value.LocalizedValueNative,
        mapkit_localized_value.LocalizedValueNative) _BicycleWeightNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    BicycleWeightNative Function(
                        mapkit_localized_value.LocalizedValueNative,
                        mapkit_localized_value.LocalizedValueNative)>>(
            'yandex_flutter_transport_bicycle_BicycleWeight_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'BicycleWeightImpl.toPointer',
    toPlatform: '(val) => BicycleWeightImpl.fromPointer(val, needFree: false)',
    platformType: 'BicycleWeight')
extension BicycleWeightImpl on BicycleWeight {
  static BicycleWeight fromNative(BicycleWeightNative native) {
    return BicycleWeight(
        mapkit_localized_value.LocalizedValueImpl.fromNative(native.time),
        mapkit_localized_value.LocalizedValueImpl.fromNative(native.distance));
  }

  static BicycleWeightNative toNative(BicycleWeight obj) {
    return _BicycleWeightNativeInit(
        mapkit_localized_value.LocalizedValueImpl.toNative(obj.time),
        mapkit_localized_value.LocalizedValueImpl.toNative(obj.distance));
  }

  static BicycleWeight? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        BicycleWeightImpl.fromNative(ptr.cast<BicycleWeightNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(BicycleWeight? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<BicycleWeightNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
