import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:ui' as ui;
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

part 'direction_signs.containers.dart';
part 'direction_signs.impl.dart';

enum DrivingDirectionSignImage {
  /// Freeway image
  FreewayImage,

  /// Bridge image
  BridgeImage,

  /// Tunnel image
  TunnelImage,

  /// Ferry image
  FerryImage,

  /// Subway station image
  SubwayStationImage,

  /// Railway station image
  RailwayStationImage,

  /// Airport image
  AirportImage,

  /// Hospital image
  HospitalImage,

  /// Railway crossing image
  RailwayCrossingImage,

  /// Ski slope image
  SkiSlopeImage,

  /// Stadium image
  StadiumImage,

  /// Bridge image for Turkey
  BridgeTrImage,

  /// Subway Station Image for Turkey
  SubwayStationTrImage,

  /// Hospital image as H
  HospitalHImage,

  /// Beach image
  BeachImage,

  /// Burj Khalifa image
  BurjKhalifaImage,

  /// Gas image
  GasImage,

  /// Hotel image
  HotelImage,

  /// Kaaba image
  KaabaImage,

  /// Mall image
  MallImage,

  /// Mosque image
  MosqueImage,

  /// Subway image for UAE
  SubwayUAEImage,

  /// Tram image for UAE
  TramUAEImage,

  /// University image
  UniversityImage,
  ;
}

/// The direction of the manoeuvre on the direction sign.
enum DrivingDirectionSignDirection {
  /// 180 degree turn to the left.
  Left180,

  /// 135 degree turn to the left.
  Left135,

  /// 90 degree turn to the left.
  Left90,

  /// 45 degree turn to the left.
  Left45,

  /// Lane going straight ahead.
  StraightAhead,

  /// 45 degree turn to the right.
  Right45,

  /// 90 degree turn to the right.
  Right90,

  /// 135 degree turn to the right.
  Right135,

  /// 180 degree turn to the right.
  Right180,

  /// Right turn followed by smooth left turn
  LeftFromRight,

  /// Left turn followed by smooth right turn
  RightFromLeft,

  /// A shift to the left in the lane.
  LeftShift,

  /// A shift to the right in the lane.
  RightShift,
  ;
}

final class DrivingDirectionSignStyle {
  /// Text color in RGB format
  final ui.Color textColor;

  /// Background color in RGB format
  final ui.Color bgColor;

  const DrivingDirectionSignStyle(this.textColor, this.bgColor);

  @core.override
  core.int get hashCode => core.Object.hashAll([textColor, bgColor]);

  @core.override
  core.bool operator ==(covariant DrivingDirectionSignStyle other) {
    if (core.identical(this, other)) {
      return true;
    }
    return textColor == other.textColor && bgColor == other.bgColor;
  }

  @core.override
  core.String toString() {
    return "DrivingDirectionSignStyle(textColor: $textColor, bgColor: $bgColor)";
  }
}

final class DrivingDirectionSignToponym {
  final core.String text;
  final DrivingDirectionSignStyle style;

  const DrivingDirectionSignToponym(
    this.style, {
    required this.text,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        text,
        style,
      ]);

  @core.override
  core.bool operator ==(covariant DrivingDirectionSignToponym other) {
    if (core.identical(this, other)) {
      return true;
    }
    return text == other.text && style == other.style;
  }

  @core.override
  core.String toString() {
    return "DrivingDirectionSignToponym(text: $text, style: $style, )";
  }
}

final class DrivingDirectionSignRoad {
  final core.String name;
  final DrivingDirectionSignStyle style;

  const DrivingDirectionSignRoad(
    this.style, {
    required this.name,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        name,
        style,
      ]);

  @core.override
  core.bool operator ==(covariant DrivingDirectionSignRoad other) {
    if (core.identical(this, other)) {
      return true;
    }
    return name == other.name && style == other.style;
  }

  @core.override
  core.String toString() {
    return "DrivingDirectionSignRoad(name: $name, style: $style, )";
  }
}

final class DrivingDirectionSignExit {
  final core.String name;
  final DrivingDirectionSignStyle style;

  const DrivingDirectionSignExit(
    this.style, {
    required this.name,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        name,
        style,
      ]);

