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
import 'package:yandex_maps_mapkit/src/bindings/common/struct_factory.dart'
    as struct_factory;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;

part 'common.containers.dart';
part 'common.impl.dart';

/// Describes various features a stop can have.

final class MasstransitStopFeatureMask {
  /// The stop is cooled at hot weather conditions.
  final core.bool cooled;

  /// The stop is heated at cold weather conditions.
  final core.bool heated;

  const MasstransitStopFeatureMask({
    required this.cooled,
    required this.heated,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([cooled, heated]);

  @core.override
  core.bool operator ==(covariant MasstransitStopFeatureMask other) {
    if (core.identical(this, other)) {
      return true;
    }
    return cooled == other.cooled && heated == other.heated;
  }

  @core.override
  core.String toString() {
    return "MasstransitStopFeatureMask(cooled: $cooled, heated: $heated)";
  }
}

/// Describes transport contours and it's properties
abstract final class MasstransitTransportContour implements ffi.Finalizable {
  factory MasstransitTransportContour(
          core.String name, MasstransitTransportContourStyle? style) =>
      MasstransitTransportContourImpl(name, style);

  MasstransitTransportContour._();

  /// Contour name
  core.String get name;

  /// Contour style; see [MasstransitTransportContourStyle].
  ///
  MasstransitTransportContourStyle? get style;

  @core.override
  core.int get hashCode => core.Object.hashAll([name, style]);

  @core.override
  core.bool operator ==(covariant MasstransitTransportContour other) {
    if (core.identical(this, other)) {
      return true;
    }
    return name == other.name && style == other.style;
  }

  @core.override
  core.String toString() {
    return "MasstransitTransportContour(name: $name, style: $style)";
  }
}

/// Describes the style of transport contour objects

final class MasstransitTransportContourStyle {
  /// Describes the main color of transport contour. Main color is used to
  /// identify the object among others. For example, the color of MCD line
  /// icon meant to be the main color of the contour. Presented in versions
  /// for light and dark themes.
  ///
  final core.int? mainColor;
  final core.int? mainColorNight;

  const MasstransitTransportContourStyle({
    this.mainColor,
    this.mainColorNight,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([mainColor, mainColorNight]);

  @core.override
  core.bool operator ==(covariant MasstransitTransportContourStyle other) {
    if (core.identical(this, other)) {
      return true;
    }
    return mainColor == other.mainColor &&
        mainColorNight == other.mainColorNight;
  }

  @core.override
  core.String toString() {
    return "MasstransitTransportContourStyle(mainColor: $mainColor, mainColorNight: $mainColorNight)";
  }
}

/// Describes a public transport stop.
abstract final class MasstransitStop extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  factory MasstransitStop(
          core.String id,
          core.String name,
          core.String? additionalName,
          MasstransitStopFeatureMask? features,
          core.List<MasstransitTransportContour> transportContours) =>
      MasstransitStopImpl(
          id, name, additionalName, features, transportContours);

  MasstransitStop._();

  /// Stop ID.
  core.String get id;

  /// Stop name.
  core.String get name;

  /// Additional stop name. Can be a local number or specifying index.
  /// Similar to thread description, but for stops
  ///
  core.String? get additionalName;

  /// Additional stop features.
  ///
  MasstransitStopFeatureMask? get features;

  /// Describes transport contours represented at this Stop.
  core.List<MasstransitTransportContour> get transportContours;

  @core.override
  core.int get hashCode => core.Object.hashAll(
      [id, name, additionalName, features, transportContours]);

  @core.override
  core.bool operator ==(covariant MasstransitStop other) {
    if (core.identical(this, other)) {
      return true;
    }
    return id == other.id &&
        name == other.name &&
        additionalName == other.additionalName &&
        features == other.features &&
        transportContours == other.transportContours;
  }

  @core.override
  core.String toString() {
    return "MasstransitStop(id: $id, name: $name, additionalName: $additionalName, features: $features, transportContours: $transportContours)";
  }

  static final struct_factory.StructFactory<MasstransitStop> factory =
      const _MasstransitStopFactory();
}

/// Transport types
enum MasstransitTransportType {
  Unknown,
  Bus,
  Minibus,
  Railway,
  Suburban,
  Tram,
  Trolleybus,
  Underground,
  Water,
  ;
}

/// Describes a public transport line.
abstract final class MasstransitLine extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  factory MasstransitLine(
          core.String id,
          core.String name,
          core.List<core.String> vehicleTypes,
          MasstransitLineStyle? style,
          core.bool isNight,
          core.String? uri,
          core.String? shortName,
          core.String? transportSystemId) =>
      MasstransitLineImpl(id, name, vehicleTypes, style, isNight, uri,
          shortName, transportSystemId);

  MasstransitLine._();

  /// Line ID.
  core.String get id;

  /// Line name.
  core.String get name;

  /// List of line types. Starts from the most detailed, ends with the most
  /// general.
  core.List<core.String> get vehicleTypes;

  /// Line style; see [MasstransitLineStyle].
  ///
  MasstransitLineStyle? get style;

  /// True if the line operates only at night.
  core.bool get isNight;

  /// URI for a line.
  ///
  core.String? get uri;

  /// Subway short line name.
  ///
  core.String? get shortName;

  /// Subway transport system ID.
  ///
  core.String? get transportSystemId;

  @core.override
  core.int get hashCode => core.Object.hashAll([
        id,
        name,
        vehicleTypes,
        style,
        isNight,
        uri,
        shortName,
        transportSystemId
      ]);

  @core.override
  core.bool operator ==(covariant MasstransitLine other) {
    if (core.identical(this, other)) {
      return true;
    }
    return id == other.id &&
        name == other.name &&
        vehicleTypes == other.vehicleTypes &&
        style == other.style &&
        isNight == other.isNight &&
        uri == other.uri &&
        shortName == other.shortName &&
        transportSystemId == other.transportSystemId;
  }

  @core.override
  core.String toString() {
    return "MasstransitLine(id: $id, name: $name, vehicleTypes: $vehicleTypes, style: $style, isNight: $isNight, uri: $uri, shortName: $shortName, transportSystemId: $transportSystemId)";
  }

  static final struct_factory.StructFactory<MasstransitLine> factory =
      const _MasstransitLineFactory();
}

/// Describes the style of line.

final class MasstransitLineStyle {
  /// Line color in #RRGGBB format.
  ///
  final core.int? color;

  const MasstransitLineStyle({
    this.color,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([color]);

  @core.override
  core.bool operator ==(covariant MasstransitLineStyle other) {
    if (core.identical(this, other)) {
      return true;
    }
    return color == other.color;
  }

  @core.override
  core.String toString() {
    return "MasstransitLineStyle(color: $color)";
  }
}

enum MasstransitThreadCategory {
  /// Primary thread
  Primary,

  /// Secondary thread
  Secondary,

  /// Temporary thread
  Temporary,

  /// Thread going to depot
  ToDepot,
  ;
}

/// Info for essential stop

final class MasstransitEssentialStopInfo {
  /// First stop on thread
  final core.bool first_stop;

  /// Intermediate terminus stop on thread
  final core.bool intermediate_terminus;

  /// Important stop on thread
  final core.bool important;

  /// Last stop on thread
  final core.bool last_stop;

  const MasstransitEssentialStopInfo({
    this.first_stop = false,
    this.intermediate_terminus = false,
    this.important = false,
    this.last_stop = false,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll(
      [first_stop, intermediate_terminus, important, last_stop]);

  @core.override
  core.bool operator ==(covariant MasstransitEssentialStopInfo other) {
    if (core.identical(this, other)) {
      return true;
    }
    return first_stop == other.first_stop &&
        intermediate_terminus == other.intermediate_terminus &&
        important == other.important &&
        last_stop == other.last_stop;
  }

  @core.override
  core.String toString() {
    return "MasstransitEssentialStopInfo(first_stop: $first_stop, intermediate_terminus: $intermediate_terminus, important: $important, last_stop: $last_stop)";
  }
}

/// Essential stop on thread
abstract final class MasstransitEssentialStop implements ffi.Finalizable {
  factory MasstransitEssentialStop(
          MasstransitStop stop, MasstransitEssentialStopInfo info) =>
      MasstransitEssentialStopImpl(stop, info);

  MasstransitEssentialStop._();

  /// Stop on the thread
  MasstransitStop get stop;

  /// Info for stop [MasstransitEssentialStopInfo].
  MasstransitEssentialStopInfo get info;

  @core.override
  core.int get hashCode => core.Object.hashAll([stop, info]);

  @core.override
  core.bool operator ==(covariant MasstransitEssentialStop other) {
    if (core.identical(this, other)) {
      return true;
    }
    return stop == other.stop && info == other.info;
  }

  @core.override
  core.String toString() {
    return "MasstransitEssentialStop(stop: $stop, info: $info)";
  }
}

/// Describes a public transport thread. A thread is one of the
/// [MasstransitLine] variants. For example, one line can have two
/// threads: direct and return.
abstract final class MasstransitThread extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  factory MasstransitThread(
          core.String id,
          core.List<MasstransitEssentialStop> essentialStops,
          core.String? description,
          core.List<MasstransitThreadCategory> category,
          core.String? comfortClass) =>
      MasstransitThreadImpl(
          id, essentialStops, description, category, comfortClass);

  MasstransitThread._();

  /// Thread ID.
  core.String get id;

  /// List of important stops on the thread, such as the first and last
  /// stops.
  core.List<MasstransitEssentialStop> get essentialStops;

  /// 'Description' is a specific thread name which must be used in
  /// addition to the corresponding [MasstransitLine] name.
  ///
  /// For example, line "bus 34" has two thread with descriptions: "short"
  /// and "long". To get full thread name you should combine line name and
  /// thread description. After this, you get two threads name: "bus 34
  /// short" and "bus 34 long".
  ///
  core.String? get description;

  /// List of categories describing important traits of the thread. For
  /// example, "primary", "secondary", "to_depot"
  core.List<MasstransitThreadCategory> get category;

  /// Comfort class of transport, e.g. "Standart plus", "Lastochka" for
  /// trains.
  ///
  core.String? get comfortClass;

  @core.override
  core.int get hashCode => core.Object.hashAll(
      [id, essentialStops, description, category, comfortClass]);

  @core.override
  core.bool operator ==(covariant MasstransitThread other) {
    if (core.identical(this, other)) {
      return true;
    }
    return id == other.id &&
        essentialStops == other.essentialStops &&
        description == other.description &&
        category == other.category &&
        comfortClass == other.comfortClass;
  }

  @core.override
  core.String toString() {
    return "MasstransitThread(id: $id, essentialStops: $essentialStops, description: $description, category: $category, comfortClass: $comfortClass)";
  }

  static final struct_factory.StructFactory<MasstransitThread> factory =
      const _MasstransitThreadFactory();
}

/// Contains information about boarding to trains.
abstract final class MasstransitRailwayOptions implements ffi.Finalizable {
  factory MasstransitRailwayOptions(core.String? boardingTrack,
          core.String? boardingPlatform, core.bool uncertain) =>
      MasstransitRailwayOptionsImpl(boardingTrack, boardingPlatform, uncertain);

  MasstransitRailwayOptions._();

  /// Departure track annotation, e.g. "3 or 4 track".
  ///
  core.String? get boardingTrack;

  /// Departure platform annotation, e.g. "2 platform".
  ///
  core.String? get boardingPlatform;

  /// Flag of track/platform selection uncertainty to suggest user
  /// double-check it in the station.
  core.bool get uncertain;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([boardingTrack, boardingPlatform, uncertain]);

  @core.override
  core.bool operator ==(covariant MasstransitRailwayOptions other) {
    if (core.identical(this, other)) {
      return true;
    }
    return boardingTrack == other.boardingTrack &&
        boardingPlatform == other.boardingPlatform &&
        uncertain == other.uncertain;
  }

  @core.override
  core.String toString() {
    return "MasstransitRailwayOptions(boardingTrack: $boardingTrack, boardingPlatform: $boardingPlatform, uncertain: $uncertain)";
  }
}
