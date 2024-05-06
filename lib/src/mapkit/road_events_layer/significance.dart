import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'significance.containers.dart';
part 'significance.impl.dart';

enum RoadEventSignificance {
  Minor,
  Medium,
  Major,
  Crucial,
  SuperCrucial,
  ;
}
