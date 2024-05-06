part of 'action.dart';

@bindings_annotations.ContainerData(
    toNative: 'DrivingActionImpl.toPointer',
    toPlatform: '(val) => DrivingActionImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingAction')
extension DrivingActionImpl on DrivingAction {
  static core.int toInt(DrivingAction e) {
    return e.index;
  }

  static DrivingAction fromInt(core.int val) {
    return DrivingAction.values[val];
  }

  static DrivingAction? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(DrivingAction? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
