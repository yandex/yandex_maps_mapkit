part of 'restricted_entry.dart';

@bindings_annotations.ContainerData(
    toNative: 'BicycleRestrictedEntryImpl.getNativePtr',
    toPlatform:
        '(val) => BicycleRestrictedEntryImpl.fromPointer(val, needFree: false)',
    platformType: 'BicycleRestrictedEntry')
final class BicycleRestrictedEntryImpl extends BicycleRestrictedEntry {
  BicycleRestrictedEntryImpl(mapkit_geometry_geometry.PolylinePosition position)
      : this.fromNativePtr(_BicycleRestrictedEntry_init(
            mapkit_geometry_geometry.PolylinePositionImpl.toNative(position)));

  @core.override
  late final position =
      mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
          _BicycleRestrictedEntry_get_position(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_BicycleRestrictedEntry_free.cast());

  BicycleRestrictedEntryImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(BicycleRestrictedEntry? obj) {
    return (obj as BicycleRestrictedEntryImpl?)?._ptr ?? ffi.nullptr;
  }

  static BicycleRestrictedEntry? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : BicycleRestrictedEntryImpl.fromNativePtr(ptr);
  }

  static BicycleRestrictedEntry? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = BicycleRestrictedEntryImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _BicycleRestrictedEntry_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_bicycle_BicycleRestrictedEntry_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_geometry.PolylinePositionNative)
    _BicycleRestrictedEntry_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_transport_bicycle_BicycleRestrictedEntry_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_geometry.PolylinePositionNative Function(
    ffi
        .Pointer<ffi.Void>) _BicycleRestrictedEntry_get_position = lib.library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_geometry.PolylinePositionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_bicycle_BicycleRestrictedEntry_get_position')
    .asFunction(isLeaf: true);
