import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_mapkit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/struct_factory.dart'
    as struct_factory;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_mapkit/src/directions/driving/annotation.dart'
    as directions_driving_annotation;
import 'package:yandex_maps_mapkit/src/directions/driving/checkpoint.dart'
    as directions_driving_checkpoint;
import 'package:yandex_maps_mapkit/src/directions/driving/direction_signs.dart'
    as directions_driving_direction_signs;
import 'package:yandex_maps_mapkit/src/directions/driving/ferry.dart'
    as directions_driving_ferry;
import 'package:yandex_maps_mapkit/src/directions/driving/flags.dart'
    as directions_driving_flags;
import 'package:yandex_maps_mapkit/src/directions/driving/ford_crossing.dart'
    as directions_driving_ford_crossing;
import 'package:yandex_maps_mapkit/src/directions/driving/lane.dart'
    as directions_driving_lane;
import 'package:yandex_maps_mapkit/src/directions/driving/pedestrian_crossing.dart'
    as directions_driving_pedestrian_crossing;
import 'package:yandex_maps_mapkit/src/directions/driving/railway_crossing.dart'
    as directions_driving_railway_crossing;
import 'package:yandex_maps_mapkit/src/directions/driving/restricted_entry.dart'
    as directions_driving_restricted_entry;
import 'package:yandex_maps_mapkit/src/directions/driving/restricted_turn.dart'
    as directions_driving_restricted_turn;
import 'package:yandex_maps_mapkit/src/directions/driving/rugged_road.dart'
    as directions_driving_rugged_road;
import 'package:yandex_maps_mapkit/src/directions/driving/speed_bump.dart'
    as directions_driving_speed_bump;
import 'package:yandex_maps_mapkit/src/directions/driving/toll_road.dart'
    as directions_driving_toll_road;
import 'package:yandex_maps_mapkit/src/directions/driving/traffic_light.dart'
    as directions_driving_traffic_light;
import 'package:yandex_maps_mapkit/src/directions/driving/vehicle_options.dart'
    as directions_driving_vehicle_options;
import 'package:yandex_maps_mapkit/src/directions/driving/vehicle_restrictions.dart'
    as directions_driving_vehicle_restrictions;
import 'package:yandex_maps_mapkit/src/directions/driving/weight.dart'
    as directions_driving_weight;
import 'package:yandex_maps_mapkit/src/mapkit/annotations/annotation_lang.dart'
    as mapkit_annotations_annotation_lang;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/mapkit/navigation/jam_segment.dart'
    as mapkit_navigation_jam_segment;
import 'package:yandex_maps_mapkit/src/mapkit/navigation/route_position.dart'
    as mapkit_navigation_route_position;
import 'package:yandex_maps_mapkit/src/mapkit/request_point.dart'
    as mapkit_request_point;
import 'package:yandex_maps_mapkit/src/mapkit/road_events/event_tag.dart'
    as mapkit_road_events_event_tag;

part 'route.containers.dart';

/// @nodoc
final class DrivingSummaryNative extends ffi.Struct {
  external directions_driving_weight.DrivingWeightNative weight;
  external directions_driving_flags.DrivingFlagsNative flags;
}

final DrivingSummaryNative Function(
        directions_driving_weight.DrivingWeightNative,
        directions_driving_flags.DrivingFlagsNative) _DrivingSummaryNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingSummaryNative Function(
                        directions_driving_weight.DrivingWeightNative,
                        directions_driving_flags.DrivingFlagsNative)>>(
            'yandex_flutter_directions_driving_DrivingSummary_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingSummary.toPointer',
    toPlatform: '(val) => DrivingSummary.fromPointer(val, needFree: false)')
class DrivingSummary {
  final directions_driving_weight.DrivingWeight weight;
  final directions_driving_flags.DrivingFlags flags;

  const DrivingSummary(this.weight, this.flags);

  /// @nodoc
  @internal
  DrivingSummary.fromNative(DrivingSummaryNative native)
      : this(directions_driving_weight.DrivingWeight.fromNative(native.weight),
            directions_driving_flags.DrivingFlags.fromNative(native.flags));

  /// @nodoc
  @internal
  static DrivingSummaryNative toNative(DrivingSummary c) {
    return _DrivingSummaryNativeInit(
        directions_driving_weight.DrivingWeight.toNative(c.weight),
        directions_driving_flags.DrivingFlags.toNative(c.flags));
  }

