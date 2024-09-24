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
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/mapkit/localized_value.dart'
    as mapkit_localized_value;
import 'package:yandex_maps_mapkit/src/mapkit/navigation/jam_segment.dart'
    as mapkit_navigation_jam_segment;
import 'package:yandex_maps_mapkit/src/mapkit/uri/uri_object_metadata.dart'
    as mapkit_uri_uri_object_metadata;
import 'package:yandex_maps_mapkit/src/transport/masstransit/annotation.dart'
    as transport_masstransit_annotation;
import 'package:yandex_maps_mapkit/src/transport/masstransit/common.dart'
    as transport_masstransit_common;
import 'package:yandex_maps_mapkit/src/transport/masstransit/flags.dart'
    as transport_masstransit_flags;
import 'package:yandex_maps_mapkit/src/transport/masstransit/masstransit_router.dart'
    as transport_masstransit_masstransit_router;
import 'package:yandex_maps_mapkit/src/transport/masstransit/restricted_entry.dart'
    as transport_masstransit_restricted_entry;
import 'package:yandex_maps_mapkit/src/transport/masstransit/transport.dart'
    as transport_masstransit_transport;
import 'package:yandex_maps_mapkit/src/transport/masstransit/travel_estimation.dart'
    as transport_masstransit_travel_estimation;
import 'package:yandex_maps_mapkit/src/transport/masstransit/way_point.dart'
    as transport_masstransit_way_point;
import 'package:yandex_maps_mapkit/src/transport/masstransit/weight.dart'
    as transport_masstransit_weight;

part 'route.containers.dart';
part 'route.impl.dart';

/// Represents a 'wait until suitable tranport arrives' section of a
/// route.

final class MasstransitWait {
  /// Dummy object.
  final core.int dummy;

