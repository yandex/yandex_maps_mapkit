part of 'significance.dart';

@bindings_annotations.ContainerData(
    toNative: 'RoadEventSignificanceImpl.toPointer',
    toPlatform:
        '(val) => RoadEventSignificanceImpl.fromPointer(val, needFree: false)',
    platformType: 'RoadEventSignificance')
extension RoadEventSignificanceImpl on RoadEventSignificance {
  static core.int toInt(RoadEventSignificance e) {
    return e.index;
  }

  static RoadEventSignificance fromInt(core.int val) {
    return RoadEventSignificance.values[val];
  }

  static RoadEventSignificance? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(RoadEventSignificance? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