  /// @nodoc
  @internal
  static DrivingSummary? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        DrivingSummary.fromNative(ptr.cast<DrivingSummaryNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingSummary? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingSummaryNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingSectionMetadata.toPointer',
    toPlatform:
        '(val) => DrivingSectionMetadata.fromPointer(val, needFree: false)')
class DrivingSectionMetadata implements ffi.Finalizable {
  late final legIndex = _DrivingSectionMetadata_get_legIndex(_ptr);
  late final weight = directions_driving_weight.DrivingWeight.fromNative(
      _DrivingSectionMetadata_get_weight(_ptr));
  late final annotation =
      directions_driving_annotation.DrivingAnnotation.fromNativePtr(
          _DrivingSectionMetadata_get_annotation(_ptr));
  late final viaPointPositions = to_platform
      .toVectorUint32(_DrivingSectionMetadata_get_viaPointPositions(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_DrivingSectionMetadata_free.cast());

  DrivingSectionMetadata(
      core.int legIndex,
      directions_driving_weight.DrivingWeight weight,
      directions_driving_annotation.DrivingAnnotation annotation,
      core.List<core.int> viaPointPositions)
      : this.fromNativePtr(_DrivingSectionMetadata_init(
            legIndex,
            directions_driving_weight.DrivingWeight.toNative(weight),
            directions_driving_annotation.DrivingAnnotation.getNativePtr(
                annotation),
            to_native.toNativeVectorUint32(viaPointPositions)));

  /// @nodoc
  @internal
  DrivingSectionMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingSectionMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static DrivingSectionMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingSectionMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static DrivingSectionMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingSectionMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingSectionMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _DrivingSectionMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingSectionMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingSectionMetadata_clone')
        .asFunction(isLeaf: true);

final _DrivingSectionMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingSectionMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        core.int,
        directions_driving_weight.DrivingWeightNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingSectionMetadata_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Uint32,
                        directions_driving_weight.DrivingWeightNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingSectionMetadata_init')
        .asFunction(isLeaf: true);

final core.int Function(
    ffi
        .Pointer<ffi.Void>) _DrivingSectionMetadata_get_legIndex = lib.library
    .lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingSectionMetadata_get_legIndex')
    .asFunction(isLeaf: true);
final directions_driving_weight.DrivingWeightNative Function(
    ffi
        .Pointer<ffi.Void>) _DrivingSectionMetadata_get_weight = lib.library
    .lookup<
            ffi.NativeFunction<
                directions_driving_weight.DrivingWeightNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingSectionMetadata_get_weight')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingSectionMetadata_get_annotation = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingSectionMetadata_get_annotation')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingSectionMetadata_get_viaPointPositions = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingSectionMetadata_get_viaPointPositions')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingRoutePoint.toPointer',
    toPlatform: '(val) => DrivingRoutePoint.fromPointer(val, needFree: false)')
class DrivingRoutePoint implements ffi.Finalizable {
  late final position = mapkit_geometry_point.Point.fromNative(
      _DrivingRoutePoint_get_position(_ptr));
  late final selectedArrivalPoint = mapkit_geometry_point.Point.fromPointer(
      _DrivingRoutePoint_get_selectedArrivalPoint(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingRoutePoint_free.cast());

  DrivingRoutePoint(mapkit_geometry_point.Point position,
      mapkit_geometry_point.Point? selectedArrivalPoint)
      : this.fromNativePtr(_DrivingRoutePoint_init(
            mapkit_geometry_point.Point.toNative(position),
            mapkit_geometry_point.Point.toPointer(selectedArrivalPoint)));

  /// @nodoc
  @internal
  DrivingRoutePoint.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingRoutePoint? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static DrivingRoutePoint? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingRoutePoint.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static DrivingRoutePoint? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingRoutePoint.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingRoutePoint? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _DrivingRoutePoint_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingRoutePoint_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoutePoint_clone')
        .asFunction(isLeaf: true);

final _DrivingRoutePoint_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingRoutePoint_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_point.PointNative, ffi.Pointer<ffi.Void>)
    _DrivingRoutePoint_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoutePoint_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_point.PointNative Function(ffi.Pointer<ffi.Void>)
    _DrivingRoutePoint_get_position = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_point.PointNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoutePoint_get_position')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingRoutePoint_get_selectedArrivalPoint = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoutePoint_get_selectedArrivalPoint')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingRouteMetadata.toPointer',
    toPlatform:
        '(val) => DrivingRouteMetadata.fromPointer(val, needFree: false)')
class DrivingRouteMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final weight = directions_driving_weight.DrivingWeight.fromNative(
      _DrivingRouteMetadata_get_weight(_ptr));
  late final flags = directions_driving_flags.DrivingFlags.fromNative(
      _DrivingRouteMetadata_get_flags(_ptr));
  late final routePoints = DrivingRoutePointContainerExtension.toPlatformVector(
      _DrivingRouteMetadata_get_routePoints(_ptr));
  late final uri = to_platform
      .toPlatformFromPointerString(_DrivingRouteMetadata_get_uri(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_DrivingRouteMetadata_free.cast());

  DrivingRouteMetadata(
      directions_driving_weight.DrivingWeight weight,
      directions_driving_flags.DrivingFlags flags,
      core.List<DrivingRoutePoint> routePoints,
      core.String? uri)
      : this.fromNativePtr(_DrivingRouteMetadata_init(
            directions_driving_weight.DrivingWeight.toNative(weight),
            directions_driving_flags.DrivingFlags.toNative(flags),
            DrivingRoutePointContainerExtension.toNativeVector(routePoints),
            to_native.toNativePtrString(uri)));

  /// @nodoc
  @internal
  DrivingRouteMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingRouteMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static DrivingRouteMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingRouteMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static DrivingRouteMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingRouteMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingRouteMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _DrivingRouteMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _DrivingRouteMetadataFactory get factory =>
      const _DrivingRouteMetadataFactory();

  /// @nodoc
  @core.override
  _DrivingRouteMetadataFactory get runtimeFactory =>
      const _DrivingRouteMetadataFactory();
}

/// @nodoc
class _DrivingRouteMetadataFactory
    extends struct_factory.StructFactory<DrivingRouteMetadata> {
  const _DrivingRouteMetadataFactory();

  @core.override
  DrivingRouteMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return DrivingRouteMetadata.fromNativePtr(ptr);
  }

  @core.override
  DrivingRouteMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return DrivingRouteMetadata.fromNativePtr(
        _DrivingRouteMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(DrivingRouteMetadata obj) {
    return _DrivingRouteMetadata_upcast(DrivingRouteMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _DrivingRouteMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingRouteMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRouteMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingRouteMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRouteMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _DrivingRouteMetadata_name = lib
    .library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_directions_driving_DrivingRouteMetadata_name')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingRouteMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRouteMetadata_clone')
        .asFunction(isLeaf: true);

final _DrivingRouteMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingRouteMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        directions_driving_weight.DrivingWeightNative,
        directions_driving_flags.DrivingFlagsNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingRouteMetadata_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        directions_driving_weight.DrivingWeightNative,
                        directions_driving_flags.DrivingFlagsNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRouteMetadata_init')
        .asFunction(isLeaf: true);

final directions_driving_weight.DrivingWeightNative Function(
        ffi.Pointer<ffi.Void>) _DrivingRouteMetadata_get_weight =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    directions_driving_weight.DrivingWeightNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRouteMetadata_get_weight')
        .asFunction(isLeaf: true);
final directions_driving_flags.DrivingFlagsNative Function(
        ffi.Pointer<ffi.Void>) _DrivingRouteMetadata_get_flags =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    directions_driving_flags.DrivingFlagsNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRouteMetadata_get_flags')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingRouteMetadata_get_routePoints = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRouteMetadata_get_routePoints')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingRouteMetadata_get_uri = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRouteMetadata_get_uri')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingSection.toPointer',
    toPlatform: '(val) => DrivingSection.fromPointer(val, needFree: false)')
