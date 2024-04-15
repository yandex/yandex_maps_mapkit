import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_mapkit/src/mapkit/uri/uri_object_metadata.dart'
    as mapkit_uri_uri_object_metadata;
import 'package:yandex_maps_mapkit/src/transport/bicycle/bicycle_router.dart'
    as transport_bicycle_bicycle_router;
import 'package:yandex_maps_mapkit/src/transport/bicycle/construction.dart'
    as transport_bicycle_construction;
import 'package:yandex_maps_mapkit/src/transport/bicycle/flags.dart'
    as transport_bicycle_flags;
import 'package:yandex_maps_mapkit/src/transport/bicycle/intermediate_points.dart'
    as transport_bicycle_intermediate_points;
import 'package:yandex_maps_mapkit/src/transport/bicycle/leg.dart'
    as transport_bicycle_leg;
import 'package:yandex_maps_mapkit/src/transport/bicycle/restricted_entry.dart'
    as transport_bicycle_restricted_entry;
import 'package:yandex_maps_mapkit/src/transport/bicycle/section.dart'
    as transport_bicycle_section;
import 'package:yandex_maps_mapkit/src/transport/bicycle/traffic_type.dart'
    as transport_bicycle_traffic_type;
import 'package:yandex_maps_mapkit/src/transport/bicycle/weight.dart'
    as transport_bicycle_weight;

part 'route.containers.dart';

/// @nodoc
final class BicycleConstructionSegmentNative extends ffi.Struct {
  @ffi.Int64()
  external core.int construction;
  external mapkit_geometry_geometry.SubpolylineNative subpolyline;
}

final BicycleConstructionSegmentNative Function(
        core.int, mapkit_geometry_geometry.SubpolylineNative)
    _BicycleConstructionSegmentNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    BicycleConstructionSegmentNative Function(ffi.Int64,
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_transport_bicycle_BicycleConstructionSegment_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'BicycleConstructionSegment.toPointer',
    toPlatform:
        '(val) => BicycleConstructionSegment.fromPointer(val, needFree: false)')
class BicycleConstructionSegment {
  final transport_bicycle_construction.BicycleConstructionID construction;
  final mapkit_geometry_geometry.Subpolyline subpolyline;

  const BicycleConstructionSegment(this.construction, this.subpolyline);

  /// @nodoc
  @internal
  BicycleConstructionSegment.fromNative(BicycleConstructionSegmentNative native)
      : this(
            transport_bicycle_construction.BicycleConstructionID.fromInt(
                native.construction),
            mapkit_geometry_geometry.Subpolyline.fromNative(
                native.subpolyline));

  /// @nodoc
  @internal
  static BicycleConstructionSegmentNative toNative(
      BicycleConstructionSegment c) {
    return _BicycleConstructionSegmentNativeInit(
        transport_bicycle_construction.BicycleConstructionID.toInt(
            c.construction),
        mapkit_geometry_geometry.Subpolyline.toNative(c.subpolyline));
  }

