part of 'section.dart';

@bindings_annotations.ContainerData(
    toNative: 'BicycleSectionImpl.getNativePtr',
    toPlatform: '(val) => BicycleSectionImpl.fromPointer(val, needFree: false)',
    platformType: 'BicycleSection')
final class BicycleSectionImpl extends BicycleSection {
  BicycleSectionImpl(transport_bicycle_weight.BicycleWeight weight,
      mapkit_geometry_geometry.Subpolyline geometry)
      : this.fromNativePtr(_BicycleSection_init(
            transport_bicycle_weight.BicycleWeightImpl.toNative(weight),
            mapkit_geometry_geometry.SubpolylineImpl.toNative(geometry)));

  @core.override
  late final weight = transport_bicycle_weight.BicycleWeightImpl.fromNative(
      _BicycleSection_get_weight(_ptr));
  @core.override
  late final geometry = mapkit_geometry_geometry.SubpolylineImpl.fromNative(
      _BicycleSection_get_geometry(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleSection_free.cast());

  BicycleSectionImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(BicycleSection? obj) {
    return (obj as BicycleSectionImpl?)?._ptr ?? ffi.nullptr;
  }

  static BicycleSection? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : BicycleSectionImpl.fromNativePtr(ptr);
  }

  static BicycleSection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = BicycleSectionImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _BicycleSection_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_bicycle_BicycleSection_free');

final ffi.Pointer<ffi.Void> Function(
        transport_bicycle_weight.BicycleWeightNative,
        mapkit_geometry_geometry.SubpolylineNative) _BicycleSection_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        transport_bicycle_weight.BicycleWeightNative,
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_transport_bicycle_BicycleSection_init')
        .asFunction(isLeaf: true);

final transport_bicycle_weight.BicycleWeightNative Function(
        ffi.Pointer<ffi.Void>) _BicycleSection_get_weight =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    transport_bicycle_weight.BicycleWeightNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleSection_get_weight')
        .asFunction(isLeaf: true);
final mapkit_geometry_geometry.SubpolylineNative Function(ffi.Pointer<ffi.Void>)
    _BicycleSection_get_geometry = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_geometry.SubpolylineNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleSection_get_geometry')
        .asFunction(isLeaf: true);
