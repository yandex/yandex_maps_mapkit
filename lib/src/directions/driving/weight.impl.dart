part of 'weight.dart';

final class DrivingWeightNative extends ffi.Struct {
  external mapkit_localized_value.LocalizedValueNative time;
  external mapkit_localized_value.LocalizedValueNative timeWithTraffic;
  external mapkit_localized_value.LocalizedValueNative distance;
}

final DrivingWeightNative Function(
        mapkit_localized_value.LocalizedValueNative,
        mapkit_localized_value.LocalizedValueNative,
        mapkit_localized_value.LocalizedValueNative) _DrivingWeightNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingWeightNative Function(
                        mapkit_localized_value.LocalizedValueNative,
                        mapkit_localized_value.LocalizedValueNative,
                        mapkit_localized_value.LocalizedValueNative)>>(
            'yandex_flutter_directions_driving_DrivingWeight_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingWeightImpl.toPointer',
    toPlatform: '(val) => DrivingWeightImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingWeight')
extension DrivingWeightImpl on DrivingWeight {
  static DrivingWeight fromNative(DrivingWeightNative native) {
    return DrivingWeight(
        mapkit_localized_value.LocalizedValueImpl.fromNative(native.time),
        mapkit_localized_value.LocalizedValueImpl.fromNative(
            native.timeWithTraffic),
        mapkit_localized_value.LocalizedValueImpl.fromNative(native.distance));
  }

  static DrivingWeightNative toNative(DrivingWeight obj) {
    return _DrivingWeightNativeInit(
        mapkit_localized_value.LocalizedValueImpl.toNative(obj.time),
        mapkit_localized_value.LocalizedValueImpl.toNative(obj.timeWithTraffic),
        mapkit_localized_value.LocalizedValueImpl.toNative(obj.distance));
  }

  static DrivingWeight? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        DrivingWeightImpl.fromNative(ptr.cast<DrivingWeightNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingWeight? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingWeightNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