  const MasstransitWait({
    required this.dummy,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([dummy]);

  @core.override
  core.bool operator ==(covariant MasstransitWait other) {
    if (core.identical(this, other)) {
      return true;
    }
    return dummy == other.dummy;
  }

  @core.override
  core.String toString() {
    return "MasstransitWait(dummy: $dummy)";
  }
}

/// Stairs direction of moving relative to the route.
enum MasstransitStairs {
  Unknown,
  Up,
  Down,
  ;
}

enum MasstransitPass {
  /// Underground crossing.
  Under,

  /// Overground crossing, such as a bridge.
  Over,
  ;
}

/// Travolator direction of moving relative to the route.
enum MasstransitTravolator {
  Unknown,
  Up,
  Down,
  ;
}

/// Escalator direction of moving relative to the route.
enum MasstransitEscalator {
  Unknown,
  Up,
  Down,
  ;
}

/// Elevator direction of moving relative to the route.
enum MasstransitElevator {
  Up,
  Down,
  ;
}

/// Constructions that can be found on pedestrian, bicycle paths or on
/// mass transit transfers.

final class MasstransitConstructionMask {
  final MasstransitStairs? stairs;
  final MasstransitPass? pass;

  /// Crossing that is not an underground tunnel or a bridge.
  final core.bool crosswalk;

  /// Edge connecting the route endpoint to the route network.
  final core.bool binding;

  /// Transfer. For example, transfer from one underground line to another
  /// or transfer from an underground station to an exit from it.
  final core.bool transition;

  /// Tunnel that is not a crossing.
  final core.bool tunnel;
  final MasstransitTravolator? travolator;

  /// Air-conditioned place. Can be a covered gallery, a mall or any other
  /// climate-static edges.
  final core.bool indoor;
  final MasstransitEscalator? escalator;
  final MasstransitElevator? elevator;

  const MasstransitConstructionMask({
    this.stairs,
    this.pass,
    required this.crosswalk,
    required this.binding,
    required this.transition,
    required this.tunnel,
    this.travolator,
    required this.indoor,
    this.escalator,
    this.elevator,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        stairs,
        pass,
        crosswalk,
        binding,
        transition,
        tunnel,
        travolator,
        indoor,
        escalator,
        elevator
      ]);

  @core.override
  core.bool operator ==(covariant MasstransitConstructionMask other) {
    if (core.identical(this, other)) {
      return true;
    }
    return stairs == other.stairs &&
        pass == other.pass &&
        crosswalk == other.crosswalk &&
        binding == other.binding &&
        transition == other.transition &&
        tunnel == other.tunnel &&
        travolator == other.travolator &&
        indoor == other.indoor &&
        escalator == other.escalator &&
        elevator == other.elevator;
  }

  @core.override
  core.String toString() {
    return "MasstransitConstructionMask(stairs: $stairs, pass: $pass, crosswalk: $crosswalk, binding: $binding, transition: $transition, tunnel: $tunnel, travolator: $travolator, indoor: $indoor, escalator: $escalator, elevator: $elevator)";
  }
}

/// Describes part of pedestrian or bicycle path with the same
/// construction.

final class MasstransitConstructionSegment {
  final mapkit_geometry_geometry.Subpolyline subpolyline;
  final MasstransitConstructionMask constructionMask;

  const MasstransitConstructionSegment(this.subpolyline, this.constructionMask);

  @core.override
  core.int get hashCode => core.Object.hashAll([subpolyline, constructionMask]);

  @core.override
  core.bool operator ==(covariant MasstransitConstructionSegment other) {
    if (core.identical(this, other)) {
      return true;
    }
    return subpolyline == other.subpolyline &&
        constructionMask == other.constructionMask;
  }

  @core.override
  core.String toString() {
    return "MasstransitConstructionSegment(subpolyline: $subpolyline, constructionMask: $constructionMask)";
  }
}

/// TrafficTypeID describes who the road is designed for.
enum MasstransitTrafficTypeID {
  /// Road that is not one of the following types.
  Other,

  /// Footpath, designed only for pedestrian travel.
  Pedestrian,

  /// Bikepath, designed only for bicycle travel.
  Bicycle,

  /// Road designed for motorized vehicles that might be dangerous for
  /// cyclists.
  Auto,
  ;
}

/// Describes part of bicycle or scooter path with the same traffic type.

final class MasstransitTrafficTypeSegment {
  final MasstransitTrafficTypeID trafficType;
  final mapkit_geometry_geometry.Subpolyline subpolyline;

  const MasstransitTrafficTypeSegment(this.trafficType, this.subpolyline);

  @core.override
  core.int get hashCode => core.Object.hashAll([trafficType, subpolyline]);

  @core.override
  core.bool operator ==(covariant MasstransitTrafficTypeSegment other) {
    if (core.identical(this, other)) {
      return true;
    }
    return trafficType == other.trafficType && subpolyline == other.subpolyline;
  }

  @core.override
  core.String toString() {
    return "MasstransitTrafficTypeSegment(trafficType: $trafficType, subpolyline: $subpolyline)";
  }
}

enum MasstransitFitnessType {
  /// User moves on feet.
  Pedestrian,

  /// User moves on wheels (bicycle, scooter).
  Bicycle,
  ;
}

/// Rough estimate of user experience on a specific section of a fitness
/// route
enum MasstransitInclineType {
  /// Very quick elevation gain, difficult for any non-athlete
  ExtremeAscent,

  /// Moderate elevation gain, could be difficult for some people
  ModerateAscent,

  /// No meaningful elevation gain or loss,
  Plateau,

  /// Moderate elevation loss
  ModerateDescent,

  /// Very quick elevation loss, could be difficult or dangerous
  ExtremeDescent,
  ;
}

/// represents a section of continuous non-trivial gradient

final class MasstransitInclineSection {
  /// Vague characteristic of this gradient secion
  final MasstransitInclineType type;

  /// A subpolyline of the route where the section is located
  final mapkit_geometry_geometry.Subpolyline subpolyline;

  const MasstransitInclineSection(this.type, this.subpolyline);

  @core.override
  core.int get hashCode => core.Object.hashAll([type, subpolyline]);

  @core.override
  core.bool operator ==(covariant MasstransitInclineSection other) {
    if (core.identical(this, other)) {
      return true;
    }
    return type == other.type && subpolyline == other.subpolyline;
  }

  @core.override
  core.String toString() {
    return "MasstransitInclineSection(type: $type, subpolyline: $subpolyline)";
  }
}

/// Information of elevation in point

final class MasstransitElevationPoint {
  /// Elevation levels in meters
  final core.double elevation;

  const MasstransitElevationPoint({
    required this.elevation,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([elevation]);

  @core.override
  core.bool operator ==(covariant MasstransitElevationPoint other) {
    if (core.identical(this, other)) {
      return true;
    }
    return elevation == other.elevation;
  }

  @core.override
  core.String toString() {
    return "MasstransitElevationPoint(elevation: $elevation)";
  }
}

/// Information of elevation gain in loss in a fitness section
abstract final class MasstransitElevationData implements ffi.Finalizable {
  factory MasstransitElevationData(
          mapkit_localized_value.LocalizedValue totalAscent,
          mapkit_localized_value.LocalizedValue totalDescent,
          mapkit_localized_value.LocalizedValue? steps,
          mapkit_localized_value.LocalizedValue kilocalories,
          core.List<MasstransitInclineSection> inclineSections,
          core.List<MasstransitElevationPoint> elevationSegments) =>
      MasstransitElevationDataImpl(totalAscent, totalDescent, steps,
          kilocalories, inclineSections, elevationSegments);

  /// Total ascent in meters
  mapkit_localized_value.LocalizedValue get totalAscent;

  /// Total descent in meters
  mapkit_localized_value.LocalizedValue get totalDescent;

  /// The number of steps required to cover the distance for an average
  /// person
  ///
  mapkit_localized_value.LocalizedValue? get steps;

  /// The number of kilocalories consumed by an average person to cover the
  /// distance
  mapkit_localized_value.LocalizedValue get kilocalories;

  /// List of sections with notable incline
  core.List<MasstransitInclineSection> get inclineSections;

  /// List of elevation for each point of the section polyline
  core.List<MasstransitElevationPoint> get elevationSegments;

  @core.override
  core.int get hashCode => core.Object.hashAll([
        totalAscent,
        totalDescent,
        steps,
        kilocalories,
        inclineSections,
        elevationSegments
      ]);

  @core.override
  core.bool operator ==(covariant MasstransitElevationData other) {
    if (core.identical(this, other)) {
      return true;
    }
    return totalAscent == other.totalAscent &&
        totalDescent == other.totalDescent &&
        steps == other.steps &&
        kilocalories == other.kilocalories &&
        inclineSections == other.inclineSections &&
        elevationSegments == other.elevationSegments;
  }

  @core.override
  core.String toString() {
    return "MasstransitElevationData(totalAscent: $totalAscent, totalDescent: $totalDescent, steps: $steps, kilocalories: $kilocalories, inclineSections: $inclineSections, elevationSegments: $elevationSegments)";
  }
}

/// Represent a section where we have to move by ourself (like
/// pedestrian, or by bicycle and scooter)
abstract final class MasstransitFitness implements ffi.Finalizable {
  factory MasstransitFitness(
          MasstransitFitnessType type,
          core.List<MasstransitConstructionSegment> constructions,
          core.List<
                  transport_masstransit_restricted_entry
                  .MasstransitRestrictedEntry>
              restrictedEntries,
          core.List<mapkit_geometry_geometry.PolylinePosition> viaPoints,
          core.List<transport_masstransit_annotation.MasstransitAnnotation>
              annotations,
          core.List<MasstransitTrafficTypeSegment> trafficTypes,
          MasstransitElevationData? elevationData) =>
      MasstransitFitnessImpl(type, constructions, restrictedEntries, viaPoints,
          annotations, trafficTypes, elevationData);

  MasstransitFitnessType get type;

  /// Compressed information about constructions along the path.
  /// [MasstransitConstructionSegment.subpolyline] fields of all segments
  /// cover the entire geometry of corresponding section".
  core.List<MasstransitConstructionSegment> get constructions;

  /// List of restricted entries with their coordinates along the path.
  core.List<transport_masstransit_restricted_entry.MasstransitRestrictedEntry>
      get restrictedEntries;

  /// List of via points on the path. A via point is described by the index
  /// of the point in the route geometry polyline.
  core.List<mapkit_geometry_geometry.PolylinePosition> get viaPoints;

  /// List of annotations on the path.
  core.List<transport_masstransit_annotation.MasstransitAnnotation>
      get annotations;

  /// List of traffic types on path
  core.List<MasstransitTrafficTypeSegment> get trafficTypes;

  /// Information on elevation gain and loss in a fitness section
  ///
  MasstransitElevationData? get elevationData;

  @core.override
  core.int get hashCode => core.Object.hashAll([
        type,
        constructions,
        restrictedEntries,
        viaPoints,
        annotations,
        trafficTypes,
        elevationData
      ]);

  @core.override
  core.bool operator ==(covariant MasstransitFitness other) {
    if (core.identical(this, other)) {
      return true;
    }
    return type == other.type &&
        constructions == other.constructions &&
        restrictedEntries == other.restrictedEntries &&
        viaPoints == other.viaPoints &&
        annotations == other.annotations &&
        trafficTypes == other.trafficTypes &&
        elevationData == other.elevationData;
  }

  @core.override
  core.String toString() {
    return "MasstransitFitness(type: $type, constructions: $constructions, restrictedEntries: $restrictedEntries, viaPoints: $viaPoints, annotations: $annotations, trafficTypes: $trafficTypes, elevationData: $elevationData)";
  }
}

/// The metadata about the mass transit stop.
abstract final class MasstransitRouteStopMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory MasstransitRouteStopMetadata(
          transport_masstransit_common.MasstransitStop stop,
          transport_masstransit_common.MasstransitStop? stopExit,
          mapkit_geometry_point.Point? exitPoint) =>
      MasstransitRouteStopMetadataImpl(stop, stopExit, exitPoint);

  /// Route stop information.
  transport_masstransit_common.MasstransitStop get stop;

  /// Underground station exit
  ///
  transport_masstransit_common.MasstransitStop? get stopExit;

  /// Coordinates of underground station exit
  ///
  mapkit_geometry_point.Point? get exitPoint;

  @core.override
  core.int get hashCode => core.Object.hashAll([stop, stopExit, exitPoint]);

  @core.override
  core.bool operator ==(covariant MasstransitRouteStopMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return stop == other.stop &&
        stopExit == other.stopExit &&
        exitPoint == other.exitPoint;
  }

  @core.override
  core.String toString() {
    return "MasstransitRouteStopMetadata(stop: $stop, stopExit: $stopExit, exitPoint: $exitPoint)";
  }

  static final struct_factory.StructFactory<MasstransitRouteStopMetadata>
      factory = const _MasstransitRouteStopMetadataFactory();
}

/// Describes a [transport_masstransit_common.MasstransitStop] on a
/// [MasstransitRoute].
abstract final class MasstransitRouteStop implements ffi.Finalizable {
  factory MasstransitRouteStop(MasstransitRouteStopMetadata metadata,
          mapkit_geometry_point.Point position) =>
      MasstransitRouteStopImpl(metadata, position);

  /// General information about a stop on a route and optionally about its
  /// exit
  MasstransitRouteStopMetadata get metadata;

  /// Coordinates of the stop.
  mapkit_geometry_point.Point get position;

  @core.override
  core.int get hashCode => core.Object.hashAll([metadata, position]);

  @core.override
  core.bool operator ==(covariant MasstransitRouteStop other) {
    if (core.identical(this, other)) {
      return true;
    }
    return metadata == other.metadata && position == other.position;
  }

  @core.override
  core.String toString() {
    return "MasstransitRouteStop(metadata: $metadata, position: $position)";
  }
}

/// Represents a stop in path which is not a part of any transport trip
/// but must be visited according travelling. For example, exit from
/// subway may require transfer on other stop.
abstract final class MasstransitTransferStop implements ffi.Finalizable {
  factory MasstransitTransferStop(
          MasstransitRouteStop routeStop,
          core.List<transport_masstransit_transport.MasstransitTransport>
              transports) =>
      MasstransitTransferStopImpl(routeStop, transports);

  /// Stop information.
  MasstransitRouteStop get routeStop;

  /// Transports at the stops
  core.List<transport_masstransit_transport.MasstransitTransport>
      get transports;

  @core.override
  core.int get hashCode => core.Object.hashAll([routeStop, transports]);

  @core.override
  core.bool operator ==(covariant MasstransitTransferStop other) {
    if (core.identical(this, other)) {
      return true;
    }
    return routeStop == other.routeStop && transports == other.transports;
  }

  @core.override
  core.String toString() {
    return "MasstransitTransferStop(routeStop: $routeStop, transports: $transports)";
  }
}

/// Represents a transfer to another mass transit line or to another
/// stop. For example, transfer from one underground line to another.
abstract final class MasstransitTransfer implements ffi.Finalizable {
  factory MasstransitTransfer(
          core.List<MasstransitConstructionSegment> constructions,
          MasstransitTransferStop transferStop) =>
      MasstransitTransferImpl(constructions, transferStop);

  /// Compressed information about pedestrian constructions along the
  /// transfer path. [MasstransitConstructionSegment.subpolyline] fields of
  /// all segments cover the entire geometry of corresponding section".
  core.List<MasstransitConstructionSegment> get constructions;

  /// The stop you need to transfer to
  MasstransitTransferStop get transferStop;

  @core.override
  core.int get hashCode => core.Object.hashAll([constructions, transferStop]);

  @core.override
  core.bool operator ==(covariant MasstransitTransfer other) {
    if (core.identical(this, other)) {
      return true;
    }
    return constructions == other.constructions &&
        transferStop == other.transferStop;
  }

  @core.override
  core.String toString() {
    return "MasstransitTransfer(constructions: $constructions, transferStop: $transferStop)";
  }
}

/// Represents a taxi part of route.
abstract final class MasstransitTaxi implements ffi.Finalizable {
  factory MasstransitTaxi(
          core.List<mapkit_navigation_jam_segment.JamSegment> jamSegments) =>
      MasstransitTaxiImpl(jamSegments);

  /// Traffic conditions on the given part of route.
  core.List<mapkit_navigation_jam_segment.JamSegment> get jamSegments;

  @core.override
  core.int get hashCode => core.Object.hashAll([jamSegments]);

  @core.override
  core.bool operator ==(covariant MasstransitTaxi other) {
    if (core.identical(this, other)) {
      return true;
    }
    return jamSegments == other.jamSegments;
  }

  @core.override
  core.String toString() {
    return "MasstransitTaxi(jamSegments: $jamSegments)";
  }
}

/// General information about a section of a route. The
/// [MasstransitSectionMetadata.data] field describes the type of
/// section: wait, walk, transfer, or transport, and related data.
/// Related data can be set for walk and transfer sections. This data is
/// a vector of construction types of corresponding geometry segments.
abstract final class MasstransitSectionMetadata implements ffi.Finalizable {
  factory MasstransitSectionMetadata(
          transport_masstransit_weight.MasstransitWeight weight,
          MasstransitSectionMetadataSectionData data,
          transport_masstransit_travel_estimation.MasstransitTravelEstimation?
              estimation,
          core.int legIndex) =>
      MasstransitSectionMetadataImpl(weight, data, estimation, legIndex);

  /// Contains the route traveling time, distance of the walking part, and
  /// the number of transfers.
  transport_masstransit_weight.MasstransitWeight get weight;

  /// Contains information that is specific to a section type: wait, walk,
  /// transfer, or ride transport.
  MasstransitSectionMetadataSectionData get data;

  /// Arrival and departure time estimations. This field is set only for
  /// time-dependent routes.
  ///
  transport_masstransit_travel_estimation.MasstransitTravelEstimation?
      get estimation;

  /// Part of the route polyline for the route leg. A leg is a part of the
  /// route between two consecutive waypoints.
  core.int get legIndex;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([weight, data, estimation, legIndex]);

  @core.override
  core.bool operator ==(covariant MasstransitSectionMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return weight == other.weight &&
        data == other.data &&
        estimation == other.estimation &&
        legIndex == other.legIndex;
  }

  @core.override
  core.String toString() {
    return "MasstransitSectionMetadata(weight: $weight, data: $data, estimation: $estimation, legIndex: $legIndex)";
  }
}

/// A choice of information specific to the section type.
final class MasstransitSectionMetadataSectionData {
  const MasstransitSectionMetadataSectionData.fromWait(MasstransitWait wait)
      : _value = wait;

  const MasstransitSectionMetadataSectionData.fromFitness(
      MasstransitFitness fitness)
      : _value = fitness;

  const MasstransitSectionMetadataSectionData.fromTransfer(
      MasstransitTransfer transfer)
      : _value = transfer;

  const MasstransitSectionMetadataSectionData.fromTaxi(MasstransitTaxi taxi)
      : _value = taxi;

  const MasstransitSectionMetadataSectionData.fromVectorMasstransitTransport(
      core.List<transport_masstransit_transport.MasstransitTransport>
          transports)
      : _value = transports;

  MasstransitWait? asWait() {
    if (_value is MasstransitWait) {
      return _value;
    }
    return null;
  }

  MasstransitFitness? asFitness() {
    if (_value is MasstransitFitness) {
      return _value;
    }
    return null;
  }

  MasstransitTransfer? asTransfer() {
    if (_value is MasstransitTransfer) {
      return _value;
    }
    return null;
  }

  MasstransitTaxi? asTaxi() {
    if (_value is MasstransitTaxi) {
      return _value;
    }
    return null;
  }

  core.List<transport_masstransit_transport.MasstransitTransport>?
      asVectorMasstransitTransport() {
    if (_value
        is core.List<transport_masstransit_transport.MasstransitTransport>) {
      return _value;
    }
    return null;
  }

  /// Applies the passed function to the variant value.
  void when({
    required void Function(MasstransitWait value) onWait,
    required void Function(MasstransitFitness value) onFitness,
    required void Function(MasstransitTransfer value) onTransfer,
    required void Function(MasstransitTaxi value) onTaxi,
    required void Function(
            core.List<transport_masstransit_transport.MasstransitTransport>
                value)
        onVectorMasstransitTransport,
  }) {
    if (_value is MasstransitWait) {
      return onWait(_value as MasstransitWait);
    }
    if (_value is MasstransitFitness) {
      return onFitness(_value as MasstransitFitness);
    }
    if (_value is MasstransitTransfer) {
      return onTransfer(_value as MasstransitTransfer);
    }
    if (_value is MasstransitTaxi) {
      return onTaxi(_value as MasstransitTaxi);
    }
    if (_value
        is core.List<transport_masstransit_transport.MasstransitTransport>) {
      return onVectorMasstransitTransport(_value
          as core.List<transport_masstransit_transport.MasstransitTransport>);
    }
    assert(false);
  }

  final core.dynamic _value;
}

/// Route settings that were used by the mass transit router for a
/// specific route.
abstract final class MasstransitRouteSettings implements ffi.Finalizable {
  factory MasstransitRouteSettings(core.List<core.String> avoidTypes,
          core.List<core.String> acceptTypes) =>
      MasstransitRouteSettingsImpl(avoidTypes, acceptTypes);

  /// Transport types that the router avoided.
  core.List<core.String> get avoidTypes;

  /// Transport types that were allowed even if they are in the list of
  /// avoided types.
  core.List<core.String> get acceptTypes;

  @core.override
  core.int get hashCode => core.Object.hashAll([avoidTypes, acceptTypes]);

  @core.override
  core.bool operator ==(covariant MasstransitRouteSettings other) {
    if (core.identical(this, other)) {
      return true;
    }
    return avoidTypes == other.avoidTypes && acceptTypes == other.acceptTypes;
  }

  @core.override
  core.String toString() {
    return "MasstransitRouteSettings(avoidTypes: $avoidTypes, acceptTypes: $acceptTypes)";
  }
}

enum MasstransitComfortTag {
  /// Comfort route for hot weather.
  ForHeat,

  /// Comfort route for cold weather.
  ForCold,
  ;
}

/// Contains information associated with a route constructed by the mass
/// transit router.
abstract final class MasstransitRouteMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory MasstransitRouteMetadata(
          transport_masstransit_weight.MasstransitWeight weight,
          MasstransitRouteSettings? settings,
          transport_masstransit_travel_estimation.MasstransitTravelEstimation?
              estimation,
          core.List<transport_masstransit_way_point.MasstransitWayPoint>
              wayPoints,
          core.String? routeId,
          transport_masstransit_flags.MasstransitFlags? flags,
          core.List<MasstransitComfortTag> comfortTags) =>
      MasstransitRouteMetadataImpl(
          weight, settings, estimation, wayPoints, routeId, flags, comfortTags);

  /// Contains the route time, distance of the walking part, and the number
  /// of transfers.
  transport_masstransit_weight.MasstransitWeight get weight;

  /// Route settings that were used by the mass transit router.
  ///
  MasstransitRouteSettings? get settings;

  /// Arrival and departure time estimations for time-dependent routes.
  ///
  transport_masstransit_travel_estimation.MasstransitTravelEstimation?
      get estimation;

  /// List of route waypoints. See
  /// [transport_masstransit_way_point.MasstransitWayPoint] for details
  core.List<transport_masstransit_way_point.MasstransitWayPoint> get wayPoints;

  /// Unique route id.
  ///
  core.String? get routeId;

  /// Flags which contains route properties
  ///
  transport_masstransit_flags.MasstransitFlags? get flags;
  core.List<MasstransitComfortTag> get comfortTags;

  @core.override
  core.int get hashCode => core.Object.hashAll(
      [weight, settings, estimation, wayPoints, routeId, flags, comfortTags]);

  @core.override
  core.bool operator ==(covariant MasstransitRouteMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return weight == other.weight &&
        settings == other.settings &&
        estimation == other.estimation &&
        wayPoints == other.wayPoints &&
        routeId == other.routeId &&
        flags == other.flags &&
        comfortTags == other.comfortTags;
  }

  @core.override
  core.String toString() {
    return "MasstransitRouteMetadata(weight: $weight, settings: $settings, estimation: $estimation, wayPoints: $wayPoints, routeId: $routeId, flags: $flags, comfortTags: $comfortTags)";
  }

  static final struct_factory.StructFactory<MasstransitRouteMetadata> factory =
      const _MasstransitRouteMetadataFactory();
}

/// Contains information about an individual section of a mass transit
/// [MasstransitRoute]. The only fields that are always set are
/// [MasstransitSection.metadata].[MasstransitSectionMetadata.weight],
/// [MasstransitSection.geometry] and
/// [MasstransitSection.metadata].[MasstransitSectionMetadata.data].
abstract final class MasstransitSection implements ffi.Finalizable {
  factory MasstransitSection(
          MasstransitSectionMetadata metadata,
          mapkit_geometry_geometry.Subpolyline geometry,
          core.List<MasstransitRouteStop> stops,
          core.List<mapkit_geometry_geometry.Subpolyline> rideLegs) =>
      MasstransitSectionImpl(metadata, geometry, stops, rideLegs);

  /// General information about a section of a route.
  MasstransitSectionMetadata get metadata;

  /// Geometry of the section as a fragment of a [MasstransitRoute]
  /// polyline.
  mapkit_geometry_geometry.Subpolyline get geometry;

  /// Vector of stops along the route. The first stop in the vector is the
  /// stop for boarding the transport, and the last stop in the vector is
  /// the stop for exiting the transport.
  core.List<MasstransitRouteStop> get stops;

  /// Vector of polylines each connecting two consecutive stops. This
  /// vector is only filled for mass transit ride sections, so this
  /// geometry represents a part of the mass transit thread geometry
  /// between two stops.
  core.List<mapkit_geometry_geometry.Subpolyline> get rideLegs;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([metadata, geometry, stops, rideLegs]);

  @core.override
  core.bool operator ==(covariant MasstransitSection other) {
    if (core.identical(this, other)) {
      return true;
    }
    return metadata == other.metadata &&
        geometry == other.geometry &&
        stops == other.stops &&
        rideLegs == other.rideLegs;
  }

  @core.override
  core.String toString() {
    return "MasstransitSection(metadata: $metadata, geometry: $geometry, stops: $stops, rideLegs: $rideLegs)";
  }
}

/// A listener to monitor changes to traffic jams on the route.
abstract class MasstransitRouteJamsListener {
  /// Triggered when traffic jams are updated.
  void onJamsUpdated(MasstransitRoute route);

  /// Triggered when traffic jams are outdated.
  void onJamsOutdated(MasstransitRoute route);
}

/// Contains information about a route constructed by the mass transit
/// router.
abstract class MasstransitRoute implements ffi.Finalizable {
  /// General route information.
  MasstransitRouteMetadata get metadata;

  /// List of route waypoints. See
  /// [transport_masstransit_way_point.MasstransitWayPoint] for details
  core.List<transport_masstransit_way_point.MasstransitWayPoint> get wayPoints;

  /// Vector of sections of the route.
  core.List<MasstransitSection> get sections;

  /// Polyline of the entire route.
  mapkit_geometry_geometry.Polyline get geometry;

  /// Route URI, which can be used with
  /// [transport_masstransit_masstransit_router.MasstransitRouter] to fetch
  /// additional information about the route or can be bookmarked for
  /// future reference.
  mapkit_uri_uri_object_metadata.UriObjectMetadata get uriMetadata;

  /// Return distance between two polyline positions.
  core.double distanceBetweenPolylinePositions(
      mapkit_geometry_geometry.PolylinePosition from,
      mapkit_geometry_geometry.PolylinePosition to);
}
