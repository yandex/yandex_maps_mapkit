part of 'fare.dart';

final class MasstransitPaymentMediaNative extends ffi.Struct {
  external native_types.NativeString id;
  external ffi.Pointer<ffi.Void> name;
  @ffi.Int64()
  external core.int type;
}

final MasstransitPaymentMediaNative Function(
  native_types.NativeString,
  ffi.Pointer<ffi.Void>,
  core.int,
) _MasstransitPaymentMediaNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                MasstransitPaymentMediaNative Function(
                  native_types.NativeString,
                  ffi.Pointer<ffi.Void>,
                  ffi.Int64,
                )>>(
        'yandex_flutter_transport_masstransit_MasstransitPaymentMedia_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitPaymentMediaImpl.toPointer',
    toPlatform:
        '(val) => MasstransitPaymentMediaImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitPaymentMedia')
extension MasstransitPaymentMediaImpl on MasstransitPaymentMedia {
  static MasstransitPaymentMedia fromNative(
      MasstransitPaymentMediaNative native) {
    return MasstransitPaymentMedia(
      id: to_platform.toPlatformString(native.id),
      name: to_platform.toPlatformFromPointerString(native.name),
      MasstransitPaymentMediaMediaTypeImpl.fromInt(native.type),
    );
  }

  static MasstransitPaymentMediaNative toNative(MasstransitPaymentMedia obj) {
    return _MasstransitPaymentMediaNativeInit(
      to_native.toNativeString(obj.id),
      to_native.toNativePtrString(obj.name),
      MasstransitPaymentMediaMediaTypeImpl.toInt(obj.type),
    );
  }

  static MasstransitPaymentMedia? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitPaymentMediaImpl.fromNative(
        ptr.cast<MasstransitPaymentMediaNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitPaymentMedia? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitPaymentMediaNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitPaymentMediaMediaTypeImpl.toPointer',
    toPlatform:
        '(val) => MasstransitPaymentMediaMediaTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitPaymentMediaMediaType')
extension MasstransitPaymentMediaMediaTypeImpl
    on MasstransitPaymentMediaMediaType {
  static core.int toInt(MasstransitPaymentMediaMediaType e) {
    return e.index;
  }

  static MasstransitPaymentMediaMediaType fromInt(core.int val) {
    return MasstransitPaymentMediaMediaType.values[val];
  }

  static MasstransitPaymentMediaMediaType? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitPaymentMediaMediaType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

final class MasstransitPaymentNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> paymentMedia;
  external mapkit_money.TaxiMoneyNative price;
}

final MasstransitPaymentNative Function(
  ffi.Pointer<ffi.Void>,
  mapkit_money.TaxiMoneyNative,
) _MasstransitPaymentNativeInit = lib.library
    .lookup<
        ffi.NativeFunction<
            MasstransitPaymentNative Function(
              ffi.Pointer<ffi.Void>,
              mapkit_money.TaxiMoneyNative,
            )>>('yandex_flutter_transport_masstransit_MasstransitPayment_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitPaymentImpl.toPointer',
    toPlatform:
        '(val) => MasstransitPaymentImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitPayment')
extension MasstransitPaymentImpl on MasstransitPayment {
  static MasstransitPayment fromNative(MasstransitPaymentNative native) {
    return MasstransitPayment(
      paymentMedia:
          MasstransitPaymentMediaImpl.fromPointer(native.paymentMedia),
      mapkit_money.TaxiMoneyImpl.fromNative(native.price),
    );
  }

  static MasstransitPaymentNative toNative(MasstransitPayment obj) {
    return _MasstransitPaymentNativeInit(
      MasstransitPaymentMediaImpl.toPointer(obj.paymentMedia),
      mapkit_money.TaxiMoneyImpl.toNative(obj.price),
    );
  }

