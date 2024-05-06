part of 'construction.dart';

@bindings_annotations.ContainerData(
    toNative: 'MasstransitConstructionIDImpl.toPointer',
    toPlatform:
        '(val) => MasstransitConstructionIDImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitConstructionID')
extension MasstransitConstructionIDImpl on MasstransitConstructionID {
  static core.int toInt(MasstransitConstructionID e) {
    return e.index;
  }

  static MasstransitConstructionID fromInt(core.int val) {
    return MasstransitConstructionID.values[val];
  }

  static MasstransitConstructionID? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(MasstransitConstructionID? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
