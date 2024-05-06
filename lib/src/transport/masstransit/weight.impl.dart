part of 'weight.dart';

final class MasstransitWeightNative extends ffi.Struct {
  external mapkit_localized_value.LocalizedValueNative time;
  external mapkit_localized_value.LocalizedValueNative walkingDistance;
  @ffi.Uint32()
  external core.int transfersCount;
}

final MasstransitWeightNative Function(
        mapkit_localized_value.LocalizedValueNative,
        mapkit_localized_value.LocalizedValueNative,
        core.int) _MasstransitWeightNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    MasstransitWeightNative Function(
                        mapkit_localized_value.LocalizedValueNative,
                        mapkit_localized_value.LocalizedValueNative,
                        ffi.Uint32)>>(
            'yandex_flutter_transport_masstransit_MasstransitWeight_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitWeightImpl.toPointer',
    toPlatform:
        '(val) => MasstransitWeightImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitWeight')
extension MasstransitWeightImpl on MasstransitWeight {
  static MasstransitWeight fromNative(MasstransitWeightNative native) {
    return MasstransitWeight(
        mapkit_localized_value.LocalizedValueImpl.fromNative(native.time),
        mapkit_localized_value.LocalizedValueImpl.fromNative(
            native.walkingDistance),
        transfersCount: native.transfersCount);
  }

  static MasstransitWeightNative toNative(MasstransitWeight obj) {
    return _MasstransitWeightNativeInit(
        mapkit_localized_value.LocalizedValueImpl.toNative(obj.time),
        mapkit_localized_value.LocalizedValueImpl.toNative(obj.walkingDistance),
        obj.transfersCount);
  }

  static MasstransitWeight? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitWeightImpl.fromNative(
        ptr.cast<MasstransitWeightNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitWeight? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitWeightNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
