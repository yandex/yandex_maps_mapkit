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
import 'package:yandex_maps_mapkit/src/transport/masstransit/construction.dart'
    as transport_masstransit_construction;
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

final class MasstransitWait {
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

final class MasstransitConstructionMask {
  final MasstransitConstructionMaskStairs? stairs;
  final MasstransitConstructionMaskPass? pass;
  final core.bool crosswalk;
  final core.bool binding;
  final core.bool transition;
  final core.bool travolator;
  final core.bool indoor;

  const MasstransitConstructionMask({
    this.stairs,
    this.pass,
    required this.crosswalk,
    required this.binding,
    required this.transition,
    required this.travolator,
    required this.indoor,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll(
      [stairs, pass, crosswalk, binding, transition, travolator, indoor]);

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
        travolator == other.travolator &&
        indoor == other.indoor;
  }

  @core.override
  core.String toString() {
    return "MasstransitConstructionMask(stairs: $stairs, pass: $pass, crosswalk: $crosswalk, binding: $binding, transition: $transition, travolator: $travolator, indoor: $indoor)";
  }
}

enum MasstransitConstructionMaskStairs {
  /// Stairway with no information whether stairs go up or down along a
  /// pedestrian path.
  Unknown,

  /// Stairway with stairs going up along a pedestrian path.
  Up,

  /// Stairway with stairs going down along a pedestrian path.
  Down,
  ;
}

enum MasstransitConstructionMaskPass {
  /// Underground crossing.
  Under,

  /// Overground crossing, such as a bridge.
  Over,
  ;
}

final class MasstransitConstructionSegment {
  final transport_masstransit_construction.MasstransitConstructionID
      construction;
  final mapkit_geometry_geometry.Subpolyline subpolyline;
  final MasstransitConstructionMask constructionMask;

  const MasstransitConstructionSegment(
      this.construction, this.subpolyline, this.constructionMask);

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([construction, subpolyline, constructionMask]);

  @core.override
  core.bool operator ==(covariant MasstransitConstructionSegment other) {
    if (core.identical(this, other)) {
      return true;
    }
    return construction == other.construction &&
        subpolyline == other.subpolyline &&
        constructionMask == other.constructionMask;
  }

  @core.override
  core.String toString() {
    return "MasstransitConstructionSegment(construction: $construction, subpolyline: $subpolyline, constructionMask: $constructionMask)";
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

final class MasstransitInclineSection {
  final MasstransitInclineType type;
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

abstract final class MasstransitElevationData implements ffi.Finalizable {
  factory MasstransitElevationData(
          mapkit_localized_value.LocalizedValue totalAscent,
          mapkit_localized_value.LocalizedValue totalDescent,
          mapkit_localized_value.LocalizedValue? steps,
          mapkit_localized_value.LocalizedValue kilocalories,
          core.List<MasstransitInclineSection> inclineSections,
          core.List<core.double?> elevationSegments) =>
      MasstransitElevationDataImpl(totalAscent, totalDescent, steps,
          kilocalories, inclineSections, elevationSegments);

  mapkit_localized_value.LocalizedValue get totalAscent;
  mapkit_localized_value.LocalizedValue get totalDescent;
  mapkit_localized_value.LocalizedValue? get steps;
  mapkit_localized_value.LocalizedValue get kilocalories;
  core.List<MasstransitInclineSection> get inclineSections;
  core.List<core.double?> get elevationSegments;

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
  core.List<MasstransitConstructionSegment> get constructions;
  core.List<transport_masstransit_restricted_entry.MasstransitRestrictedEntry>
      get restrictedEntries;
  core.List<mapkit_geometry_geometry.PolylinePosition> get viaPoints;
  core.List<transport_masstransit_annotation.MasstransitAnnotation>
      get annotations;
  core.List<MasstransitTrafficTypeSegment> get trafficTypes;
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

abstract final class MasstransitRouteStopMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory MasstransitRouteStopMetadata(
          transport_masstransit_common.MasstransitStop stop,
          transport_masstransit_common.MasstransitStop? stopExit,
          mapkit_geometry_point.Point? exitPoint) =>
      MasstransitRouteStopMetadataImpl(stop, stopExit, exitPoint);

  transport_masstransit_common.MasstransitStop get stop;
  transport_masstransit_common.MasstransitStop? get stopExit;
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

abstract final class MasstransitRouteStop implements ffi.Finalizable {
  factory MasstransitRouteStop(MasstransitRouteStopMetadata metadata,
          mapkit_geometry_point.Point position) =>
      MasstransitRouteStopImpl(metadata, position);

  MasstransitRouteStopMetadata get metadata;
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

abstract final class MasstransitTransferStop implements ffi.Finalizable {
  factory MasstransitTransferStop(
          MasstransitRouteStop routeStop,
          core.List<transport_masstransit_transport.MasstransitTransport>
              transports) =>
      MasstransitTransferStopImpl(routeStop, transports);

  MasstransitRouteStop get routeStop;
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

abstract final class MasstransitTransfer implements ffi.Finalizable {
  factory MasstransitTransfer(
          core.List<MasstransitConstructionSegment> constructions,
          MasstransitTransferStop transferStop) =>
      MasstransitTransferImpl(constructions, transferStop);

  core.List<MasstransitConstructionSegment> get constructions;
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

abstract final class MasstransitTaxi implements ffi.Finalizable {
  factory MasstransitTaxi(
          core.List<mapkit_navigation_jam_segment.JamSegment> jamSegments) =>
      MasstransitTaxiImpl(jamSegments);

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

abstract final class MasstransitSectionMetadata implements ffi.Finalizable {
  factory MasstransitSectionMetadata(
          transport_masstransit_weight.MasstransitWeight weight,
          MasstransitSectionMetadataSectionData data,
          transport_masstransit_travel_estimation.MasstransitTravelEstimation?
              estimation,
          core.int legIndex) =>
      MasstransitSectionMetadataImpl(weight, data, estimation, legIndex);

  transport_masstransit_weight.MasstransitWeight get weight;
  MasstransitSectionMetadataSectionData get data;
  transport_masstransit_travel_estimation.MasstransitTravelEstimation?
      get estimation;
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

abstract final class MasstransitRouteSettings implements ffi.Finalizable {
  factory MasstransitRouteSettings(core.List<core.String> avoidTypes,
          core.List<core.String> acceptTypes) =>
      MasstransitRouteSettingsImpl(avoidTypes, acceptTypes);

  core.List<core.String> get avoidTypes;
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

  transport_masstransit_weight.MasstransitWeight get weight;
  MasstransitRouteSettings? get settings;
  transport_masstransit_travel_estimation.MasstransitTravelEstimation?
      get estimation;
  core.List<transport_masstransit_way_point.MasstransitWayPoint> get wayPoints;
  core.String? get routeId;
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

abstract final class MasstransitSection implements ffi.Finalizable {
  factory MasstransitSection(
          MasstransitSectionMetadata metadata,
          mapkit_geometry_geometry.Subpolyline geometry,
          core.List<MasstransitRouteStop> stops,
          core.List<mapkit_geometry_geometry.Subpolyline> rideLegs) =>
      MasstransitSectionImpl(metadata, geometry, stops, rideLegs);

  MasstransitSectionMetadata get metadata;
  mapkit_geometry_geometry.Subpolyline get geometry;
  core.List<MasstransitRouteStop> get stops;
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
