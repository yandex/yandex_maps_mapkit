part of 'intermediate_points.dart';

@bindings_annotations.ContainerData(
    toNative: 'BicycleViaPointImpl.getNativePtr',
    toPlatform:
        '(val) => BicycleViaPointImpl.fromPointer(val, needFree: false)',
    platformType: 'BicycleViaPoint')
final class BicycleViaPointImpl extends BicycleViaPoint {
  BicycleViaPointImpl(mapkit_geometry_geometry.PolylinePosition position)
      : this.fromNativePtr(_BicycleViaPoint_init(
            mapkit_geometry_geometry.PolylinePositionImpl.toNative(position)));

  @core.override
  late final position =
      mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
          _BicycleViaPoint_get_position(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleViaPoint_free.cast());

  BicycleViaPointImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(BicycleViaPoint? obj) {
    return (obj as BicycleViaPointImpl?)?._ptr ?? ffi.nullptr;
  }

  static BicycleViaPoint? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : BicycleViaPointImpl.fromNativePtr(ptr);
  }

  static BicycleViaPoint? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = BicycleViaPointImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _BicycleViaPoint_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_bicycle_BicycleViaPoint_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_geometry.PolylinePositionNative) _BicycleViaPoint_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_transport_bicycle_BicycleViaPoint_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_geometry.PolylinePositionNative Function(
        ffi.Pointer<ffi.Void>) _BicycleViaPoint_get_position =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_geometry.PolylinePositionNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleViaPoint_get_position')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'BicycleWayPointImpl.getNativePtr',
    toPlatform:
        '(val) => BicycleWayPointImpl.fromPointer(val, needFree: false)',
    platformType: 'BicycleWayPoint')
final class BicycleWayPointImpl extends BicycleWayPoint {
  BicycleWayPointImpl(mapkit_geometry_point.Point position,
      mapkit_geometry_point.Point? selectedArrivalPoint)
      : this.fromNativePtr(_BicycleWayPoint_init(
            mapkit_geometry_point.PointImpl.toNative(position),
            mapkit_geometry_point.PointImpl.toPointer(selectedArrivalPoint)));

  @core.override
  late final position = mapkit_geometry_point.PointImpl.fromNative(
      _BicycleWayPoint_get_position(_ptr));
  @core.override
  late final selectedArrivalPoint = mapkit_geometry_point.PointImpl.fromPointer(
      _BicycleWayPoint_get_selectedArrivalPoint(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleWayPoint_free.cast());

  BicycleWayPointImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(BicycleWayPoint? obj) {
    return (obj as BicycleWayPointImpl?)?._ptr ?? ffi.nullptr;
  }

  static BicycleWayPoint? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : BicycleWayPointImpl.fromNativePtr(ptr);
  }

  static BicycleWayPoint? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = BicycleWayPointImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _BicycleWayPoint_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_bicycle_BicycleWayPoint_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_point.PointNative, ffi.Pointer<ffi.Void>)
    _BicycleWayPoint_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleWayPoint_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_point.PointNative Function(ffi.Pointer<ffi.Void>)
    _BicycleWayPoint_get_position = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_point.PointNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleWayPoint_get_position')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _BicycleWayPoint_get_selectedArrivalPoint = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_bicycle_BicycleWayPoint_get_selectedArrivalPoint')
    .asFunction(isLeaf: true);
