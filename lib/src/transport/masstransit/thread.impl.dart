part of 'thread.dart';

@bindings_annotations.ContainerData(
    toNative: 'MasstransitThreadStopImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitThreadStopImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitThreadStop')
final class MasstransitThreadStopImpl extends MasstransitThreadStop {
  MasstransitThreadStopImpl(transport_masstransit_common.MasstransitStop stop,
      mapkit_geometry_point.Point position)
      : this.fromNativePtr(_MasstransitThreadStop_init(
            transport_masstransit_common.MasstransitStopImpl.getNativePtr(stop),
            mapkit_geometry_point.PointImpl.toNative(position)));

  @core.override
  late final stop =
      transport_masstransit_common.MasstransitStopImpl.fromNativePtr(
          _MasstransitThreadStop_get_stop(_ptr));
  @core.override
  late final position = mapkit_geometry_point.PointImpl.fromNative(
      _MasstransitThreadStop_get_position(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitThreadStop_free.cast());

  MasstransitThreadStopImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitThreadStop? obj) {
    return (obj as MasstransitThreadStopImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitThreadStop? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitThreadStopImpl.fromNativePtr(ptr);
  }

  static MasstransitThreadStop? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitThreadStopImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _MasstransitThreadStop_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitThreadStop_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_point.PointNative)
    _MasstransitThreadStop_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_point.PointNative)>>(
            'yandex_flutter_transport_masstransit_MasstransitThreadStop_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitThreadStop_get_stop = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitThreadStop_get_stop')
    .asFunction(isLeaf: true);
final mapkit_geometry_point.PointNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitThreadStop_get_position = lib.library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_point.PointNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitThreadStop_get_position')
    .asFunction(isLeaf: true);