  static MasstransitPayment? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitPaymentImpl.fromNative(
        ptr.cast<MasstransitPaymentNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitPayment? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitPaymentNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class MasstransitSectionPaymentOptionNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> payment;
  @ffi.Int64()
  external core.int appliedFare;
}

final MasstransitSectionPaymentOptionNative Function(
  ffi.Pointer<ffi.Void>,
  core.int,
) _MasstransitSectionPaymentOptionNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                MasstransitSectionPaymentOptionNative Function(
                  ffi.Pointer<ffi.Void>,
                  ffi.Int64,
                )>>(
        'yandex_flutter_transport_masstransit_MasstransitSectionPaymentOption_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitSectionPaymentOptionImpl.toPointer',
    toPlatform:
        '(val) => MasstransitSectionPaymentOptionImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitSectionPaymentOption')
extension MasstransitSectionPaymentOptionImpl
    on MasstransitSectionPaymentOption {
  static MasstransitSectionPaymentOption fromNative(
      MasstransitSectionPaymentOptionNative native) {
    return MasstransitSectionPaymentOption(
      payment: MasstransitPaymentImpl.fromPointer(native.payment),
      MasstransitSectionPaymentOptionAppliedFareImpl.fromInt(
          native.appliedFare),
    );
  }

  static MasstransitSectionPaymentOptionNative toNative(
      MasstransitSectionPaymentOption obj) {
    return _MasstransitSectionPaymentOptionNativeInit(
      MasstransitPaymentImpl.toPointer(obj.payment),
      MasstransitSectionPaymentOptionAppliedFareImpl.toInt(obj.appliedFare),
    );
  }

  static MasstransitSectionPaymentOption? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitSectionPaymentOptionImpl.fromNative(
        ptr.cast<MasstransitSectionPaymentOptionNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitSectionPaymentOption? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitSectionPaymentOptionNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitSectionPaymentOptionAppliedFareImpl.toPointer',
    toPlatform:
        '(val) => MasstransitSectionPaymentOptionAppliedFareImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitSectionPaymentOptionAppliedFare')
extension MasstransitSectionPaymentOptionAppliedFareImpl
    on MasstransitSectionPaymentOptionAppliedFare {
  static core.int toInt(MasstransitSectionPaymentOptionAppliedFare e) {
    return e.index;
  }

  static MasstransitSectionPaymentOptionAppliedFare fromInt(core.int val) {
    return MasstransitSectionPaymentOptionAppliedFare.values[val];
  }

  static MasstransitSectionPaymentOptionAppliedFare? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitSectionPaymentOptionAppliedFare? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitRoutePaymentOptionImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitRoutePaymentOptionImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitRoutePaymentOption')
final class MasstransitRoutePaymentOptionImpl
    extends MasstransitRoutePaymentOption {
  MasstransitRoutePaymentOptionImpl(core.List<MasstransitPayment> payment,
      core.List<mapkit_money.TaxiMoney> totalPrice)
      : this.fromNativePtr(_MasstransitRoutePaymentOption_init(
            MasstransitPaymentContainerExtension.toNativeVector(payment),
            mapkit_money.TaxiMoneyContainerExtension.toNativeVector(
                totalPrice)));

  @core.override
  late final payment = MasstransitPaymentContainerExtension.toPlatformVector(
      _MasstransitRoutePaymentOption_get_payment(_ptr));
  @core.override
  late final totalPrice =
      mapkit_money.TaxiMoneyContainerExtension.toPlatformVector(
          _MasstransitRoutePaymentOption_get_totalPrice(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitRoutePaymentOption_free.cast());

  MasstransitRoutePaymentOptionImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      MasstransitRoutePaymentOption? obj) {
    return (obj as MasstransitRoutePaymentOptionImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitRoutePaymentOption? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitRoutePaymentOptionImpl.fromNativePtr(ptr);
  }

  static MasstransitRoutePaymentOption? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitRoutePaymentOptionImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _MasstransitRoutePaymentOption_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_transport_masstransit_MasstransitRoutePaymentOption_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _MasstransitRoutePaymentOption_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRoutePaymentOption_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRoutePaymentOption_get_payment = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRoutePaymentOption_get_payment')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRoutePaymentOption_get_totalPrice = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRoutePaymentOption_get_totalPrice')
    .asFunction(isLeaf: true);
