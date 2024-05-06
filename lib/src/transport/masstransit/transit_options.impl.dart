part of 'transit_options.dart';

@bindings_annotations.ContainerData(
    toNative: 'FilterVehicleTypesImpl.toPointer',
    toPlatform:
        '(val) => FilterVehicleTypesImpl.fromPointer(val, needFree: false)',
    platformType: 'FilterVehicleTypes')
extension FilterVehicleTypesImpl on FilterVehicleTypes {
  static core.int toInt(FilterVehicleTypes e) {
    return e.value;
  }

  static FilterVehicleTypes fromInt(core.int val) {
    return FilterVehicleTypes(val);
  }

  static FilterVehicleTypes? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(FilterVehicleTypes? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

final class TransitOptionsNative extends ffi.Struct {
  @ffi.Int64()
  external core.int avoid;
  external transport_masstransit_options.TimeOptionsNative timeOptions;
}

final TransitOptionsNative Function(
  core.int,
  transport_masstransit_options.TimeOptionsNative,
) _TransitOptionsNativeInit = lib.library
    .lookup<
        ffi.NativeFunction<
            TransitOptionsNative Function(
              ffi.Int64,
              transport_masstransit_options.TimeOptionsNative,
            )>>('yandex_flutter_transport_masstransit_TransitOptions_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'TransitOptionsImpl.toPointer',
    toPlatform: '(val) => TransitOptionsImpl.fromPointer(val, needFree: false)',
    platformType: 'TransitOptions')
extension TransitOptionsImpl on TransitOptions {
  static TransitOptions fromNative(TransitOptionsNative native) {
    return TransitOptions(
      avoid: FilterVehicleTypesImpl.fromInt(native.avoid),
      transport_masstransit_options.TimeOptionsImpl.fromNative(
          native.timeOptions),
    );
  }

  static TransitOptionsNative toNative(TransitOptions obj) {
    return _TransitOptionsNativeInit(
      FilterVehicleTypesImpl.toInt(obj.avoid),
      transport_masstransit_options.TimeOptionsImpl.toNative(obj.timeOptions),
    );
  }

  static TransitOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        TransitOptionsImpl.fromNative(ptr.cast<TransitOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(TransitOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<TransitOptionsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
