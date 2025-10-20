import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/mapkit/time.dart' as mapkit_time;
import 'package:yandex_maps_mapkit/src/transport/masstransit/common.dart'
    as transport_masstransit_common;
import 'package:yandex_maps_mapkit/src/transport/masstransit/route.dart'
    as transport_masstransit_route;
import 'package:yandex_maps_mapkit/src/transport/masstransit/travel_estimation.dart'
    as transport_masstransit_travel_estimation;

part 'transport.containers.dart';
part 'transport.impl.dart';

/// TransportThreadAlert are important annotations for mass transit ride
/// sections of routes.

final class MasstransitTransportThreadAlert {
  /// Standard alert text. Simple clients could use this text to get a
  /// pre-formatted message. If the client is unable to recognize the known
  /// structured alert, it should use the text field instead.
  final core.String text;

  /// The value is set if the thread is not operational on that day. Only
  /// one of the values close, closedUntil and lastTrip is set for an
  /// alert.
  ///
  final MasstransitTransportThreadAlertClosed? closed;

  /// The value is set if the thread is not operational until the specified
  /// time. Only one of the values close, closedUntil and lastTrip is set
  /// for an alert.
  ///
  final MasstransitTransportThreadAlertClosedUntil? closedUntil;

  /// The value is set if this trip is the last trip for the thread. Only
  /// one of the values close, closedUntil and lastTrip is set for an
  /// alert.
  ///
  final MasstransitTransportThreadAlertLastTrip? lastTrip;

  const MasstransitTransportThreadAlert({
    required this.text,
    this.closed,
    this.closedUntil,
    this.lastTrip,
  });

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([text, closed, closedUntil, lastTrip]);

  @core.override
  core.bool operator ==(covariant MasstransitTransportThreadAlert other) {
    if (core.identical(this, other)) {
      return true;
    }
    return text == other.text &&
        closed == other.closed &&
        closedUntil == other.closedUntil &&
        lastTrip == other.lastTrip;
  }

  @core.override
  core.String toString() {
    return "MasstransitTransportThreadAlert(text: $text, closed: $closed, closedUntil: $closedUntil, lastTrip: $lastTrip)";
  }
}

/// Thread is not operational on that day.

final class MasstransitTransportThreadAlertClosed {
  /// Dummy field which is used here because IDL does not support structs
  /// without fields.
  final core.bool dummy;

