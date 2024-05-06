import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;

part 'panorama_layer.containers.dart';
part 'panorama_layer.impl.dart';

/// Panorama coverage layer
abstract class PanoramaLayer implements ffi.Finalizable {
  /// Enables or disables the street coverage layer.
  void setStreetPanoramaVisible(core.bool on);

  /// Enables or disables the airship icons.
  void setAirshipPanoramaVisible(core.bool on);
}