  @core.override
  core.bool operator ==(covariant DrivingDirectionSignExit other) {
    if (core.identical(this, other)) {
      return true;
    }
    return name == other.name && style == other.style;
  }

  @core.override
  core.String toString() {
    return "DrivingDirectionSignExit(name: $name, style: $style, )";
  }
}

final class DrivingDirectionSignIcon {
  final DrivingDirectionSignImage image;
  final DrivingDirectionSignStyle style;

  const DrivingDirectionSignIcon(this.image, this.style);

  @core.override
  core.int get hashCode => core.Object.hashAll([image, style]);

  @core.override
  core.bool operator ==(covariant DrivingDirectionSignIcon other) {
    if (core.identical(this, other)) {
      return true;
    }
    return image == other.image && style == other.style;
  }

  @core.override
  core.String toString() {
    return "DrivingDirectionSignIcon(image: $image, style: $style)";
  }
}

final class DrivingDirectionSignItem {
  const DrivingDirectionSignItem.fromDirectionSignToponym(
      DrivingDirectionSignToponym toponym)
      : _value = toponym;

  const DrivingDirectionSignItem.fromDirectionSignRoad(
      DrivingDirectionSignRoad road)
      : _value = road;

  const DrivingDirectionSignItem.fromDirectionSignExit(
      DrivingDirectionSignExit exit)
      : _value = exit;

  const DrivingDirectionSignItem.fromDirectionSignIcon(
      DrivingDirectionSignIcon icon)
      : _value = icon;

  DrivingDirectionSignToponym? asDirectionSignToponym() {
    if (_value is DrivingDirectionSignToponym) {
      return _value;
    }
    return null;
  }

  DrivingDirectionSignRoad? asDirectionSignRoad() {
    if (_value is DrivingDirectionSignRoad) {
      return _value;
    }
    return null;
  }

  DrivingDirectionSignExit? asDirectionSignExit() {
    if (_value is DrivingDirectionSignExit) {
      return _value;
    }
    return null;
  }

  DrivingDirectionSignIcon? asDirectionSignIcon() {
    if (_value is DrivingDirectionSignIcon) {
      return _value;
    }
    return null;
  }

  /// Applies the passed function to the variant value.
  void when({
    required void Function(DrivingDirectionSignToponym value)
        onDirectionSignToponym,
    required void Function(DrivingDirectionSignRoad value) onDirectionSignRoad,
    required void Function(DrivingDirectionSignExit value) onDirectionSignExit,
    required void Function(DrivingDirectionSignIcon value) onDirectionSignIcon,
  }) {
    if (_value is DrivingDirectionSignToponym) {
      return onDirectionSignToponym(_value as DrivingDirectionSignToponym);
    }
    if (_value is DrivingDirectionSignRoad) {
      return onDirectionSignRoad(_value as DrivingDirectionSignRoad);
    }
    if (_value is DrivingDirectionSignExit) {
      return onDirectionSignExit(_value as DrivingDirectionSignExit);
    }
    if (_value is DrivingDirectionSignIcon) {
      return onDirectionSignIcon(_value as DrivingDirectionSignIcon);
    }
    assert(false);
  }

  final core.dynamic _value;
}

/// The sign showing named directions.
abstract final class DrivingDirectionSign implements ffi.Finalizable {
  factory DrivingDirectionSign(
          mapkit_geometry_geometry.PolylinePosition position,
          DrivingDirectionSignDirection? direction,
          core.List<DrivingDirectionSignItem> items) =>
      DrivingDirectionSignImpl(position, direction, items);

  DrivingDirectionSign._();

  /// The position of the sign.
  mapkit_geometry_geometry.PolylinePosition get position;
  DrivingDirectionSignDirection? get direction;
  core.List<DrivingDirectionSignItem> get items;

  @core.override
  core.int get hashCode => core.Object.hashAll([position, direction, items]);

  @core.override
  core.bool operator ==(covariant DrivingDirectionSign other) {
    if (core.identical(this, other)) {
      return true;
    }
    return position == other.position &&
        direction == other.direction &&
        items == other.items;
  }

  @core.override
  core.String toString() {
    return "DrivingDirectionSign(position: $position, direction: $direction, items: $items)";
  }
}
