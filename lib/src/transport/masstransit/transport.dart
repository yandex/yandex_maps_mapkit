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

part 'transport.containers.dart';
part 'transport.impl.dart';

final class MasstransitTransportThreadAlert {
  final core.String text;
  final MasstransitTransportThreadAlertClosed? closed;
  final MasstransitTransportThreadAlertClosedUntil? closedUntil;
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

final class MasstransitTransportThreadAlertClosed {
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

final class MasstransitTransportThreadAlertClosedUntil {
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

final class MasstransitTransportThreadAlertLastTrip {
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

abstract final class MasstransitBoardingOptions implements ffi.Finalizable {
  factory MasstransitBoardingOptions(
          core.List<MasstransitBoardingOptionsBoardingArea> area) =>
      MasstransitBoardingOptionsImpl(area);

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

abstract final class MasstransitBoardingOptionsBoardingArea
    implements ffi.Finalizable {
  factory MasstransitBoardingOptionsBoardingArea(core.String? id) =>
      MasstransitBoardingOptionsBoardingAreaImpl(id);

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

abstract final class MasstransitTransport implements ffi.Finalizable {
  factory MasstransitTransport(
          transport_masstransit_common.MasstransitLine line,
          core.List<MasstransitTransportTransportThread> transports,
          core.List<transport_masstransit_common.MasstransitTransportContour>
              transportContours) =>
      MasstransitTransportImpl(line, transports, transportContours);

  transport_masstransit_common.MasstransitLine get line;
  core.List<MasstransitTransportTransportThread> get transports;
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

  transport_masstransit_common.MasstransitThread get thread;
  core.bool get isRecommended;
  core.List<MasstransitTransportThreadAlert> get alerts;
  transport_masstransit_common.MasstransitStop? get alternateDepartureStop;
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