class DrivingSection implements ffi.Finalizable {
  late final metadata =
      DrivingSectionMetadata.fromNativePtr(_DrivingSection_get_metadata(_ptr));
  late final geometry = mapkit_geometry_geometry.Subpolyline.fromNative(
      _DrivingSection_get_geometry(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingSection_free.cast());

  DrivingSection(DrivingSectionMetadata metadata,
      mapkit_geometry_geometry.Subpolyline geometry)
      : this.fromNativePtr(_DrivingSection_init(
            DrivingSectionMetadata.getNativePtr(metadata),
            mapkit_geometry_geometry.Subpolyline.toNative(geometry)));

  /// @nodoc
  @internal
  DrivingSection.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingSection? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static DrivingSection? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingSection.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static DrivingSection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        DrivingSection.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingSection? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _DrivingSection_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingSection_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingSection_clone')
        .asFunction(isLeaf: true);

final _DrivingSection_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingSection_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_geometry.SubpolylineNative)
    _DrivingSection_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_directions_driving_DrivingSection_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingSection_get_metadata = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingSection_get_metadata')
        .asFunction(isLeaf: true);
final mapkit_geometry_geometry.SubpolylineNative Function(ffi.Pointer<ffi.Void>)
    _DrivingSection_get_geometry = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_geometry.SubpolylineNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingSection_get_geometry')
        .asFunction(isLeaf: true);

/// @nodoc
class _DrivingConditionsListenerWrapper implements ffi.Finalizable {
  _DrivingConditionsListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_DrivingConditionsListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

/// A listener to monitor route condition changes.
abstract class DrivingConditionsListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<DrivingConditionsListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<DrivingConditionsListener,
      _DrivingConditionsListenerWrapper?>();

  /// Triggers when the conditions are updated.
  void onConditionsUpdated();

  /// Triggers when the conditions are outdated.
  void onConditionsOutdated();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(DrivingConditionsListener obj) {
    final ptr = _DrivingConditionsListener_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _DrivingConditionsListener_onConditionsUpdated),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _DrivingConditionsListener_onConditionsOutdated));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _DrivingConditionsListenerWrapper(ptr);
    _DrivingConditionsListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingConditionsListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _DrivingConditionsListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_directions_driving_DrivingConditionsListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)
    _DrivingConditionsListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi
                        .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_directions_driving_DrivingConditionsListener_new')
        .asFunction(isLeaf: true);

final _DrivingConditionsListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingConditionsListener_free');
void _DrivingConditionsListener_onConditionsUpdated(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener = DrivingConditionsListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onConditionsUpdated();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _DrivingConditionsListener_onConditionsOutdated(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener = DrivingConditionsListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onConditionsOutdated();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingEvent.toPointer',
    toPlatform: '(val) => DrivingEvent.fromPointer(val, needFree: false)')
class DrivingEvent implements ffi.Finalizable {
  late final polylinePosition =
      mapkit_geometry_geometry.PolylinePosition.fromNative(
          _DrivingEvent_get_polylinePosition(_ptr));
  late final eventId =
      to_platform.toPlatformString(_DrivingEvent_get_eventId(_ptr));
  late final descriptionText = to_platform
      .toPlatformFromPointerString(_DrivingEvent_get_descriptionText(_ptr));
  late final tags =
      mapkit_road_events_event_tag.RoadEventsEventTagContainerExtension
          .toPlatformVector(_DrivingEvent_get_tags(_ptr));
  late final location =
      mapkit_geometry_point.Point.fromNative(_DrivingEvent_get_location(_ptr));
  late final speedLimit = to_platform
      .toPlatformFromPointerFloat(_DrivingEvent_get_speedLimit(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingEvent_free.cast());

  DrivingEvent(
      mapkit_geometry_geometry.PolylinePosition polylinePosition,
      core.String eventId,
      core.String? descriptionText,
      core.List<mapkit_road_events_event_tag.RoadEventsEventTag> tags,
      mapkit_geometry_point.Point location,
      core.double? speedLimit)
      : this.fromNativePtr(_DrivingEvent_init(
            mapkit_geometry_geometry.PolylinePosition.toNative(
                polylinePosition),
            to_native.toNativeString(eventId),
            to_native.toNativePtrString(descriptionText),
            mapkit_road_events_event_tag.RoadEventsEventTagContainerExtension
                .toNativeVector(tags),
            mapkit_geometry_point.Point.toNative(location),
            to_native.toNativePtrFloat(speedLimit)));

  /// @nodoc
  @internal
  DrivingEvent.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingEvent? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static DrivingEvent? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingEvent.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static DrivingEvent? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        DrivingEvent.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingEvent? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _DrivingEvent_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingEvent_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingEvent_clone')
        .asFunction(isLeaf: true);

final _DrivingEvent_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingEvent_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_geometry.PolylinePositionNative,
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        mapkit_geometry_point.PointNative,
        ffi.Pointer<ffi.Void>) _DrivingEvent_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_geometry.PolylinePositionNative,
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingEvent_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_geometry.PolylinePositionNative Function(
    ffi
        .Pointer<ffi.Void>) _DrivingEvent_get_polylinePosition = lib.library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_geometry.PolylinePositionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingEvent_get_polylinePosition')
    .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _DrivingEvent_get_eventId = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingEvent_get_eventId')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingEvent_get_descriptionText = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingEvent_get_descriptionText')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingEvent_get_tags = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingEvent_get_tags')
        .asFunction(isLeaf: true);
final mapkit_geometry_point.PointNative Function(ffi.Pointer<ffi.Void>)
    _DrivingEvent_get_location = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_point.PointNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingEvent_get_location')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingEvent_get_speedLimit = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingEvent_get_speedLimit')
        .asFunction(isLeaf: true);

