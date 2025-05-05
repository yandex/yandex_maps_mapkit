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
import 'package:yandex_maps_mapkit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_mapkit/src/mapkit/map/polyline.dart'
    as mapkit_map_polyline;
import 'package:yandex_maps_mapkit/src/mapkit/navigation/jam_style.dart'
    as mapkit_navigation_jam_style;

part 'route_helper.containers.dart';
part 'route_helper.impl.dart';

/// The style that is used to display arrow maneuvers on the map.

final class ArrowManeuverStyle {
  /// Fill color of the arrow.
  final ui.Color fillColor;

  /// Color of the arrow's outline.
  final ui.Color outlineColor;

  /// Width of the arrow's outline in units.
  final core.double outlineWidth;

  /// Overall length of the arrow (including the tip) in units.
  final core.double length;

  /// Height of the arrow tip in units.
  final core.double triangleHeight;

  /// Enables/disables arrow maneuvers.
  final core.bool enabled;

  const ArrowManeuverStyle(
    this.fillColor,
    this.outlineColor, {
    required this.outlineWidth,
    required this.length,
    required this.triangleHeight,
    required this.enabled,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll(
      [fillColor, outlineColor, outlineWidth, length, triangleHeight, enabled]);

  @core.override
  core.bool operator ==(covariant ArrowManeuverStyle other) {
    if (core.identical(this, other)) {
      return true;
    }
    return fillColor == other.fillColor &&
        outlineColor == other.outlineColor &&
        outlineWidth == other.outlineWidth &&
        length == other.length &&
        triangleHeight == other.triangleHeight &&
        enabled == other.enabled;
  }

  @core.override
  core.String toString() {
    return "ArrowManeuverStyle(fillColor: $fillColor, outlineColor: $outlineColor, outlineWidth: $outlineWidth, length: $length, triangleHeight: $triangleHeight, enabled: $enabled)";
  }
}

/// The style that is used to display maneuvers on the map.

final class ManeuverStyle {
  /// Arrow maneuver style.
  final ArrowManeuverStyle arrow;

  const ManeuverStyle(this.arrow);

  @core.override
  core.int get hashCode => core.Object.hashAll([arrow]);

  @core.override
  core.bool operator ==(covariant ManeuverStyle other) {
    if (core.identical(this, other)) {
      return true;
    }
    return arrow == other.arrow;
  }

  @core.override
  core.String toString() {
    return "ManeuverStyle(arrow: $arrow)";
  }
}

class RouteHelper {
  RouteHelper._();

  /// Creates a default traffic style. Default values: colors : Blocked  :
  /// 0x000000ff, Free     : 0x00ff00ff, Hard     : 0xff0000ff, Light    :
  /// 0xffff00ff, Unknown  : 0x909090ff, VeryHard : 0xa00000ff
  static mapkit_navigation_jam_style.JamStyle createDefaultJamStyle() {
    return _createDefaultJamStyle();
  }

  /// Creates a disabled traffic jams style. Colors : Blocked  :
  /// 0x909090ff, Free     : 0x909090ff, Hard     : 0x909090ff, Light    :
  /// 0x909090ff, Unknown  : 0x909090ff, VeryHard : 0x909090ff
  static mapkit_navigation_jam_style.JamStyle createDisabledJamStyle() {
    return _createDisabledJamStyle();
  }

  /// Creates a default maneuver style.
  ///
  /// Default values for ArrowManeuverStyle: fillColor      : 0x000000ff
  /// outlineColor   : 0xffffffff outlineWidth   : 2.f length         : 80
  /// triangleHeight : 16 enabled        : false
  static ManeuverStyle createDefaultManeuverStyle() {
    return _createDefaultManeuverStyle();
  }

  /// Sets a new geometry and colors for a polyline. If style.enabled =
  /// false, the polyline is drawn using the color for the Unknown traffic
  /// jam type. If updateGeometry = false, but route geometry differs from
  /// polyline geometry, then behaviour is undefined.
  static void updatePolyline(
    mapkit_map_polyline.PolylineMapObject polyline,
    directions_driving_route.DrivingRoute route,
    mapkit_navigation_jam_style.JamStyle style, {
    required core.bool updateGeometry,
  }) {
    _updatePolyline(
      polyline,
      route,
      style,
      updateGeometry: updateGeometry,
    );
  }

  /// Add maneuvers from provided route as arrows Behaviour is undefined if
  /// route.geometry does not equals polyline.geometry.
  static void addManeuvers(mapkit_map_polyline.PolylineMapObject polyline,
      directions_driving_route.DrivingRoute route) {
    _addManeuvers(
      polyline,
      route,
    );
  }

  /// Add jams from provided route as stroke colors Behaviour is undefined
  /// if route.geometry does not equals polyline.geometry.
  static void addJams(mapkit_map_polyline.PolylineMapObject polyline,
      directions_driving_route.DrivingRoute route) {
    _addJams(
      polyline,
      route,
    );
  }

  /// Applies the traffic jam style. Updates colors for traffic jam types
  /// provided in the style parameter.
  static void applyJamStyle(mapkit_map_polyline.PolylineMapObject polyline,
      mapkit_navigation_jam_style.JamStyle style) {
    _applyJamStyle(
      polyline,
      style,
    );
  }

  /// Applies a maneuver style. This method should be called every time
  /// after updatePolyline with updateGeometry == true occurs; otherwise,
  /// the default maneuver style is applied.
  static void applyManeuverStyle(
      mapkit_map_polyline.PolylineMapObject polyline, ManeuverStyle style) {
    _applyManeuverStyle(
      polyline,
      style,
    );
  }
}
