import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:yandex_maps_mapkit/src/mapkit/map/polyline.dart'
    as mapkit_map_polyline;
import 'package:yandex_maps_mapkit/src/mapkit/navigation/jam_segment.dart'
    as mapkit_navigation_jam_segment;
import 'package:yandex_maps_mapkit/src/mapkit/navigation/jam_style.dart'
    as mapkit_navigation_jam_style;

part 'route_painter.impl.dart';

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
    _applyJamsStyle(
      polyline,
      jams: jams,
      style,
    );
  }
}
