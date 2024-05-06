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
part 'route.impl.dart';

final class DrivingSummary {
  final directions_driving_weight.DrivingWeight weight;
  final directions_driving_flags.DrivingFlags flags;

  const DrivingSummary(this.weight, this.flags);

  @core.override
  core.int get hashCode => core.Object.hashAll([weight, flags]);

  @core.override
  core.bool operator ==(covariant DrivingSummary other) {
    if (core.identical(this, other)) {
      return true;
    }
    return weight == other.weight && flags == other.flags;
  }

  @core.override
  core.String toString() {
    return "DrivingSummary(weight: $weight, flags: $flags)";
  }
}

abstract final class DrivingSectionMetadata implements ffi.Finalizable {
  factory DrivingSectionMetadata(
          core.int legIndex,
          directions_driving_weight.DrivingWeight weight,
          directions_driving_annotation.DrivingAnnotation annotation,
          core.List<core.int> viaPointPositions) =>
      DrivingSectionMetadataImpl(
          legIndex, weight, annotation, viaPointPositions);

  core.int get legIndex;
  directions_driving_weight.DrivingWeight get weight;
  directions_driving_annotation.DrivingAnnotation get annotation;
  core.List<core.int> get viaPointPositions;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([legIndex, weight, annotation, viaPointPositions]);

  @core.override
  core.bool operator ==(covariant DrivingSectionMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return legIndex == other.legIndex &&
        weight == other.weight &&
        annotation == other.annotation &&
        viaPointPositions == other.viaPointPositions;
  }

  @core.override
  core.String toString() {
    return "DrivingSectionMetadata(legIndex: $legIndex, weight: $weight, annotation: $annotation, viaPointPositions: $viaPointPositions)";
  }
}

abstract final class DrivingRoutePoint implements ffi.Finalizable {
  factory DrivingRoutePoint(mapkit_geometry_point.Point position,
          mapkit_geometry_point.Point? selectedArrivalPoint) =>
      DrivingRoutePointImpl(position, selectedArrivalPoint);

  mapkit_geometry_point.Point get position;
  mapkit_geometry_point.Point? get selectedArrivalPoint;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([position, selectedArrivalPoint]);

  @core.override
  core.bool operator ==(covariant DrivingRoutePoint other) {
    if (core.identical(this, other)) {
      return true;
    }
    return position == other.position &&
        selectedArrivalPoint == other.selectedArrivalPoint;
  }

  @core.override
  core.String toString() {
    return "DrivingRoutePoint(position: $position, selectedArrivalPoint: $selectedArrivalPoint)";
  }
}

abstract final class DrivingRouteMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory DrivingRouteMetadata(
          directions_driving_weight.DrivingWeight weight,
          directions_driving_flags.DrivingFlags flags,
          core.List<DrivingRoutePoint> routePoints,
          core.String? uri) =>
      DrivingRouteMetadataImpl(weight, flags, routePoints, uri);

  directions_driving_weight.DrivingWeight get weight;
  directions_driving_flags.DrivingFlags get flags;
  core.List<DrivingRoutePoint> get routePoints;
  core.String? get uri;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([weight, flags, routePoints, uri]);

  @core.override
  core.bool operator ==(covariant DrivingRouteMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return weight == other.weight &&
        flags == other.flags &&
        routePoints == other.routePoints &&
        uri == other.uri;
  }

  @core.override
  core.String toString() {
    return "DrivingRouteMetadata(weight: $weight, flags: $flags, routePoints: $routePoints, uri: $uri)";
  }

  static final struct_factory.StructFactory<DrivingRouteMetadata> factory =
      const _DrivingRouteMetadataFactory();
}

abstract final class DrivingSection implements ffi.Finalizable {
  factory DrivingSection(DrivingSectionMetadata metadata,
          mapkit_geometry_geometry.Subpolyline geometry) =>
      DrivingSectionImpl(metadata, geometry);

  DrivingSectionMetadata get metadata;
  mapkit_geometry_geometry.Subpolyline get geometry;

  @core.override
  core.int get hashCode => core.Object.hashAll([metadata, geometry]);

  @core.override
  core.bool operator ==(covariant DrivingSection other) {
    if (core.identical(this, other)) {
      return true;
    }
    return metadata == other.metadata && geometry == other.geometry;
  }

  @core.override
  core.String toString() {
    return "DrivingSection(metadata: $metadata, geometry: $geometry)";
  }
}

/// A listener to monitor route condition changes.
abstract class DrivingConditionsListener {
  /// Triggers when the conditions are updated.
  void onConditionsUpdated();

  /// Triggers when the conditions are outdated.
  void onConditionsOutdated();
}

abstract final class DrivingEvent implements ffi.Finalizable {
  factory DrivingEvent(
          mapkit_geometry_geometry.PolylinePosition polylinePosition,
          core.String eventId,
          core.String? descriptionText,
          core.List<mapkit_road_events_event_tag.RoadEventsEventTag> tags,
          mapkit_geometry_point.Point location,
          core.double? speedLimit) =>
      DrivingEventImpl(polylinePosition, eventId, descriptionText, tags,
          location, speedLimit);

  mapkit_geometry_geometry.PolylinePosition get polylinePosition;
  core.String get eventId;
  core.String? get descriptionText;
  core.List<mapkit_road_events_event_tag.RoadEventsEventTag> get tags;
  mapkit_geometry_point.Point get location;
  core.double? get speedLimit;

