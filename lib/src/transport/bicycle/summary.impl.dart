part of 'summary.dart';

@bindings_annotations.ContainerData(
    toNative: 'BicycleSummaryImpl.getNativePtr',
    toPlatform: '(val) => BicycleSummaryImpl.fromPointer(val, needFree: false)',
    platformType: 'BicycleSummary')
final class BicycleSummaryImpl extends BicycleSummary {
  BicycleSummaryImpl(transport_bicycle_weight.BicycleWeight weight,
      transport_bicycle_flags.BicycleFlags? flags)
      : this.fromNativePtr(_BicycleSummary_init(
            transport_bicycle_weight.BicycleWeightImpl.toNative(weight),
            transport_bicycle_flags.BicycleFlagsImpl.toPointer(flags)));

  @core.override
  late final weight = transport_bicycle_weight.BicycleWeightImpl.fromNative(
      _BicycleSummary_get_weight(_ptr));
  @core.override
  late final flags = transport_bicycle_flags.BicycleFlagsImpl.fromPointer(
      _BicycleSummary_get_flags(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleSummary_free.cast());

  BicycleSummaryImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(BicycleSummary? obj) {
    return (obj as BicycleSummaryImpl?)?._ptr ?? ffi.nullptr;
  }

  static BicycleSummary? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : BicycleSummaryImpl.fromNativePtr(ptr);
  }

  static BicycleSummary? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = BicycleSummaryImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _BicycleSummary_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_bicycle_BicycleSummary_free');

final ffi.Pointer<ffi.Void> Function(
        transport_bicycle_weight.BicycleWeightNative, ffi.Pointer<ffi.Void>)
    _BicycleSummary_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        transport_bicycle_weight.BicycleWeightNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleSummary_init')
        .asFunction(isLeaf: true);

final transport_bicycle_weight.BicycleWeightNative Function(
        ffi.Pointer<ffi.Void>) _BicycleSummary_get_weight =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    transport_bicycle_weight.BicycleWeightNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleSummary_get_weight')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _BicycleSummary_get_flags = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleSummary_get_flags')
        .asFunction(isLeaf: true);
