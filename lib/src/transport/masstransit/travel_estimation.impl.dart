part of 'travel_estimation.dart';

final class MasstransitTravelEstimationNative extends ffi.Struct {
  external mapkit_time.TimeNative departureTime;
  external mapkit_time.TimeNative arrivalTime;
}

final MasstransitTravelEstimationNative Function(
    mapkit_time.TimeNative,
    mapkit_time
        .TimeNative) _MasstransitTravelEstimationNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                MasstransitTravelEstimationNative Function(
                    mapkit_time.TimeNative, mapkit_time.TimeNative)>>(
        'yandex_flutter_transport_masstransit_MasstransitTravelEstimation_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTravelEstimationImpl.toPointer',
    toPlatform:
        '(val) => MasstransitTravelEstimationImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTravelEstimation')
extension MasstransitTravelEstimationImpl on MasstransitTravelEstimation {
  static MasstransitTravelEstimation fromNative(
      MasstransitTravelEstimationNative native) {
    return MasstransitTravelEstimation(
        mapkit_time.TimeImpl.fromNative(native.departureTime),
        mapkit_time.TimeImpl.fromNative(native.arrivalTime));
  }

  static MasstransitTravelEstimationNative toNative(
      MasstransitTravelEstimation obj) {
    return _MasstransitTravelEstimationNativeInit(
        mapkit_time.TimeImpl.toNative(obj.departureTime),
        mapkit_time.TimeImpl.toNative(obj.arrivalTime));
  }

  static MasstransitTravelEstimation? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitTravelEstimationImpl.fromNative(
        ptr.cast<MasstransitTravelEstimationNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitTravelEstimation? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitTravelEstimationNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