  @core.override
  core.int get hashCode => core.Object.hashAll(
      [polylinePosition, eventId, descriptionText, tags, location, speedLimit]);

  @core.override
  core.bool operator ==(covariant DrivingEvent other) {
    if (core.identical(this, other)) {
      return true;
    }
    return polylinePosition == other.polylinePosition &&
        eventId == other.eventId &&
        descriptionText == other.descriptionText &&
        tags == other.tags &&
        location == other.location &&
        speedLimit == other.speedLimit;
  }

  @core.override
  core.String toString() {
    return "DrivingEvent(polylinePosition: $polylinePosition, eventId: $eventId, descriptionText: $descriptionText, tags: $tags, location: $location, speedLimit: $speedLimit)";
  }
}

/// Driving route. A route consists of multiple sections. Each section
/// has a corresponding annotation that describes the action at the
/// beginning of the section.
abstract class DrivingRoute implements ffi.Finalizable {
  /// The ID of the route.
  core.String get routeId;

  /// The route metadata.
  DrivingRouteMetadata get metadata;

  /// Manoeuvre-to-Manoeuvre route sections.
  core.List<DrivingSection> get sections;

  /// Route geometry.
  mapkit_geometry_geometry.Polyline get geometry;

  /// Traffic conditions on the given route.
  core.List<mapkit_navigation_jam_segment.JamSegment> get jamSegments;

  /// Events on the given route.
  core.List<DrivingEvent> get events;

  /// Speed limits for segments in the geometry.
  core.List<core.double?> get speedLimits;

  /// Vehicle options.
  directions_driving_vehicle_options.DrivingVehicleOptions get vehicleOptions;

  /// Lane signs.
  core.List<directions_driving_lane.DrivingLaneSign> get laneSigns;

  /// Direction signs.
  core.List<directions_driving_direction_signs.DrivingDirectionSign>
      get directionSigns;

  /// Route restricted entries.
  core.List<directions_driving_restricted_entry.DrivingRestrictedEntry>
      get restrictedEntries;

  /// Route traffic lights.
  core.List<directions_driving_traffic_light.DrivingTrafficLight>
      get trafficLights;

  /// Route points with time-dependent restrictions.
  core.List<directions_driving_restricted_turn.DrivingRestrictedTurn>
      get restrictedTurns;

  /// Railway crossings
  core.List<directions_driving_railway_crossing.DrivingRailwayCrossing>
      get railwayCrossings;

  /// Pedestrian crossings
  core.List<directions_driving_pedestrian_crossing.DrivingPedestrianCrossing>
      get pedestrianCrossings;

  /// Speed bumps
  core.List<directions_driving_speed_bump.DrivingSpeedBump> get speedBumps;

  /// Checkpoints
  core.List<directions_driving_checkpoint.DrivingCheckpoint> get checkpoints;

  /// Route roads.
  core.List<directions_driving_rugged_road.DrivingRuggedRoad> get ruggedRoads;
  core.List<directions_driving_toll_road.DrivingTollRoad> get tollRoads;
  core.List<directions_driving_ford_crossing.DrivingFordCrossing>
      get fordCrossings;
  core.List<directions_driving_ferry.DrivingFerry> get ferries;

  /// Route vehicle restrictions.
  core.List<
          directions_driving_vehicle_restrictions.DrivingRoadVehicleRestriction>
      get roadVehicleRestrictions;
  core.List<
      directions_driving_vehicle_restrictions
      .DrivingManoeuvreVehicleRestriction> get manoeuvreVehicleRestrictions;

  /// Language of string annotations (for example street names) in this
  /// route object.
  ///
  mapkit_annotations_annotation_lang.AnnotationLanguage? get annotationLanguage;

  /// Request points that were specified in the router request that this
  /// route originated from.
  ///
  core.List<mapkit_request_point.RequestPoint>? get requestPoints;

  /// The reached position on the given route. The 'RouteMetadata::weight'
  /// field contains data for the part of the route beyond this position.
  mapkit_geometry_geometry.PolylinePosition get position;
  set position(mapkit_geometry_geometry.PolylinePosition val);

  /// The reached position on the given route. The 'RouteMetadata::weight'
  /// field contains data for the part of the route beyond this position.
  mapkit_navigation_route_position.RoutePosition get routePosition;

  /// A leg is a section of the route between two consecutive waypoints.
  core.int get legIndex;
  set legIndex(core.int val);

  /// Indicates whether driving conditions (jamSegments and events) have
  /// become outdated when we are not able to fetch updates for some
  /// predefined time.
  core.bool get areConditionsOutdated;

  /// Polyline positions of waypoints including start and finish point.
  core.List<mapkit_geometry_geometry.PolylinePosition> get wayPoints;

  /// Adds a listener for route condition changes.
  ///
  /// The class does not retain the object in the 'conditionsListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addConditionsListener(DrivingConditionsListener conditionsListener);

  /// Removes the listener for route condition changes.
  ///
  /// The class does not retain the object in the 'conditionsListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void removeConditionsListener(DrivingConditionsListener conditionsListener);

  /// Section index.
  core.int sectionIndex(core.int segmentIndex);

  /// Metadata location.
  DrivingRouteMetadata metadataAt(
      mapkit_geometry_geometry.PolylinePosition position);

  void requestConditionsUpdate();
}