  /// @nodoc
  @internal
  static BicycleConstructionSegment? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = BicycleConstructionSegment.fromNative(
        ptr.cast<BicycleConstructionSegmentNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(BicycleConstructionSegment? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<BicycleConstructionSegmentNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class BicycleTrafficTypeSegmentNative extends ffi.Struct {
  @ffi.Int64()
  external core.int trafficType;
  external mapkit_geometry_geometry.SubpolylineNative subpolyline;
}

final BicycleTrafficTypeSegmentNative Function(
        core.int, mapkit_geometry_geometry.SubpolylineNative)
    _BicycleTrafficTypeSegmentNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    BicycleTrafficTypeSegmentNative Function(ffi.Int64,
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_transport_bicycle_BicycleTrafficTypeSegment_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'BicycleTrafficTypeSegment.toPointer',
    toPlatform:
        '(val) => BicycleTrafficTypeSegment.fromPointer(val, needFree: false)')
class BicycleTrafficTypeSegment {
  final transport_bicycle_traffic_type.BicycleTrafficTypeID trafficType;
  final mapkit_geometry_geometry.Subpolyline subpolyline;

  const BicycleTrafficTypeSegment(this.trafficType, this.subpolyline);

  /// @nodoc
  @internal
  BicycleTrafficTypeSegment.fromNative(BicycleTrafficTypeSegmentNative native)
      : this(
            transport_bicycle_traffic_type.BicycleTrafficTypeID.fromInt(
                native.trafficType),
            mapkit_geometry_geometry.Subpolyline.fromNative(
                native.subpolyline));

  /// @nodoc
  @internal
  static BicycleTrafficTypeSegmentNative toNative(BicycleTrafficTypeSegment c) {
    return _BicycleTrafficTypeSegmentNativeInit(
        transport_bicycle_traffic_type.BicycleTrafficTypeID.toInt(
            c.trafficType),
        mapkit_geometry_geometry.Subpolyline.toNative(c.subpolyline));
  }

  /// @nodoc
  @internal
  static BicycleTrafficTypeSegment? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = BicycleTrafficTypeSegment.fromNative(
        ptr.cast<BicycleTrafficTypeSegmentNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(BicycleTrafficTypeSegment? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<BicycleTrafficTypeSegmentNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// Bicycle route.
@bindings_annotations.ContainerData(
    toNative: 'BicycleRoute.getNativePtr',
    toPlatform:
        '(val) => BicycleRoute.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class BicycleRoute implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleRoute_free.cast());

  /// @nodoc
  BicycleRoute.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  BicycleRoute.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleRoute? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static BicycleRoute? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BicycleRoute.fromNativePtr(ptr);
  }

  /// Quantitative characteristics of the route.
  transport_bicycle_weight.BicycleWeight get weight {
    return transport_bicycle_weight.BicycleWeight.fromNative(
        _Route_get_weight(ptr));
  }

  /// Sections of the route.
  core.List<transport_bicycle_section.BicycleSection> get sections {
    return transport_bicycle_section.BicycleSectionContainerExtension
        .toPlatformVector(_Route_get_sections(ptr));
  }

  /// Legs of the route.
  core.List<transport_bicycle_leg.BicycleLeg> get legs {
    return transport_bicycle_leg.BicycleLegContainerExtension.toPlatformVector(
        _Route_get_legs(ptr));
  }

  /// Polyline with geometry of the route.
  mapkit_geometry_geometry.Polyline get geometry {
    return mapkit_geometry_geometry.Polyline.fromNativePtr(
        _Route_get_geometry(ptr));
  }

  /// Specific properties of the route.
  ///
  transport_bicycle_flags.BicycleFlags? get flags {
    return transport_bicycle_flags.BicycleFlags.fromPointer(
        _Route_get_flags(ptr));
  }

  /// List of specific constructions along the bicycle path, such as stairs
  /// or crossings. See
  /// [transport_bicycle_construction.BicycleConstructionID] for a complete
  /// list of constructions. [BicycleConstructionSegment.subpolyline]
  /// fields of all segments cover the entire [BicycleRoute.geometry].
  core.List<BicycleConstructionSegment> get constructions {
    return BicycleConstructionSegmentContainerExtension.toPlatformVector(
        _Route_get_constructions(ptr));
  }

  /// List of traffic types
  /// ([transport_bicycle_traffic_type.BicycleTrafficTypeID]) along the
  /// path. Traffic type for an edge means who the road is designed for,
  /// such as pedestrians or cyclists. See
  /// [transport_bicycle_traffic_type.BicycleTrafficTypeID] for a complete
  /// list of types. Fields [BicycleTrafficTypeSegment.subpolyline] of all
  /// segments cover whole [BicycleRoute.geometry]
  core.List<BicycleTrafficTypeSegment> get trafficTypes {
    return BicycleTrafficTypeSegmentContainerExtension.toPlatformVector(
        _Route_get_trafficTypes(ptr));
  }

  /// List of restricted entries with their positions along the path.
  core.List<transport_bicycle_restricted_entry.BicycleRestrictedEntry>
      get restrictedEntries {
    return transport_bicycle_restricted_entry
            .BicycleRestrictedEntryContainerExtension
        .toPlatformVector(_Route_get_restrictedEntries(ptr));
  }

  /// List of via points on the path. See
  /// [transport_bicycle_intermediate_points.BicycleViaPoint] for details
  core.List<transport_bicycle_intermediate_points.BicycleViaPoint>
      get viaPoints {
    return transport_bicycle_intermediate_points
            .BicycleViaPointContainerExtension
        .toPlatformVector(_Route_get_viaPoints(ptr));
  }

  /// List of waypoints on the route. See
  /// [transport_bicycle_intermediate_points.BicycleWayPoint] for details.
  core.List<transport_bicycle_intermediate_points.BicycleWayPoint>
      get wayPoints {
    return transport_bicycle_intermediate_points
            .BicycleWayPointContainerExtension
        .toPlatformVector(_Route_get_wayPoints(ptr));
  }

  /// Route URI, which can be used with
  /// [transport_bicycle_bicycle_router.BicycleRouter] to fetch additional
  /// information about the route or can be bookmarked for future
  /// reference.
  mapkit_uri_uri_object_metadata.UriObjectMetadata get uriMetadata {
    return mapkit_uri_uri_object_metadata.UriObjectMetadata.fromNativePtr(
        _Route_get_uriMetadata(ptr));
  }

  /// Unique route id.
  ///
  core.String? get routeId {
    return to_platform.toPlatformFromPointerString(_Route_get_routeId(ptr));
  }
}

final _BicycleRoute_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_bicycle_BicycleRoute_free');

final transport_bicycle_weight.BicycleWeightNative Function(
        ffi.Pointer<ffi.Void>) _Route_get_weight =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    transport_bicycle_weight.BicycleWeightNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_weight')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_sections = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_sections')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _Route_get_legs =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_legs')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_geometry = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_geometry')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _Route_get_flags =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_flags')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_constructions = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_constructions')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_trafficTypes = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_trafficTypes')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_restrictedEntries = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_bicycle_BicycleRoute_get_restrictedEntries')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_viaPoints = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_viaPoints')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_wayPoints = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_wayPoints')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_uriMetadata = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_uriMetadata')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _Route_get_routeId =
    lib
        .library
        .lookup<
                ffi
                .NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_routeId')
        .asFunction();
