part of 'route_helper.dart';

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
    toNative: 'ArrowManeuverStyleImpl.toPointer',
    toPlatform:
        '(val) => ArrowManeuverStyleImpl.fromPointer(val, needFree: false)',
    platformType: 'ArrowManeuverStyle')
extension ArrowManeuverStyleImpl on ArrowManeuverStyle {
  static ArrowManeuverStyle fromNative(ArrowManeuverStyleNative native) {
    return ArrowManeuverStyle(to_platform.toPlatformColor(native.fillColor),
        to_platform.toPlatformColor(native.outlineColor),
        outlineWidth: native.outlineWidth,
        length: native.length,
        triangleHeight: native.triangleHeight,
        enabled: native.enabled);
  }

  static ArrowManeuverStyleNative toNative(ArrowManeuverStyle obj) {
    return _ArrowManeuverStyleNativeInit(
        to_native.toNativeColor(obj.fillColor),
        to_native.toNativeColor(obj.outlineColor),
        obj.outlineWidth,
        obj.length,
        obj.triangleHeight,
        obj.enabled);
  }

  static ArrowManeuverStyle? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = ArrowManeuverStyleImpl.fromNative(
        ptr.cast<ArrowManeuverStyleNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(ArrowManeuverStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ArrowManeuverStyleNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'PolygonManeuverRenderModeImpl.toPointer',
    toPlatform:
        '(val) => PolygonManeuverRenderModeImpl.fromPointer(val, needFree: false)',
    platformType: 'PolygonManeuverRenderMode')
extension PolygonManeuverRenderModeImpl on PolygonManeuverRenderMode {
  static core.int toInt(PolygonManeuverRenderMode e) {
    return e.index;
  }

  static PolygonManeuverRenderMode fromInt(core.int val) {
    return PolygonManeuverRenderMode.values[val];
  }

  static PolygonManeuverRenderMode? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(PolygonManeuverRenderMode? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

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
    toNative: 'PolygonManeuverStyleImpl.toPointer',
    toPlatform:
        '(val) => PolygonManeuverStyleImpl.fromPointer(val, needFree: false)',
    platformType: 'PolygonManeuverStyle')
extension PolygonManeuverStyleImpl on PolygonManeuverStyle {
  static PolygonManeuverStyle fromNative(PolygonManeuverStyleNative native) {
    return PolygonManeuverStyle(
        trajectoryWidth: native.trajectoryWidth,
        to_platform.toPlatformColor(native.trajectoryColor),
        polygonAlpha: native.polygonAlpha,
        to_platform.toPlatformColor(native.polygonColor),
        PolygonManeuverRenderModeImpl.fromInt(native.renderMode),
        fadeDistance: native.fadeDistance,
        fadeAlpha: native.fadeAlpha,
        enabled: native.enabled);
  }

  static PolygonManeuverStyleNative toNative(PolygonManeuverStyle obj) {
    return _PolygonManeuverStyleNativeInit(
        obj.trajectoryWidth,
        to_native.toNativeColor(obj.trajectoryColor),
        obj.polygonAlpha,
        to_native.toNativeColor(obj.polygonColor),
        PolygonManeuverRenderModeImpl.toInt(obj.renderMode),
        obj.fadeDistance,
        obj.fadeAlpha,
        obj.enabled);
  }

  static PolygonManeuverStyle? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = PolygonManeuverStyleImpl.fromNative(
        ptr.cast<PolygonManeuverStyleNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(PolygonManeuverStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<PolygonManeuverStyleNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

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
    toNative: 'ManeuverStyleImpl.toPointer',
    toPlatform: '(val) => ManeuverStyleImpl.fromPointer(val, needFree: false)',
    platformType: 'ManeuverStyle')
extension ManeuverStyleImpl on ManeuverStyle {
  static ManeuverStyle fromNative(ManeuverStyleNative native) {
    return ManeuverStyle(ArrowManeuverStyleImpl.fromNative(native.arrow),
        PolygonManeuverStyleImpl.fromNative(native.polygon));
  }

  static ManeuverStyleNative toNative(ManeuverStyle obj) {
    return _ManeuverStyleNativeInit(ArrowManeuverStyleImpl.toNative(obj.arrow),
        PolygonManeuverStyleImpl.toNative(obj.polygon));
  }

  static ManeuverStyle? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        ManeuverStyleImpl.fromNative(ptr.cast<ManeuverStyleNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(ManeuverStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ManeuverStyleNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

mapkit_navigation_jam_style.JamStyle _createDefaultJamStyle() {
  final result = mapkit_navigation_jam_style.JamStyleImpl.fromNativePtr(
      _RouteHelper_createDefaultJamStyle());
  return result;
}

mapkit_navigation_jam_style.JamStyle _createDisabledJamStyle() {
  final result = mapkit_navigation_jam_style.JamStyleImpl.fromNativePtr(
      _RouteHelper_createDisabledJamStyle());
  return result;
}

ManeuverStyle _createDefaultManeuverStyle() {
  final result =
      ManeuverStyleImpl.fromNative(_RouteHelper_createDefaultManeuverStyle());
  return result;
}

void _updatePolyline(
  mapkit_map_polyline.PolylineMapObject polyline,
  directions_driving_route.DrivingRoute route,
  mapkit_navigation_jam_style.JamStyle style, {
  required core.bool updateGeometry,
}) {
  _RouteHelper_updatePolyline(
      mapkit_map_polyline.PolylineMapObjectImpl.getNativePtr(polyline),
      directions_driving_route.DrivingRouteImpl.getNativePtr(route),
      mapkit_navigation_jam_style.JamStyleImpl.getNativePtr(style),
      updateGeometry);
}

void _addManeuvers(mapkit_map_polyline.PolylineMapObject polyline,
    directions_driving_route.DrivingRoute route) {
  _RouteHelper_addManeuvers(
      mapkit_map_polyline.PolylineMapObjectImpl.getNativePtr(polyline),
      directions_driving_route.DrivingRouteImpl.getNativePtr(route));
}

void _addJams(mapkit_map_polyline.PolylineMapObject polyline,
    directions_driving_route.DrivingRoute route) {
  _RouteHelper_addJams(
      mapkit_map_polyline.PolylineMapObjectImpl.getNativePtr(polyline),
      directions_driving_route.DrivingRouteImpl.getNativePtr(route));
}

void _applyJamStyle(mapkit_map_polyline.PolylineMapObject polyline,
    mapkit_navigation_jam_style.JamStyle style) {
  _RouteHelper_applyJamStyle(
      mapkit_map_polyline.PolylineMapObjectImpl.getNativePtr(polyline),
      mapkit_navigation_jam_style.JamStyleImpl.getNativePtr(style));
}

void _applyManeuverStyle(
    mapkit_map_polyline.PolylineMapObject polyline, ManeuverStyle style) {
  _RouteHelper_applyManeuverStyle(
      mapkit_map_polyline.PolylineMapObjectImpl.getNativePtr(polyline),
      ManeuverStyleImpl.toNative(style));
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
