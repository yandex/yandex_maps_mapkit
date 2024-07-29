part of 'lane.dart';

@bindings_annotations.ContainerData(
    toNative: 'DrivingLaneDirectionImpl.toPointer',
    toPlatform:
        '(val) => DrivingLaneDirectionImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingLaneDirection')
extension DrivingLaneDirectionImpl on DrivingLaneDirection {
  static core.int toInt(DrivingLaneDirection e) {
    return e.index;
  }

  static DrivingLaneDirection fromInt(core.int val) {
    return DrivingLaneDirection.values[val];
  }

  static DrivingLaneDirection? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(DrivingLaneDirection? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingLaneKindImpl.toPointer',
    toPlatform:
        '(val) => DrivingLaneKindImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingLaneKind')
extension DrivingLaneKindImpl on DrivingLaneKind {
  static core.int toInt(DrivingLaneKind e) {
    return e.index;
  }

  static DrivingLaneKind fromInt(core.int val) {
    return DrivingLaneKind.values[val];
  }

  static DrivingLaneKind? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(DrivingLaneKind? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingLaneImpl.getNativePtr',
    toPlatform: '(val) => DrivingLaneImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingLane')
final class DrivingLaneImpl implements DrivingLane {
  DrivingLaneImpl(
      DrivingLaneKind laneKind,
      core.List<DrivingLaneDirection> directions,
      DrivingLaneDirection? highlightedDirection)
      : this.fromNativePtr(_DrivingLane_init(
            DrivingLaneKindImpl.toInt(laneKind),
            DrivingLaneDirectionContainerExtension.toNativeVector(directions),
            DrivingLaneDirectionImpl.toPointer(highlightedDirection)));

  @core.override
  late final laneKind =
      DrivingLaneKindImpl.fromInt(_DrivingLane_get_laneKind(_ptr));
  @core.override
  late final directions =
      DrivingLaneDirectionContainerExtension.toPlatformVector(
          _DrivingLane_get_directions(_ptr));
  @core.override
  late final highlightedDirection = DrivingLaneDirectionImpl.fromPointer(
      _DrivingLane_get_highlightedDirection(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingLane_free.cast());

  DrivingLaneImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(DrivingLane? obj) {
    return (obj as DrivingLaneImpl?)?._ptr ?? ffi.nullptr;
  }

  static DrivingLane? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : DrivingLaneImpl.fromNativePtr(ptr);
  }

  static DrivingLane? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        DrivingLaneImpl.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _DrivingLane_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingLane_free');

final ffi.Pointer<ffi.Void> Function(
        core.int, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _DrivingLane_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Int64,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingLane_init')
        .asFunction(isLeaf: true);

final core.int Function(ffi.Pointer<ffi.Void>) _DrivingLane_get_laneKind = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingLane_get_laneKind')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingLane_get_directions = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingLane_get_directions')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingLane_get_highlightedDirection = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingLane_get_highlightedDirection')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingLaneSignImpl.getNativePtr',
    toPlatform:
        '(val) => DrivingLaneSignImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingLaneSign')
final class DrivingLaneSignImpl implements DrivingLaneSign {
  DrivingLaneSignImpl(mapkit_geometry_geometry.PolylinePosition position,
      core.bool? annotated, core.List<DrivingLane> lanes)
      : this.fromNativePtr(_DrivingLaneSign_init(
            mapkit_geometry_geometry.PolylinePositionImpl.toNative(position),
            to_native.toNativePtrBool(annotated),
            DrivingLaneContainerExtension.toNativeVector(lanes)));

  @core.override
  late final position =
      mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
          _DrivingLaneSign_get_position(_ptr));
  @core.override
  late final annotated = to_platform
      .toPlatformFromPointerBool(_DrivingLaneSign_get_annotated(_ptr));
  @core.override
  late final lanes = DrivingLaneContainerExtension.toPlatformVector(
      _DrivingLaneSign_get_lanes(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingLaneSign_free.cast());

  DrivingLaneSignImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(DrivingLaneSign? obj) {
    return (obj as DrivingLaneSignImpl?)?._ptr ?? ffi.nullptr;
  }

  static DrivingLaneSign? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : DrivingLaneSignImpl.fromNativePtr(ptr);
  }

  static DrivingLaneSign? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingLaneSignImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _DrivingLaneSign_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingLaneSign_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_geometry.PolylinePositionNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingLaneSign_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_geometry.PolylinePositionNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingLaneSign_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_geometry.PolylinePositionNative Function(
        ffi.Pointer<ffi.Void>) _DrivingLaneSign_get_position =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_geometry.PolylinePositionNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingLaneSign_get_position')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingLaneSign_get_annotated = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingLaneSign_get_annotated')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingLaneSign_get_lanes = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingLaneSign_get_lanes')
        .asFunction(isLeaf: true);
