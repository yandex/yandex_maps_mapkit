import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/transport/masstransit/flags.dart'
    as transport_masstransit_flags;
import 'package:yandex_maps_mapkit/src/transport/masstransit/travel_estimation.dart'
    as transport_masstransit_travel_estimation;
import 'package:yandex_maps_mapkit/src/transport/masstransit/weight.dart'
    as transport_masstransit_weight;

part 'summary.containers.dart';
part 'summary.impl.dart';

/// Contains brief information associated with a route constructed by the
/// mass transit router.
abstract final class MasstransitSummary implements ffi.Finalizable {
  factory MasstransitSummary(
          transport_masstransit_weight.MasstransitWeight weight,
          transport_masstransit_travel_estimation.MasstransitTravelEstimation?
              estimation,
          transport_masstransit_flags.MasstransitFlags? flags) =>
      MasstransitSummaryImpl(weight, estimation, flags);

  /// Contains the route time, distance of the walking part, and the number
  /// of transfers.
  transport_masstransit_weight.MasstransitWeight get weight;

  /// Arrival and departure time estimations for time-dependent routes.
  ///
  transport_masstransit_travel_estimation.MasstransitTravelEstimation?
      get estimation;

  /// Specific properties of the route.
  ///
  transport_masstransit_flags.MasstransitFlags? get flags;

  @core.override
  core.int get hashCode => core.Object.hashAll([weight, estimation, flags]);

  @core.override
  core.bool operator ==(covariant MasstransitSummary other) {
    if (core.identical(this, other)) {
      return true;
    }
    return weight == other.weight &&
        estimation == other.estimation &&
        flags == other.flags;
  }

  @core.override
  core.String toString() {
    return "MasstransitSummary(weight: $weight, estimation: $estimation, flags: $flags)";
  }
}
