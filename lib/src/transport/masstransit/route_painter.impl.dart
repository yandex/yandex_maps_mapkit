part of 'route_painter.dart';

void _applyJamsStyle(
  mapkit_map_polyline.PolylineMapObject polyline,
  mapkit_navigation_jam_style.JamStyle style, {
  required core.List<mapkit_navigation_jam_segment.JamSegment> jams,
}) {
  _DrivingJamsPainter_applyJamsStyle(
    mapkit_map_polyline.PolylineMapObjectImpl.getNativePtr(polyline),
    mapkit_navigation_jam_segment.JamSegmentContainerExtension.toNativeVector(
        jams),
    mapkit_navigation_jam_style.JamStyleImpl.getNativePtr(style),
  );
}

final void Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _DrivingJamsPainter_applyJamsStyle = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitDrivingJamsPainter_applyJamsStyle')
    .asFunction();
