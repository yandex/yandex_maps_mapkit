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

/// Describes a public transport thread. A thread is one of the
/// [MasstransitLine] variants. For example, one line can have two
/// threads: direct and return.
abstract final class MasstransitThread extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  factory MasstransitThread(
          core.String id,
          core.List<MasstransitStop> essentialStops,
          core.String? description) =>
      MasstransitThreadImpl(id, essentialStops, description);

  MasstransitThread._();

  /// Thread ID.
  core.String get id;

  /// List of important stops on the thread, such as the first and last
  /// stops.
  core.List<MasstransitStop> get essentialStops;

  /// 'Description' is a specific thread name which must be used in
  /// addition to the corresponding [MasstransitLine] name.
  ///
  /// For example, line "bus 34" has two thread with descriptions: "short"
  /// and "long". To get full thread name you should combine line name and
  /// thread description. After this, you get two threads name: "bus 34
  /// short" and "bus 34 long".
  ///
  core.String? get description;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([id, essentialStops, description]);

  @core.override
  core.bool operator ==(covariant MasstransitThread other) {
    if (core.identical(this, other)) {
      return true;
    }
    return id == other.id &&
        essentialStops == other.essentialStops &&
        description == other.description;
  }

  @core.override
  core.String toString() {
    return "MasstransitThread(id: $id, essentialStops: $essentialStops, description: $description)";
  }

  static final struct_factory.StructFactory<MasstransitThread> factory =
      const _MasstransitThreadFactory();
}
