import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;

part 'vehicle_restrictions.containers.dart';

/// @nodoc
final class DrivingVehicleRestrictionNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> weightLimit;
  external ffi.Pointer<ffi.Void> axleWeightLimit;
  external ffi.Pointer<ffi.Void> maxWeightLimit;
  external ffi.Pointer<ffi.Void> heightLimit;
  external ffi.Pointer<ffi.Void> widthLimit;
  external ffi.Pointer<ffi.Void> lengthLimit;
  external ffi.Pointer<ffi.Void> payloadLimit;
  external ffi.Pointer<ffi.Void> minEcoClass;
  external ffi.Pointer<ffi.Void> trailerNotAllowed;
  external ffi.Pointer<ffi.Void> legal;
}

final DrivingVehicleRestrictionNative Function(
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingVehicleRestrictionNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingVehicleRestrictionNative Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingVehicleRestriction_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingVehicleRestriction.toPointer',
    toPlatform:
        '(val) => DrivingVehicleRestriction.fromPointer(val, needFree: false)')
class DrivingVehicleRestriction {
  final core.double? weightLimit;
  final core.double? axleWeightLimit;
  final core.double? maxWeightLimit;
  final core.double? heightLimit;
  final core.double? widthLimit;
  final core.double? lengthLimit;
  final core.double? payloadLimit;
  final core.int? minEcoClass;
  final core.bool? trailerNotAllowed;
  final core.bool? legal;

  const DrivingVehicleRestriction({
    this.weightLimit,
    this.axleWeightLimit,
    this.maxWeightLimit,
    this.heightLimit,
    this.widthLimit,
    this.lengthLimit,
    this.payloadLimit,
    this.minEcoClass,
    this.trailerNotAllowed,
    this.legal,
  });

  /// @nodoc
  @internal
  DrivingVehicleRestriction.fromNative(DrivingVehicleRestrictionNative native)
      : this(
            weightLimit:
                to_platform.toPlatformFromPointerFloat(native.weightLimit),
            axleWeightLimit:
                to_platform.toPlatformFromPointerFloat(native.axleWeightLimit),
            maxWeightLimit:
                to_platform.toPlatformFromPointerFloat(native.maxWeightLimit),
            heightLimit:
                to_platform.toPlatformFromPointerFloat(native.heightLimit),
            widthLimit:
                to_platform.toPlatformFromPointerFloat(native.widthLimit),
            lengthLimit:
                to_platform.toPlatformFromPointerFloat(native.lengthLimit),
            payloadLimit:
                to_platform.toPlatformFromPointerFloat(native.payloadLimit),
            minEcoClass:
                to_platform.toPlatformFromPointerUint32(native.minEcoClass),
            trailerNotAllowed:
                to_platform.toPlatformFromPointerBool(native.trailerNotAllowed),
            legal: to_platform.toPlatformFromPointerBool(native.legal));

  /// @nodoc
  @internal
  static DrivingVehicleRestrictionNative toNative(DrivingVehicleRestriction c) {
    return _DrivingVehicleRestrictionNativeInit(
        to_native.toNativePtrFloat(c.weightLimit),
        to_native.toNativePtrFloat(c.axleWeightLimit),
        to_native.toNativePtrFloat(c.maxWeightLimit),
        to_native.toNativePtrFloat(c.heightLimit),
        to_native.toNativePtrFloat(c.widthLimit),
        to_native.toNativePtrFloat(c.lengthLimit),
        to_native.toNativePtrFloat(c.payloadLimit),
        to_native.toNativePtrUint32(c.minEcoClass),
        to_native.toNativePtrBool(c.trailerNotAllowed),
        to_native.toNativePtrBool(c.legal));
  }