  const MasstransitTransportThreadAlertClosed({
    required this.dummy,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([dummy]);

  @core.override
  core.bool operator ==(covariant MasstransitTransportThreadAlertClosed other) {
    if (core.identical(this, other)) {
      return true;
    }
    return dummy == other.dummy;
  }

  @core.override
  core.String toString() {
    return "MasstransitTransportThreadAlertClosed(dummy: $dummy)";
  }
}

/// Thread is not operational until specified time.

final class MasstransitTransportThreadAlertClosedUntil {
  /// Time of the next trip.
  final mapkit_time.Time time;

  const MasstransitTransportThreadAlertClosedUntil(this.time);

  @core.override
  core.int get hashCode => core.Object.hashAll([time]);

  @core.override
  core.bool operator ==(
      covariant MasstransitTransportThreadAlertClosedUntil other) {
    if (core.identical(this, other)) {
      return true;
    }
    return time == other.time;
  }

  @core.override
  core.String toString() {
    return "MasstransitTransportThreadAlertClosedUntil(time: $time)";
  }
}

/// Last trip for the thread. Allows to get the time it takes to get to
/// the end of the route.

final class MasstransitTransportThreadAlertLastTrip {
  /// Time required to finish the trip.
  final mapkit_time.Time time;

  const MasstransitTransportThreadAlertLastTrip(this.time);

  @core.override
  core.int get hashCode => core.Object.hashAll([time]);

  @core.override
  core.bool operator ==(
      covariant MasstransitTransportThreadAlertLastTrip other) {
    if (core.identical(this, other)) {
      return true;
    }
    return time == other.time;
  }

  @core.override
  core.String toString() {
    return "MasstransitTransportThreadAlertLastTrip(time: $time)";
  }
}

/// Contains information about underground or railway boarding
/// recommendations.
abstract final class MasstransitBoardingOptions implements ffi.Finalizable {
  factory MasstransitBoardingOptions(
          core.List<MasstransitBoardingOptionsBoardingArea> area,
          transport_masstransit_common.MasstransitRailwayOptions
              railwayOptions) =>
      MasstransitBoardingOptionsImpl(area, railwayOptions);

  MasstransitBoardingOptions._();

  /// Vector of recommended areas to board.
  core.List<MasstransitBoardingOptionsBoardingArea> get area;

  /// Options about boarding to trains.
  transport_masstransit_common.MasstransitRailwayOptions get railwayOptions;

  @core.override
  core.int get hashCode => core.Object.hashAll([area, railwayOptions]);

  @core.override
  core.bool operator ==(covariant MasstransitBoardingOptions other) {
    if (core.identical(this, other)) {
      return true;
    }
    return area == other.area && railwayOptions == other.railwayOptions;
  }

  @core.override
  core.String toString() {
    return "MasstransitBoardingOptions(area: $area, railwayOptions: $railwayOptions)";
  }
}

/// Area recommended for boarding: wagon, sector, etc.
abstract final class MasstransitBoardingOptionsBoardingArea
    implements ffi.Finalizable {
  factory MasstransitBoardingOptionsBoardingArea(core.String? id) =>
      MasstransitBoardingOptionsBoardingAreaImpl(id);

  MasstransitBoardingOptionsBoardingArea._();

  /// Machine-readable non-localisable boarding area identifier.
  ///
  core.String? get id;

  @core.override
  core.int get hashCode => core.Object.hashAll([id]);

  @core.override
  core.bool operator ==(
      covariant MasstransitBoardingOptionsBoardingArea other) {
    if (core.identical(this, other)) {
      return true;
    }
    return id == other.id;
  }

  @core.override
  core.String toString() {
    return "MasstransitBoardingOptionsBoardingArea(id: $id)";
  }
}

/// The data about the public transport stop.
abstract final class MasstransitTransportStop implements ffi.Finalizable {
  factory MasstransitTransportStop(
          transport_masstransit_common.MasstransitStop stop,
          mapkit_geometry_point.Point position) =>
      MasstransitTransportStopImpl(stop, position);

  MasstransitTransportStop._();

  /// Information about public transport stops.
  transport_masstransit_common.MasstransitStop get stop;

  /// Coordinates of the stop.
  mapkit_geometry_point.Point get position;

  @core.override
  core.int get hashCode => core.Object.hashAll([stop, position]);

  @core.override
  core.bool operator ==(covariant MasstransitTransportStop other) {
    if (core.identical(this, other)) {
      return true;
    }
    return stop == other.stop && position == other.position;
  }

  @core.override
  core.String toString() {
    return "MasstransitTransportStop(stop: $stop, position: $position)";
  }
}

/// Contains information about the mass transit ride section of a
/// [transport_masstransit_route.MasstransitRoute] for a specific mass
/// transit [transport_masstransit_common.MasstransitLine].
abstract final class MasstransitTransport implements ffi.Finalizable {
  factory MasstransitTransport(
          transport_masstransit_common.MasstransitLine line,
          core.List<MasstransitTransportTransportThread> transports,
          core.List<transport_masstransit_common.MasstransitTransportContour>
              transportContours) =>
      MasstransitTransportImpl(line, transports, transportContours);

  MasstransitTransport._();

  /// Mass transit line.
  transport_masstransit_common.MasstransitLine get line;

  /// Collection of mass transit threads of the specified line suitable for
  /// the constructed route.
  core.List<MasstransitTransportTransportThread> get transports;

  /// Describes [transport_masstransit_common.MasstransitTransportContour]
  /// in borders of which this block is located
  core.List<transport_masstransit_common.MasstransitTransportContour>
      get transportContours;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([line, transports, transportContours]);

  @core.override
  core.bool operator ==(covariant MasstransitTransport other) {
    if (core.identical(this, other)) {
      return true;
    }
    return line == other.line &&
        transports == other.transports &&
        transportContours == other.transportContours;
  }

  @core.override
  core.String toString() {
    return "MasstransitTransport(line: $line, transports: $transports, transportContours: $transportContours)";
  }
}

/// [transport_masstransit_common.MasstransitThread] specific properties
/// of a mass transit ride section of a
/// [transport_masstransit_route.MasstransitRoute].
abstract final class MasstransitTransportTransportThread
    implements ffi.Finalizable {
  factory MasstransitTransportTransportThread(
          transport_masstransit_common.MasstransitThread thread,
          core.bool isRecommended,
          core.List<MasstransitTransportThreadAlert> alerts,
          transport_masstransit_common.MasstransitStop? alternateDepartureStop,
          MasstransitBoardingOptions? boardingOptions,
          transport_masstransit_travel_estimation.MasstransitTravelEstimation?
              estimation,
          core.List<MasstransitTransportStop> stops,
          mapkit_geometry_geometry.Polyline geometry) =>
      MasstransitTransportTransportThreadImpl(thread, isRecommended, alerts,
          alternateDepartureStop, boardingOptions, estimation, stops, geometry);

  MasstransitTransportTransportThread._();

  /// Mass transit thread.
  transport_masstransit_common.MasstransitThread get thread;

  /// Indicates that the mass transit router considers this thread the best
  /// one for the current section of the constucted route.
  core.bool get isRecommended;

  /// Collection of important annotations for the section.
  core.List<MasstransitTransportThreadAlert> get alerts;

  /// If alternateDepartureStop is specified, it specifies the departure
  /// location for this particular Thread instead of the first Stop of the
  /// Section.
  ///
  transport_masstransit_common.MasstransitStop? get alternateDepartureStop;

  /// Recommended underground boarding options for this section.
  ///
  MasstransitBoardingOptions? get boardingOptions;

  /// Time estimation for transport thread.
  ///
  transport_masstransit_travel_estimation.MasstransitTravelEstimation?
      get estimation;

  /// Collection of stops for the section. The first stop in the collection
  /// is the stop for boarding the transport, and the last stop in the
  /// collection is the stop for exiting the transport.
  core.List<MasstransitTransportStop> get stops;

  /// Transport thread geometry.
  mapkit_geometry_geometry.Polyline get geometry;

  @core.override
  core.int get hashCode => core.Object.hashAll([
        thread,
        isRecommended,
        alerts,
        alternateDepartureStop,
        boardingOptions,
        estimation,
        stops,
        geometry
      ]);

  @core.override
  core.bool operator ==(covariant MasstransitTransportTransportThread other) {
    if (core.identical(this, other)) {
      return true;
    }
    return thread == other.thread &&
        isRecommended == other.isRecommended &&
        alerts == other.alerts &&
        alternateDepartureStop == other.alternateDepartureStop &&
        boardingOptions == other.boardingOptions &&
        estimation == other.estimation &&
        stops == other.stops &&
        geometry == other.geometry;
  }

  @core.override
  core.String toString() {
    return "MasstransitTransportTransportThread(thread: $thread, isRecommended: $isRecommended, alerts: $alerts, alternateDepartureStop: $alternateDepartureStop, boardingOptions: $boardingOptions, estimation: $estimation, stops: $stops, geometry: $geometry)";
  }
}
