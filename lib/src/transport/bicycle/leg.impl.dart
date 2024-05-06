part of 'leg.dart';

@bindings_annotations.ContainerData(
    toNative: 'BicycleLegImpl.toPointer',
    toPlatform: '(val) => BicycleLegImpl.fromPointer(val, needFree: false)',
    platformType: 'BicycleLeg')
final class BicycleLegImpl implements BicycleLeg {
  BicycleLegImpl(transport_bicycle_weight.BicycleWeight weight,
      mapkit_geometry_geometry.Subpolyline geometry)
      : this.fromNativePtr(_BicycleLeg_init(
            transport_bicycle_weight.BicycleWeightImpl.toNative(weight),
            mapkit_geometry_geometry.SubpolylineImpl.toNative(geometry)));

  @core.override
  late final weight = transport_bicycle_weight.BicycleWeightImpl.fromNative(
      _BicycleLeg_get_weight(_ptr));
  @core.override
  late final geometry = mapkit_geometry_geometry.SubpolylineImpl.fromNative(
      _BicycleLeg_get_geometry(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleLeg_free.cast());

  BicycleLegImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(BicycleLeg? obj) {
    return (obj as BicycleLegImpl?)?._ptr ?? ffi.nullptr;
  }

  static BicycleLeg? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : BicycleLegImpl.fromNativePtr(ptr);
  }

  static BicycleLeg? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        BicycleLegImpl.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(BicycleLeg? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _BicycleLeg_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _BicycleLeg_clone =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleLeg_clone')
        .asFunction(isLeaf: true);

final _BicycleLeg_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_bicycle_BicycleLeg_free');

final ffi.Pointer<ffi.Void> Function(
        transport_bicycle_weight.BicycleWeightNative,
        mapkit_geometry_geometry.SubpolylineNative) _BicycleLeg_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        transport_bicycle_weight.BicycleWeightNative,
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_transport_bicycle_BicycleLeg_init')
        .asFunction(isLeaf: true);

final transport_bicycle_weight.BicycleWeightNative Function(
        ffi.Pointer<ffi.Void>) _BicycleLeg_get_weight =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    transport_bicycle_weight.BicycleWeightNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleLeg_get_weight')
        .asFunction(isLeaf: true);
final mapkit_geometry_geometry.SubpolylineNative Function(ffi.Pointer<ffi.Void>)
    _BicycleLeg_get_geometry = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_geometry.SubpolylineNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleLeg_get_geometry')
        .asFunction(isLeaf: true);
