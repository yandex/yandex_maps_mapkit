part of 'way_point.dart';

@bindings_annotations.ContainerData(
    toNative: 'MasstransitWayPointImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitWayPointImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitWayPoint')
final class MasstransitWayPointImpl implements MasstransitWayPoint {
  MasstransitWayPointImpl(
      mapkit_geometry_point.Point position,
      mapkit_geometry_point.Point? selectedArrivalPoint,
      mapkit_geometry_point.Point? selectedDeparturePoint,
      core.String? context,
      core.String? levelId,
      core.String? levelName)
      : this.fromNativePtr(_MasstransitWayPoint_init(
            mapkit_geometry_point.PointImpl.toNative(position),
            mapkit_geometry_point.PointImpl.toPointer(selectedArrivalPoint),
            mapkit_geometry_point.PointImpl.toPointer(selectedDeparturePoint),
            to_native.toNativePtrString(context),
            to_native.toNativePtrString(levelId),
            to_native.toNativePtrString(levelName)));

  @core.override
  late final position = mapkit_geometry_point.PointImpl.fromNative(
      _MasstransitWayPoint_get_position(_ptr));
  @core.override
  late final selectedArrivalPoint = mapkit_geometry_point.PointImpl.fromPointer(
      _MasstransitWayPoint_get_selectedArrivalPoint(_ptr));
  @core.override
  late final selectedDeparturePoint =
      mapkit_geometry_point.PointImpl.fromPointer(
          _MasstransitWayPoint_get_selectedDeparturePoint(_ptr));
  @core.override
  late final context = to_platform
      .toPlatformFromPointerString(_MasstransitWayPoint_get_context(_ptr));
  @core.override
  late final levelId = to_platform
      .toPlatformFromPointerString(_MasstransitWayPoint_get_levelId(_ptr));
  @core.override
  late final levelName = to_platform
      .toPlatformFromPointerString(_MasstransitWayPoint_get_levelName(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitWayPoint_free.cast());

  MasstransitWayPointImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitWayPoint? obj) {
    return (obj as MasstransitWayPointImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitWayPoint? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitWayPointImpl.fromNativePtr(ptr);
  }

  static MasstransitWayPoint? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitWayPointImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _MasstransitWayPoint_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitWayPoint_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_point.PointNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _MasstransitWayPoint_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitWayPoint_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_point.PointNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitWayPoint_get_position = lib.library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_point.PointNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitWayPoint_get_position')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitWayPoint_get_selectedArrivalPoint = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitWayPoint_get_selectedArrivalPoint')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _MasstransitWayPoint_get_selectedDeparturePoint = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitWayPoint_get_selectedDeparturePoint')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitWayPoint_get_context = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitWayPoint_get_context')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitWayPoint_get_levelId = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitWayPoint_get_levelId')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitWayPoint_get_levelName = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitWayPoint_get_levelName')
    .asFunction(isLeaf: true);
