part of 'summary.dart';

@bindings_annotations.ContainerData(
    toNative: 'MasstransitSummaryImpl.toPointer',
    toPlatform:
        '(val) => MasstransitSummaryImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitSummary')
final class MasstransitSummaryImpl implements MasstransitSummary {
  MasstransitSummaryImpl(
      transport_masstransit_weight.MasstransitWeight weight,
      transport_masstransit_travel_estimation.MasstransitTravelEstimation?
          estimation,
      transport_masstransit_flags.MasstransitFlags? flags)
      : this.fromNativePtr(_MasstransitSummary_init(
            transport_masstransit_weight.MasstransitWeightImpl.toNative(weight),
            transport_masstransit_travel_estimation
                .MasstransitTravelEstimationImpl.toPointer(estimation),
            transport_masstransit_flags.MasstransitFlagsImpl.toPointer(flags)));

  @core.override
  late final weight =
      transport_masstransit_weight.MasstransitWeightImpl.fromNative(
          _MasstransitSummary_get_weight(_ptr));
  @core.override
  late final estimation =
      transport_masstransit_travel_estimation.MasstransitTravelEstimationImpl
          .fromPointer(_MasstransitSummary_get_estimation(_ptr));
  @core.override
  late final flags =
      transport_masstransit_flags.MasstransitFlagsImpl.fromPointer(
          _MasstransitSummary_get_flags(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitSummary_free.cast());

  MasstransitSummaryImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitSummary? obj) {
    return (obj as MasstransitSummaryImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitSummary? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitSummaryImpl.fromNativePtr(ptr);
  }

  static MasstransitSummary? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitSummaryImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitSummary? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitSummary_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitSummary_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitSummary_clone')
        .asFunction(isLeaf: true);

final _MasstransitSummary_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitSummary_free');

final ffi.Pointer<ffi.Void> Function(
        transport_masstransit_weight.MasstransitWeightNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _MasstransitSummary_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        transport_masstransit_weight.MasstransitWeightNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitSummary_init')
        .asFunction(isLeaf: true);

final transport_masstransit_weight.MasstransitWeightNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitSummary_get_weight = lib.library
    .lookup<
            ffi.NativeFunction<
                transport_masstransit_weight.MasstransitWeightNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSummary_get_weight')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitSummary_get_estimation = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSummary_get_estimation')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitSummary_get_flags = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitSummary_get_flags')
        .asFunction(isLeaf: true);
