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
part 'route.impl.dart';

/// Describes part of bicycle path with the same construction.

final class BicycleConstructionSegment {
  final transport_bicycle_construction.BicycleConstructionID construction;
  final mapkit_geometry_geometry.Subpolyline subpolyline;

  const BicycleConstructionSegment(this.construction, this.subpolyline);

  @core.override
  core.int get hashCode => core.Object.hashAll([construction, subpolyline]);

  @core.override
  core.bool operator ==(covariant BicycleConstructionSegment other) {
    if (core.identical(this, other)) {
      return true;
    }
    return construction == other.construction &&
        subpolyline == other.subpolyline;
  }

  @core.override
  core.String toString() {
    return "BicycleConstructionSegment(construction: $construction, subpolyline: $subpolyline)";
  }
}

/// Describes part of bicycle path with the same traffic type.

final class BicycleTrafficTypeSegment {
  final transport_bicycle_traffic_type.BicycleTrafficTypeID trafficType;
  final mapkit_geometry_geometry.Subpolyline subpolyline;

  const BicycleTrafficTypeSegment(this.trafficType, this.subpolyline);

  @core.override
  core.int get hashCode => core.Object.hashAll([trafficType, subpolyline]);

  @core.override
  core.bool operator ==(covariant BicycleTrafficTypeSegment other) {
    if (core.identical(this, other)) {
      return true;
    }
    return trafficType == other.trafficType && subpolyline == other.subpolyline;
  }

  @core.override
  core.String toString() {
    return "BicycleTrafficTypeSegment(trafficType: $trafficType, subpolyline: $subpolyline)";
  }
}

/// Bicycle route.
abstract class BicycleRoute implements ffi.Finalizable {
  /// Quantitative characteristics of the route.
  transport_bicycle_weight.BicycleWeight get weight;

  /// Sections of the route.
  core.List<transport_bicycle_section.BicycleSection> get sections;

  /// Legs of the route.
  core.List<transport_bicycle_leg.BicycleLeg> get legs;

  /// Polyline with geometry of the route.
  mapkit_geometry_geometry.Polyline get geometry;

  /// Specific properties of the route.
  ///
  transport_bicycle_flags.BicycleFlags? get flags;

  /// List of specific constructions along the bicycle path, such as stairs
  /// or crossings. See
  /// [transport_bicycle_construction.BicycleConstructionID] for a complete
  /// list of constructions. [BicycleConstructionSegment.subpolyline]
  /// fields of all segments cover the entire [BicycleRoute.geometry].
  core.List<BicycleConstructionSegment> get constructions;

  /// List of traffic types
  /// ([transport_bicycle_traffic_type.BicycleTrafficTypeID]) along the
  /// path. Traffic type for an edge means who the road is designed for,
  /// such as pedestrians or cyclists. See
  /// [transport_bicycle_traffic_type.BicycleTrafficTypeID] for a complete
  /// list of types. Fields [BicycleTrafficTypeSegment.subpolyline] of all
  /// segments cover whole [BicycleRoute.geometry]
  core.List<BicycleTrafficTypeSegment> get trafficTypes;

  /// List of restricted entries with their positions along the path.
  core.List<transport_bicycle_restricted_entry.BicycleRestrictedEntry>
      get restrictedEntries;

  /// List of via points on the path. See
  /// [transport_bicycle_intermediate_points.BicycleViaPoint] for details
  core.List<transport_bicycle_intermediate_points.BicycleViaPoint>
      get viaPoints;

  /// List of waypoints on the route. See
  /// [transport_bicycle_intermediate_points.BicycleWayPoint] for details.
  core.List<transport_bicycle_intermediate_points.BicycleWayPoint>
      get wayPoints;

  /// Route URI, which can be used with
  /// [transport_bicycle_bicycle_router.BicycleRouter] to fetch additional
  /// information about the route or can be bookmarked for future
  /// reference.
  mapkit_uri_uri_object_metadata.UriObjectMetadata get uriMetadata;

  /// Unique route id.
  ///
  core.String? get routeId;
}
