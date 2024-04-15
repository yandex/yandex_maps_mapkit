import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:yandex_maps_mapkit/src/mapkit/map/polyline.dart'
    as mapkit_map_polyline;
import 'package:yandex_maps_mapkit/src/mapkit/navigation/jam_segment.dart'
    as mapkit_navigation_jam_segment;
import 'package:yandex_maps_mapkit/src/mapkit/navigation/jam_style.dart'
    as mapkit_navigation_jam_style;

class MasstransitDrivingJamsPainter {
  MasstransitDrivingJamsPainter._();

  /// @ internal
  ///
  /// Draw driving "jams" with specified "style"
  static void applyJamsStyle(
    mapkit_map_polyline.PolylineMapObject polyline,
    mapkit_navigation_jam_style.JamStyle style, {
    required core.List<mapkit_navigation_jam_segment.JamSegment> jams,
  }) {
    _DrivingJamsPainter_applyJamsStyle(
      mapkit_map_polyline.PolylineMapObject.getNativePtr(polyline),
      mapkit_navigation_jam_segment.JamSegmentContainerExtension.toNativeVector(
          jams),
      mapkit_navigation_jam_style.JamStyle.getNativePtr(style),
    );
  }
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
