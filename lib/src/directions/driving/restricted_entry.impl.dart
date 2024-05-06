part of 'restricted_entry.dart';

final class DrivingRestrictedEntryNative extends ffi.Struct {
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingRestrictedEntryNative Function(
        mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingRestrictedEntryNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingRestrictedEntryNative Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingRestrictedEntry_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingRestrictedEntryImpl.toPointer',
    toPlatform:
        '(val) => DrivingRestrictedEntryImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingRestrictedEntry')
extension DrivingRestrictedEntryImpl on DrivingRestrictedEntry {
  static DrivingRestrictedEntry fromNative(
      DrivingRestrictedEntryNative native) {
    return DrivingRestrictedEntry(
        mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
            native.position));
  }

  static DrivingRestrictedEntryNative toNative(DrivingRestrictedEntry obj) {
    return _DrivingRestrictedEntryNativeInit(
        mapkit_geometry_geometry.PolylinePositionImpl.toNative(obj.position));
  }

  static DrivingRestrictedEntry? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingRestrictedEntryImpl.fromNative(
        ptr.cast<DrivingRestrictedEntryNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingRestrictedEntry? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingRestrictedEntryNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
