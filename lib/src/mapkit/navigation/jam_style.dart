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
import 'package:yandex_maps_mapkit/src/mapkit/navigation/jam_segment.dart'
    as mapkit_navigation_jam_segment;

part 'jam_style.containers.dart';
part 'jam_style.impl.dart';

final class JamTypeColor {
  final mapkit_navigation_jam_segment.JamType jamType;
  final ui.Color jamColor;

  const JamTypeColor(this.jamType, this.jamColor);

  @core.override
  core.int get hashCode => core.Object.hashAll([jamType, jamColor]);

  @core.override
  core.bool operator ==(covariant JamTypeColor other) {
    if (core.identical(this, other)) {
      return true;
    }
    return jamType == other.jamType && jamColor == other.jamColor;
  }

  @core.override
  core.String toString() {
    return "JamTypeColor(jamType: $jamType, jamColor: $jamColor)";
  }
}

abstract final class JamStyle implements ffi.Finalizable {
  factory JamStyle(core.List<JamTypeColor> colors) => JamStyleImpl(colors);

  core.List<JamTypeColor> get colors;

  @core.override
  core.int get hashCode => core.Object.hashAll([colors]);

  @core.override
  core.bool operator ==(covariant JamStyle other) {
    if (core.identical(this, other)) {
      return true;
    }
    return colors == other.colors;
  }

  @core.override
  core.String toString() {
    return "JamStyle(colors: $colors)";
  }
}
