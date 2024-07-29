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
import 'package:yandex_maps_mapkit/src/mapkit/time.dart' as mapkit_time;
import 'package:yandex_maps_mapkit/src/transport/masstransit/common.dart'
    as transport_masstransit_common;
import 'package:yandex_maps_mapkit/src/transport/masstransit/route.dart'
    as transport_masstransit_route;

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

/// Contains information about underground boarding recommendations.
abstract final class MasstransitBoardingOptions implements ffi.Finalizable {
  factory MasstransitBoardingOptions(
          core.List<MasstransitBoardingOptionsBoardingArea> area) =>
      MasstransitBoardingOptionsImpl(area);

  /// Vector of recommended areas to board.
  core.List<MasstransitBoardingOptionsBoardingArea> get area;

  @core.override
  core.int get hashCode => core.Object.hashAll([area]);

  @core.override
  core.bool operator ==(covariant MasstransitBoardingOptions other) {
    if (core.identical(this, other)) {
      return true;
    }
    return area == other.area;
  }

  @core.override
  core.String toString() {
    return "MasstransitBoardingOptions(area: $area)";
  }
}

/// Area recommended for boarding: wagon, sector, etc.
abstract final class MasstransitBoardingOptionsBoardingArea
    implements ffi.Finalizable {
  factory MasstransitBoardingOptionsBoardingArea(core.String? id) =>
      MasstransitBoardingOptionsBoardingAreaImpl(id);

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
          MasstransitBoardingOptions? boardingOptions) =>
      MasstransitTransportTransportThreadImpl(thread, isRecommended, alerts,
          alternateDepartureStop, boardingOptions);

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

  @core.override
  core.int get hashCode => core.Object.hashAll(
      [thread, isRecommended, alerts, alternateDepartureStop, boardingOptions]);

  @core.override
  core.bool operator ==(covariant MasstransitTransportTransportThread other) {
    if (core.identical(this, other)) {
      return true;
    }
    return thread == other.thread &&
        isRecommended == other.isRecommended &&
        alerts == other.alerts &&
        alternateDepartureStop == other.alternateDepartureStop &&
        boardingOptions == other.boardingOptions;
  }

  @core.override
  core.String toString() {
    return "MasstransitTransportTransportThread(thread: $thread, isRecommended: $isRecommended, alerts: $alerts, alternateDepartureStop: $alternateDepartureStop, boardingOptions: $boardingOptions)";
  }
}