  /// @nodoc
  @internal
  static DrivingVehicleRestriction? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingVehicleRestriction.fromNative(
        ptr.cast<DrivingVehicleRestrictionNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingVehicleRestriction? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingVehicleRestrictionNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class DrivingRoadVehicleRestrictionNative extends ffi.Struct {
  external DrivingVehicleRestrictionNative vehicleRestriction;
  external mapkit_geometry_geometry.SubpolylineNative position;
}

final DrivingRoadVehicleRestrictionNative Function(
    DrivingVehicleRestrictionNative,
    mapkit_geometry_geometry
        .SubpolylineNative) _DrivingRoadVehicleRestrictionNativeInit = lib
    .library
    .lookup<
            ffi.NativeFunction<
                DrivingRoadVehicleRestrictionNative Function(
                    DrivingVehicleRestrictionNative,
                    mapkit_geometry_geometry.SubpolylineNative)>>(
        'yandex_flutter_directions_driving_DrivingRoadVehicleRestriction_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingRoadVehicleRestriction.toPointer',
    toPlatform:
        '(val) => DrivingRoadVehicleRestriction.fromPointer(val, needFree: false)')
class DrivingRoadVehicleRestriction {
  final DrivingVehicleRestriction vehicleRestriction;
  final mapkit_geometry_geometry.Subpolyline position;

  const DrivingRoadVehicleRestriction(this.vehicleRestriction, this.position);

  /// @nodoc
  @internal
  DrivingRoadVehicleRestriction.fromNative(
      DrivingRoadVehicleRestrictionNative native)
      : this(DrivingVehicleRestriction.fromNative(native.vehicleRestriction),
            mapkit_geometry_geometry.Subpolyline.fromNative(native.position));

  /// @nodoc
  @internal
  static DrivingRoadVehicleRestrictionNative toNative(
      DrivingRoadVehicleRestriction c) {
    return _DrivingRoadVehicleRestrictionNativeInit(
        DrivingVehicleRestriction.toNative(c.vehicleRestriction),
        mapkit_geometry_geometry.Subpolyline.toNative(c.position));
  }

  /// @nodoc
  @internal
  static DrivingRoadVehicleRestriction? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingRoadVehicleRestriction.fromNative(
        ptr.cast<DrivingRoadVehicleRestrictionNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingRoadVehicleRestriction? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingRoadVehicleRestrictionNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class DrivingManoeuvreVehicleRestrictionNative extends ffi.Struct {
  external DrivingVehicleRestrictionNative vehicleRestriction;
  external mapkit_geometry_geometry.PolylinePositionNative position;
}

final DrivingManoeuvreVehicleRestrictionNative Function(
        DrivingVehicleRestrictionNative,
        mapkit_geometry_geometry.PolylinePositionNative)
    _DrivingManoeuvreVehicleRestrictionNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingManoeuvreVehicleRestrictionNative Function(
                        DrivingVehicleRestrictionNative,
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingManoeuvreVehicleRestriction_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingManoeuvreVehicleRestriction.toPointer',
    toPlatform:
        '(val) => DrivingManoeuvreVehicleRestriction.fromPointer(val, needFree: false)')
class DrivingManoeuvreVehicleRestriction {
  final DrivingVehicleRestriction vehicleRestriction;
  final mapkit_geometry_geometry.PolylinePosition position;

  const DrivingManoeuvreVehicleRestriction(
      this.vehicleRestriction, this.position);

  /// @nodoc
  @internal
  DrivingManoeuvreVehicleRestriction.fromNative(
      DrivingManoeuvreVehicleRestrictionNative native)
      : this(
            DrivingVehicleRestriction.fromNative(native.vehicleRestriction),
            mapkit_geometry_geometry.PolylinePosition.fromNative(
                native.position));

  /// @nodoc
  @internal
  static DrivingManoeuvreVehicleRestrictionNative toNative(
      DrivingManoeuvreVehicleRestriction c) {
    return _DrivingManoeuvreVehicleRestrictionNativeInit(
        DrivingVehicleRestriction.toNative(c.vehicleRestriction),
        mapkit_geometry_geometry.PolylinePosition.toNative(c.position));
  }

  /// @nodoc
  @internal
  static DrivingManoeuvreVehicleRestriction? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingManoeuvreVehicleRestriction.fromNative(
        ptr.cast<DrivingManoeuvreVehicleRestrictionNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      DrivingManoeuvreVehicleRestriction? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingManoeuvreVehicleRestrictionNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
