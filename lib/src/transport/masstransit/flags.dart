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

/// Indicates whether the suggested route has one or more of the
/// specified properties.

final class MasstransitFlags {
  /// Indicates whether the suggested route requires an access pass.
  final core.bool requiresAccessPass;

  /// Indicates whether the suggested route includes automotive roads.
  final core.bool hasAutoRoad;

  const MasstransitFlags({
    required this.requiresAccessPass,
    required this.hasAutoRoad,
  });

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([requiresAccessPass, hasAutoRoad]);

  @core.override
  core.bool operator ==(covariant MasstransitFlags other) {
    if (core.identical(this, other)) {
      return true;
    }
    return requiresAccessPass == other.requiresAccessPass &&
        hasAutoRoad == other.hasAutoRoad;
  }

  @core.override
  core.String toString() {
    return "MasstransitFlags(requiresAccessPass: $requiresAccessPass, hasAutoRoad: $hasAutoRoad)";
  }
}
