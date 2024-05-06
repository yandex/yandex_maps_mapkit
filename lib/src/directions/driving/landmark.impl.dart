part of 'landmark.dart';

@bindings_annotations.ContainerData(
    toNative: 'DrivingLandmarkImpl.toPointer',
    toPlatform:
        '(val) => DrivingLandmarkImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingLandmark')
extension DrivingLandmarkImpl on DrivingLandmark {
  static core.int toInt(DrivingLandmark e) {
    return e.index;
  }

  static DrivingLandmark fromInt(core.int val) {
    return DrivingLandmark.values[val];
  }

  static DrivingLandmark? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingLandmark? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
