part of 'flags.dart';

final class BicycleFlagsNative extends ffi.Struct {
  @ffi.Bool()
  external core.bool requiresAccessPass;
  @ffi.Bool()
  external core.bool hasAutoRoad;
}

final BicycleFlagsNative Function(
    core.bool,
    core
        .bool) _BicycleFlagsNativeInit = lib.library
    .lookup<
            ffi
            .NativeFunction<BicycleFlagsNative Function(ffi.Bool, ffi.Bool)>>(
        'yandex_flutter_transport_bicycle_BicycleFlags_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'BicycleFlagsImpl.toPointer',
    toPlatform: '(val) => BicycleFlagsImpl.fromPointer(val, needFree: false)',
    platformType: 'BicycleFlags')
extension BicycleFlagsImpl on BicycleFlags {
  static BicycleFlags fromNative(BicycleFlagsNative native) {
    return BicycleFlags(
        requiresAccessPass: native.requiresAccessPass,
        hasAutoRoad: native.hasAutoRoad);
  }

  static BicycleFlagsNative toNative(BicycleFlags obj) {
    return _BicycleFlagsNativeInit(obj.requiresAccessPass, obj.hasAutoRoad);
  }

  static BicycleFlags? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        BicycleFlagsImpl.fromNative(ptr.cast<BicycleFlagsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(BicycleFlags? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<BicycleFlagsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