/// Driving route. A route consists of multiple sections. Each section
/// has a corresponding annotation that describes the action at the
/// beginning of the section.
@bindings_annotations.ContainerData(
    toNative: 'DrivingRoute.getNativePtr',
    toPlatform:
        '(val) => DrivingRoute.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class DrivingRoute implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingRoute_free.cast());

  /// @nodoc
  DrivingRoute.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  DrivingRoute.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingRoute? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static DrivingRoute? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingRoute.fromNativePtr(ptr);
  }

  /// The ID of the route.
  core.String get routeId {
    return to_platform.toPlatformString(_Route_get_routeId(ptr));
  }

  /// The route metadata.
  DrivingRouteMetadata get metadata {
    return DrivingRouteMetadata.fromNativePtr(_Route_get_metadata(ptr));
  }

  /// Manoeuvre-to-Manoeuvre route sections.
  core.List<DrivingSection> get sections {
    return DrivingSectionContainerExtension.toPlatformVector(
        _Route_get_sections(ptr));
  }

  /// Route geometry.
  mapkit_geometry_geometry.Polyline get geometry {
    return mapkit_geometry_geometry.Polyline.fromNativePtr(
        _Route_get_geometry(ptr));
  }

  /// Traffic conditions on the given route.
  core.List<mapkit_navigation_jam_segment.JamSegment> get jamSegments {
    return mapkit_navigation_jam_segment.JamSegmentContainerExtension
        .toPlatformVector(_Route_get_jamSegments(ptr));
  }

  /// Events on the given route.
  core.List<DrivingEvent> get events {
    return DrivingEventContainerExtension.toPlatformVector(
        _Route_get_events(ptr));
  }

  /// Speed limits for segments in the geometry.
  core.List<core.double?> get speedLimits {
    return to_platform.toVectorFloat(_Route_get_speedLimits(ptr));
  }

  /// Vehicle options.
  directions_driving_vehicle_options.DrivingVehicleOptions get vehicleOptions {
    return directions_driving_vehicle_options.DrivingVehicleOptions.fromNative(
        _Route_get_vehicleOptions(ptr));
  }

  /// Lane signs.
  core.List<directions_driving_lane.DrivingLaneSign> get laneSigns {
    return directions_driving_lane.DrivingLaneSignContainerExtension
        .toPlatformVector(_Route_get_laneSigns(ptr));
  }

  /// Direction signs.
  core.List<directions_driving_direction_signs.DrivingDirectionSign>
      get directionSigns {
    return directions_driving_direction_signs
            .DrivingDirectionSignContainerExtension
        .toPlatformVector(_Route_get_directionSigns(ptr));
  }

  /// Route restricted entries.
  core.List<directions_driving_restricted_entry.DrivingRestrictedEntry>
      get restrictedEntries {
    return directions_driving_restricted_entry
            .DrivingRestrictedEntryContainerExtension
        .toPlatformVector(_Route_get_restrictedEntries(ptr));
  }

  /// Route traffic lights.
  core.List<directions_driving_traffic_light.DrivingTrafficLight>
      get trafficLights {
    return directions_driving_traffic_light
            .DrivingTrafficLightContainerExtension
        .toPlatformVector(_Route_get_trafficLights(ptr));
  }

  /// Route points with time-dependent restrictions.
  core.List<directions_driving_restricted_turn.DrivingRestrictedTurn>
      get restrictedTurns {
    return directions_driving_restricted_turn
            .DrivingRestrictedTurnContainerExtension
        .toPlatformVector(_Route_get_restrictedTurns(ptr));
  }

  /// Railway crossings
  core.List<directions_driving_railway_crossing.DrivingRailwayCrossing>
      get railwayCrossings {
    return directions_driving_railway_crossing
            .DrivingRailwayCrossingContainerExtension
        .toPlatformVector(_Route_get_railwayCrossings(ptr));
  }

  /// Pedestrian crossings
  core.List<directions_driving_pedestrian_crossing.DrivingPedestrianCrossing>
      get pedestrianCrossings {
    return directions_driving_pedestrian_crossing
            .DrivingPedestrianCrossingContainerExtension
        .toPlatformVector(_Route_get_pedestrianCrossings(ptr));
  }

  /// Speed bumps
  core.List<directions_driving_speed_bump.DrivingSpeedBump> get speedBumps {
    return directions_driving_speed_bump.DrivingSpeedBumpContainerExtension
        .toPlatformVector(_Route_get_speedBumps(ptr));
  }

  /// Checkpoints
  core.List<directions_driving_checkpoint.DrivingCheckpoint> get checkpoints {
    return directions_driving_checkpoint.DrivingCheckpointContainerExtension
        .toPlatformVector(_Route_get_checkpoints(ptr));
  }

  /// Route roads.
  core.List<directions_driving_rugged_road.DrivingRuggedRoad> get ruggedRoads {
    return directions_driving_rugged_road.DrivingRuggedRoadContainerExtension
        .toPlatformVector(_Route_get_ruggedRoads(ptr));
  }

  core.List<directions_driving_toll_road.DrivingTollRoad> get tollRoads {
    return directions_driving_toll_road.DrivingTollRoadContainerExtension
        .toPlatformVector(_Route_get_tollRoads(ptr));
  }

  core.List<directions_driving_ford_crossing.DrivingFordCrossing>
      get fordCrossings {
    return directions_driving_ford_crossing
            .DrivingFordCrossingContainerExtension
        .toPlatformVector(_Route_get_fordCrossings(ptr));
  }

  core.List<directions_driving_ferry.DrivingFerry> get ferries {
    return directions_driving_ferry.DrivingFerryContainerExtension
        .toPlatformVector(_Route_get_ferries(ptr));
  }

  /// Route vehicle restrictions.
  core.List<
          directions_driving_vehicle_restrictions.DrivingRoadVehicleRestriction>
      get roadVehicleRestrictions {
    return directions_driving_vehicle_restrictions
            .DrivingRoadVehicleRestrictionContainerExtension
        .toPlatformVector(_Route_get_roadVehicleRestrictions(ptr));
  }

  core.List<
      directions_driving_vehicle_restrictions
      .DrivingManoeuvreVehicleRestriction> get manoeuvreVehicleRestrictions {
    return directions_driving_vehicle_restrictions
            .DrivingManoeuvreVehicleRestrictionContainerExtension
        .toPlatformVector(_Route_get_manoeuvreVehicleRestrictions(ptr));
  }

  /// Language of string annotations (for example street names) in this
  /// route object.
  ///
  mapkit_annotations_annotation_lang.AnnotationLanguage?
      get annotationLanguage {
    return mapkit_annotations_annotation_lang.AnnotationLanguage.fromPointer(
        _Route_get_annotationLanguage(ptr));
  }

  /// Request points that were specified in the router request that this
  /// route originated from.
  ///
  core.List<mapkit_request_point.RequestPoint>? get requestPoints {
    return mapkit_request_point.RequestPointContainerExtension.toPlatformVector(
        _Route_get_requestPoints(ptr));
  }

  /// The reached position on the given route. The 'RouteMetadata::weight'
  /// field contains data for the part of the route beyond this position.
  mapkit_geometry_geometry.PolylinePosition get position {
    return mapkit_geometry_geometry.PolylinePosition.fromNative(
        _Route_get_position(ptr));
  }

  set position(mapkit_geometry_geometry.PolylinePosition val) {
    return _Route_set_position(
        ptr, mapkit_geometry_geometry.PolylinePosition.toNative(val));
  }

  /// The reached position on the given route. The 'RouteMetadata::weight'
  /// field contains data for the part of the route beyond this position.
  mapkit_navigation_route_position.RoutePosition get routePosition {
    return mapkit_navigation_route_position.RoutePosition.fromNativePtr(
        _Route_get_routePosition(ptr));
  }

  /// A leg is a section of the route between two consecutive waypoints.
  core.int get legIndex {
    return _Route_get_legIndex(ptr);
  }

  set legIndex(core.int val) {
    return _Route_set_legIndex(ptr, val);
  }

  /// Indicates whether driving conditions (jamSegments and events) have
  /// become outdated when we are not able to fetch updates for some
  /// predefined time.
  core.bool get areConditionsOutdated {
    return _Route_get_areConditionsOutdated(ptr);
  }

  /// Polyline positions of waypoints including start and finish point.
  core.List<mapkit_geometry_geometry.PolylinePosition> get wayPoints {
    return mapkit_geometry_geometry.PolylinePositionContainerExtension
        .toPlatformVector(_Route_get_wayPoints(ptr));
  }

  /// Adds a listener for route condition changes.
  ///
  /// The class does not retain the object in the 'conditionsListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addConditionsListener(DrivingConditionsListener conditionsListener) {
    _Route_addConditionsListener(
        ptr, DrivingConditionsListener.getNativePtr(conditionsListener));
  }

  /// Removes the listener for route condition changes.
  ///
  /// The class does not retain the object in the 'conditionsListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void removeConditionsListener(DrivingConditionsListener conditionsListener) {
    _Route_removeConditionsListener(
        ptr, DrivingConditionsListener.getNativePtr(conditionsListener));
  }

  /// Section index.
  core.int sectionIndex(core.int segmentIndex) {
    return _Route_sectionIndex(ptr, segmentIndex);
  }

  /// Metadata location.
  DrivingRouteMetadata metadataAt(
      mapkit_geometry_geometry.PolylinePosition position) {
    return DrivingRouteMetadata.fromNativePtr(_Route_metadataAt(
        ptr, mapkit_geometry_geometry.PolylinePosition.toNative(position)));
  }

  void requestConditionsUpdate() {
    _Route_requestConditionsUpdate(ptr);
  }
}

