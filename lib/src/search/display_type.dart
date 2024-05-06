import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'display_type.containers.dart';
part 'display_type.impl.dart';

/// Result display type.
enum SearchDisplayType {
  /// Each result makes sense without the others (that is toponyms), they
  /// probably shouldn'be displayed as a group, and probably there's no
  /// need to make additional requests after user moves the map or zooms in
  /// or out.
  Single,

  /// Results are meaningful as a group (that is category query), they
  /// should be displayed all together, and it makes sense to send
  /// additional requests after user changes visible map region.
  Multiple,
  ;
}
