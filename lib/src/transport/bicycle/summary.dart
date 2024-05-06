import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/transport/bicycle/flags.dart'
    as transport_bicycle_flags;
import 'package:yandex_maps_mapkit/src/transport/bicycle/weight.dart'
    as transport_bicycle_weight;

part 'summary.containers.dart';
part 'summary.impl.dart';

abstract final class BicycleSummary implements ffi.Finalizable {
  factory BicycleSummary(transport_bicycle_weight.BicycleWeight weight,
          transport_bicycle_flags.BicycleFlags? flags) =>
      BicycleSummaryImpl(weight, flags);

  transport_bicycle_weight.BicycleWeight get weight;
  transport_bicycle_flags.BicycleFlags? get flags;

  @core.override
  core.int get hashCode => core.Object.hashAll([weight, flags]);

  @core.override
  core.bool operator ==(covariant BicycleSummary other) {
    if (core.identical(this, other)) {
      return true;
    }
    return weight == other.weight && flags == other.flags;
  }

  @core.override
  core.String toString() {
    return "BicycleSummary(weight: $weight, flags: $flags)";
  }
}
