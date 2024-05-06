import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'flags.containers.dart';
part 'flags.impl.dart';

final class BicycleFlags {
  final core.bool requiresAccessPass;
  final core.bool hasAutoRoad;

  const BicycleFlags({
    required this.requiresAccessPass,
    required this.hasAutoRoad,
  });

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([requiresAccessPass, hasAutoRoad]);

  @core.override
  core.bool operator ==(covariant BicycleFlags other) {
    if (core.identical(this, other)) {
      return true;
    }
    return requiresAccessPass == other.requiresAccessPass &&
        hasAutoRoad == other.hasAutoRoad;
  }

  @core.override
  core.String toString() {
    return "BicycleFlags(requiresAccessPass: $requiresAccessPass, hasAutoRoad: $hasAutoRoad)";
  }
}
