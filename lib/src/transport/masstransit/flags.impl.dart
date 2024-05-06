part of 'flags.dart';

final class MasstransitFlagsNative extends ffi.Struct {
  @ffi.Bool()
  external core.bool requiresAccessPass;
  @ffi.Bool()
  external core.bool hasAutoRoad;
}

final MasstransitFlagsNative Function(core.bool, core.bool)
    _MasstransitFlagsNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    MasstransitFlagsNative Function(ffi.Bool, ffi.Bool)>>(
            'yandex_flutter_transport_masstransit_MasstransitFlags_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitFlagsImpl.toPointer',
    toPlatform:
        '(val) => MasstransitFlagsImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitFlags')
extension MasstransitFlagsImpl on MasstransitFlags {
  static MasstransitFlags fromNative(MasstransitFlagsNative native) {
    return MasstransitFlags(
        requiresAccessPass: native.requiresAccessPass,
        hasAutoRoad: native.hasAutoRoad);
  }

  static MasstransitFlagsNative toNative(MasstransitFlags obj) {
    return _MasstransitFlagsNativeInit(obj.requiresAccessPass, obj.hasAutoRoad);
  }

  static MasstransitFlags? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        MasstransitFlagsImpl.fromNative(ptr.cast<MasstransitFlagsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitFlags? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitFlagsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
