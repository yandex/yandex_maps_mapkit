import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:ui' as ui;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
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

/// @nodoc
final class ArrowManeuverStyleNative extends ffi.Struct {
  external native_types.NativeColor fillColor;
  external native_types.NativeColor outlineColor;
  @ffi.Float()
  external core.double outlineWidth;
  @ffi.Float()
  external core.double length;
  @ffi.Float()
  external core.double triangleHeight;
  @ffi.Bool()
  external core.bool enabled;
}

final ArrowManeuverStyleNative Function(
        native_types.NativeColor,
        native_types.NativeColor,
        core.double,
        core.double,
        core.double,
        core.bool) _ArrowManeuverStyleNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ArrowManeuverStyleNative Function(
                        native_types.NativeColor,
                        native_types.NativeColor,
                        ffi.Float,
                        ffi.Float,
                        ffi.Float,
                        ffi.Bool)>>(
            'yandex_flutter_directions_driving_ArrowManeuverStyle_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'ArrowManeuverStyle.toPointer',
    toPlatform: '(val) => ArrowManeuverStyle.fromPointer(val, needFree: false)')
class ArrowManeuverStyle {
  final ui.Color fillColor;
  final ui.Color outlineColor;
  final core.double outlineWidth;
  final core.double length;
  final core.double triangleHeight;
  final core.bool enabled;

  const ArrowManeuverStyle(
    this.fillColor,
    this.outlineColor, {
    required this.outlineWidth,
    required this.length,
    required this.triangleHeight,
    required this.enabled,
  });

  /// @nodoc
  @internal
  ArrowManeuverStyle.fromNative(ArrowManeuverStyleNative native)
      : this(to_platform.toPlatformColor(native.fillColor),
            to_platform.toPlatformColor(native.outlineColor),
            outlineWidth: native.outlineWidth,
            length: native.length,
            triangleHeight: native.triangleHeight,
            enabled: native.enabled);

  /// @nodoc
  @internal
  static ArrowManeuverStyleNative toNative(ArrowManeuverStyle c) {
    return _ArrowManeuverStyleNativeInit(
        to_native.toNativeColor(c.fillColor),
        to_native.toNativeColor(c.outlineColor),
        c.outlineWidth,
        c.length,
        c.triangleHeight,
        c.enabled);
  }