final _DrivingRoute_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_free');

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _Route_get_routeId = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_routeId')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_metadata = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_metadata')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_sections = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_sections')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_geometry = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_geometry')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_jamSegments = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_jamSegments')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _Route_get_events =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_events')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_speedLimits = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_speedLimits')
        .asFunction();

final directions_driving_vehicle_options.DrivingVehicleOptionsNative Function(
        ffi.Pointer<ffi.Void>) _Route_get_vehicleOptions =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    directions_driving_vehicle_options
                        .DrivingVehicleOptionsNative
                        Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_vehicleOptions')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_laneSigns = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_laneSigns')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_directionSigns = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_directionSigns')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_restrictedEntries = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_restrictedEntries')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_trafficLights = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_trafficLights')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_restrictedTurns = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_restrictedTurns')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_railwayCrossings = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_railwayCrossings')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_pedestrianCrossings = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_pedestrianCrossings')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_speedBumps = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_speedBumps')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_checkpoints = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_checkpoints')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_ruggedRoads = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_ruggedRoads')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_tollRoads = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_tollRoads')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_fordCrossings = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_fordCrossings')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _Route_get_ferries =
    lib
        .library
        .lookup<
                ffi
                .NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_ferries')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_roadVehicleRestrictions = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_roadVehicleRestrictions')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_manoeuvreVehicleRestrictions = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_manoeuvreVehicleRestrictions')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_annotationLanguage = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_annotationLanguage')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_requestPoints = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_requestPoints')
        .asFunction();