  /// @nodoc
  @internal
  static ArrowManeuverStyle? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        ArrowManeuverStyle.fromNative(ptr.cast<ArrowManeuverStyleNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(ArrowManeuverStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ArrowManeuverStyleNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// Polygon maneuver render mode.
@bindings_annotations.ContainerData(
    toNative: 'PolygonManeuverRenderMode.toPointer',
    toPlatform:
        '(val) => PolygonManeuverRenderMode.fromPointer(val, needFree: false)')
enum PolygonManeuverRenderMode {
  /// Polygon maneuver is colored as jams, trajectory is rendered with
  /// color specified in style.
  ColoredPolygon,

  /// Trajectory is colored as jams, polygon maneuver is filled with
  /// colored specified in style.
  ColoredTrajectory,
  ;

  /// @nodoc
  @internal
  static PolygonManeuverRenderMode fromInt(core.int val) {
    return PolygonManeuverRenderMode.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(PolygonManeuverRenderMode e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static PolygonManeuverRenderMode? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(PolygonManeuverRenderMode? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class PolygonManeuverStyleNative extends ffi.Struct {
  @ffi.Float()
  external core.double trajectoryWidth;
  external native_types.NativeColor trajectoryColor;
  @ffi.Float()
  external core.double polygonAlpha;
  external native_types.NativeColor polygonColor;
  @ffi.Int64()
  external core.int renderMode;
  @ffi.Float()
  external core.double fadeDistance;
  @ffi.Float()
  external core.double fadeAlpha;
  @ffi.Bool()
  external core.bool enabled;
}

final PolygonManeuverStyleNative Function(
        core.double,
        native_types.NativeColor,
        core.double,
        native_types.NativeColor,
        core.int,
        core.double,
        core.double,
        core.bool) _PolygonManeuverStyleNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    PolygonManeuverStyleNative Function(
                        ffi.Float,
                        native_types.NativeColor,
                        ffi.Float,
                        native_types.NativeColor,
                        ffi.Int64,
                        ffi.Float,
                        ffi.Float,
                        ffi.Bool)>>(
            'yandex_flutter_directions_driving_PolygonManeuverStyle_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'PolygonManeuverStyle.toPointer',
    toPlatform:
        '(val) => PolygonManeuverStyle.fromPointer(val, needFree: false)')
class PolygonManeuverStyle {
  final core.double trajectoryWidth;
  final ui.Color trajectoryColor;
  final core.double polygonAlpha;
  final ui.Color polygonColor;
  final PolygonManeuverRenderMode renderMode;
  final core.double fadeDistance;
  final core.double fadeAlpha;
  final core.bool enabled;

  const PolygonManeuverStyle(
    this.trajectoryColor,
    this.polygonColor,
    this.renderMode, {
    required this.trajectoryWidth,
    required this.polygonAlpha,
    required this.fadeDistance,
    required this.fadeAlpha,
    required this.enabled,
  });

  /// @nodoc
  @internal
  PolygonManeuverStyle.fromNative(PolygonManeuverStyleNative native)
      : this(
            trajectoryWidth: native.trajectoryWidth,
            to_platform.toPlatformColor(native.trajectoryColor),
            polygonAlpha: native.polygonAlpha,
            to_platform.toPlatformColor(native.polygonColor),
            PolygonManeuverRenderMode.fromInt(native.renderMode),
            fadeDistance: native.fadeDistance,
            fadeAlpha: native.fadeAlpha,
            enabled: native.enabled);

  /// @nodoc
  @internal
  static PolygonManeuverStyleNative toNative(PolygonManeuverStyle c) {
    return _PolygonManeuverStyleNativeInit(
        c.trajectoryWidth,
        to_native.toNativeColor(c.trajectoryColor),
        c.polygonAlpha,
        to_native.toNativeColor(c.polygonColor),
        PolygonManeuverRenderMode.toInt(c.renderMode),
        c.fadeDistance,
        c.fadeAlpha,
        c.enabled);
  }

  /// @nodoc
  @internal
  static PolygonManeuverStyle? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = PolygonManeuverStyle.fromNative(
        ptr.cast<PolygonManeuverStyleNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(PolygonManeuverStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<PolygonManeuverStyleNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class ManeuverStyleNative extends ffi.Struct {
  external ArrowManeuverStyleNative arrow;
  external PolygonManeuverStyleNative polygon;
}

final ManeuverStyleNative Function(
        ArrowManeuverStyleNative, PolygonManeuverStyleNative)
    _ManeuverStyleNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    ManeuverStyleNative Function(
                        ArrowManeuverStyleNative, PolygonManeuverStyleNative)>>(
            'yandex_flutter_directions_driving_ManeuverStyle_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'ManeuverStyle.toPointer',
    toPlatform: '(val) => ManeuverStyle.fromPointer(val, needFree: false)')
class ManeuverStyle {
  final ArrowManeuverStyle arrow;
  final PolygonManeuverStyle polygon;

  const ManeuverStyle(this.arrow, this.polygon);

  /// @nodoc
  @internal
  ManeuverStyle.fromNative(ManeuverStyleNative native)
      : this(ArrowManeuverStyle.fromNative(native.arrow),
            PolygonManeuverStyle.fromNative(native.polygon));

  /// @nodoc
  @internal
  static ManeuverStyleNative toNative(ManeuverStyle c) {
    return _ManeuverStyleNativeInit(ArrowManeuverStyle.toNative(c.arrow),
        PolygonManeuverStyle.toNative(c.polygon));
  }

  /// @nodoc
  @internal
  static ManeuverStyle? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        ManeuverStyle.fromNative(ptr.cast<ManeuverStyleNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(ManeuverStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ManeuverStyleNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

class RouteHelper {
  RouteHelper._();

  /// Creates a default traffic style. Default values: colors : Blocked  :
  /// 0x000000ff, Free     : 0x00ff00ff, Hard     : 0xff0000ff, Light    :
  /// 0xffff00ff, Unknown  : 0x909090ff, VeryHard : 0xa00000ff
  static mapkit_navigation_jam_style.JamStyle createDefaultJamStyle() {
    return mapkit_navigation_jam_style.JamStyle.fromNativePtr(
        _RouteHelper_createDefaultJamStyle());
  }

  /// Creates a disabled traffic jams style. Colors : Blocked  :
  /// 0x909090ff, Free     : 0x909090ff, Hard     : 0x909090ff, Light    :
  /// 0x909090ff, Unknown  : 0x909090ff, VeryHard : 0x909090ff
  static mapkit_navigation_jam_style.JamStyle createDisabledJamStyle() {
    return mapkit_navigation_jam_style.JamStyle.fromNativePtr(
        _RouteHelper_createDisabledJamStyle());
  }

  /// Creates a default maneuver style.
  ///
  /// Default values for ArrowManeuverStyle: fillColor      : 0x000000ff
  /// outlineColor   : 0xffffffff outlineWidth   : 2.f length         : 80
  /// triangleHeight : 16 enabled        : false
  ///
  /// Default values for PolygonManeuverStyle: trajectoryWidth : 5.f
  /// trajectoryColor : 0xffffffff polygonAlpha    : 60.f / 255.f
  /// polygonColor    : 0xff00ffff renderMode      : ColoredPolygon
  /// fadeDistance    : 10.f fadeAlpha       : 0.f enabled         : false
  static ManeuverStyle createDefaultManeuverStyle() {
    return ManeuverStyle.fromNative(_RouteHelper_createDefaultManeuverStyle());
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
    _RouteHelper_updatePolyline(
        mapkit_map_polyline.PolylineMapObject.getNativePtr(polyline),
        directions_driving_route.DrivingRoute.getNativePtr(route),
        mapkit_navigation_jam_style.JamStyle.getNativePtr(style),
        updateGeometry);
  }

  /// Add maneuvers from provided route as arrows Behaviour is undefined if
  /// route.geometry does not equals polyline.geometry.
  static void addManeuvers(mapkit_map_polyline.PolylineMapObject polyline,
      directions_driving_route.DrivingRoute route) {
    _RouteHelper_addManeuvers(
        mapkit_map_polyline.PolylineMapObject.getNativePtr(polyline),
        directions_driving_route.DrivingRoute.getNativePtr(route));
  }

  /// Add jams from provided route as stroke colors Behaviour is undefined
  /// if route.geometry does not equals polyline.geometry.
  static void addJams(mapkit_map_polyline.PolylineMapObject polyline,
      directions_driving_route.DrivingRoute route) {
    _RouteHelper_addJams(
        mapkit_map_polyline.PolylineMapObject.getNativePtr(polyline),
        directions_driving_route.DrivingRoute.getNativePtr(route));
  }

  /// Applies the traffic jam style. Updates colors for traffic jam types
  /// provided in the style parameter.
  static void applyJamStyle(mapkit_map_polyline.PolylineMapObject polyline,
      mapkit_navigation_jam_style.JamStyle style) {
    _RouteHelper_applyJamStyle(
        mapkit_map_polyline.PolylineMapObject.getNativePtr(polyline),
        mapkit_navigation_jam_style.JamStyle.getNativePtr(style));
  }

  /// Applies a maneuver style. This method should be called every time
  /// after updatePolyline with updateGeometry == true occurs; otherwise,
  /// the default maneuver style is applied.
  static void applyManeuverStyle(
      mapkit_map_polyline.PolylineMapObject polyline, ManeuverStyle style) {
    _RouteHelper_applyManeuverStyle(
        mapkit_map_polyline.PolylineMapObject.getNativePtr(polyline),
        ManeuverStyle.toNative(style));
  }
}

final ffi.Pointer<ffi.Void> Function() _RouteHelper_createDefaultJamStyle = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
        'yandex_flutter_directions_driving_RouteHelper_createDefaultJamStyle')
    .asFunction();
final ffi.Pointer<ffi.Void> Function() _RouteHelper_createDisabledJamStyle = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
        'yandex_flutter_directions_driving_RouteHelper_createDisabledJamStyle')
    .asFunction();
final ManeuverStyleNative Function() _RouteHelper_createDefaultManeuverStyle = lib
    .library
    .lookup<ffi.NativeFunction<ManeuverStyleNative Function()>>(
        'yandex_flutter_directions_driving_RouteHelper_createDefaultManeuverStyle')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>, core.bool) _RouteHelper_updatePolyline =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Bool)>>(
            'yandex_flutter_directions_driving_RouteHelper_updatePolyline')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _RouteHelper_addManeuvers = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_RouteHelper_addManeuvers')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _RouteHelper_addJams = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_RouteHelper_addJams')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _RouteHelper_applyJamStyle = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_RouteHelper_applyJamStyle')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ManeuverStyleNative)
    _RouteHelper_applyManeuverStyle = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ManeuverStyleNative)>>(
            'yandex_flutter_directions_driving_RouteHelper_applyManeuverStyle')
        .asFunction();