final mapkit_geometry_geometry.PolylinePositionNative Function(
        ffi.Pointer<ffi.Void>) _Route_get_position =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_geometry.PolylinePositionNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_position')
        .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_geometry.PolylinePositionNative)
    _Route_set_position = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingRoute_set_position')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_routePosition = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_routePosition')
        .asFunction();

final core.int Function(ffi.Pointer<ffi.Void>) _Route_get_legIndex = lib.library
    .lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_legIndex')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _Route_set_legIndex = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint32)>>(
        'yandex_flutter_directions_driving_DrivingRoute_set_legIndex')
    .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_areConditionsOutdated = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_areConditionsOutdated')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_wayPoints = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_wayPoints')
        .asFunction();

final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Route_addConditionsListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_addConditionsListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Route_removeConditionsListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_removeConditionsListener')
    .asFunction();
final core.int Function(ffi.Pointer<ffi.Void>, core.int) _Route_sectionIndex =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Uint32 Function(ffi.Pointer<ffi.Void>, ffi.Uint32)>>(
            'yandex_flutter_directions_driving_DrivingRoute_sectionIndex')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_geometry.PolylinePositionNative)
    _Route_metadataAt = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingRoute_metadataAt')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Route_requestConditionsUpdate = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_requestConditionsUpdate')
    .asFunction();
