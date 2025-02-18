import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/transport/masstransit/options.dart'
    as transport_masstransit_options;

part 'transit_options.containers.dart';
part 'transit_options.impl.dart';

/// Types which are allowed to be used in filters.
final class FilterVehicleTypes {
  static const None = FilterVehicleTypes(0);
  static const Bus = FilterVehicleTypes(1 << 0);
  static const Minibus = FilterVehicleTypes(1 << 1);
  static const Railway = FilterVehicleTypes(1 << 2);
  static const Suburban = FilterVehicleTypes(1 << 3);
  static const Tramway = FilterVehicleTypes(1 << 4);
  static const Trolleybus = FilterVehicleTypes(1 << 5);
  static const Underground = FilterVehicleTypes(1 << 6);
  static const Metrobus = FilterVehicleTypes(1 << 7);
  static const Dolmus = FilterVehicleTypes(1 << 8);
  static const HistoricTram = FilterVehicleTypes(1 << 9);
  static const RapidTram = FilterVehicleTypes(1 << 10);
  static const LightRail = FilterVehicleTypes(1 << 11);
  static const SuburbanExpress = FilterVehicleTypes(1 << 12);
  static const Aeroexpress = FilterVehicleTypes(1 << 13);
  static const Water = FilterVehicleTypes(1 << 14);
  static const Ferry = FilterVehicleTypes(1 << 15);
  static const Funicular = FilterVehicleTypes(1 << 16);
  static const Cable = FilterVehicleTypes(1 << 17);
  static const Aero = FilterVehicleTypes(1 << 18);
  static const SBahn = FilterVehicleTypes(1 << 19);

  const FilterVehicleTypes(this.value);

  final core.int value;

  FilterVehicleTypes operator |(FilterVehicleTypes other) {
    return FilterVehicleTypes(value | other.value);
  }

  FilterVehicleTypes operator &(FilterVehicleTypes other) {
    return FilterVehicleTypes(value & other.value);
  }

  FilterVehicleTypes operator ~() {
    return FilterVehicleTypes(~value);
  }

  @core.override
  core.int get hashCode => value;

  @core.override
  core.bool operator ==(covariant FilterVehicleTypes other) {
    return value == other.value;
  }

  @core.override
  core.String toString() {
    return "FilterVehicleTypes(value: ${value.toRadixString(16)})";
  }
}

/// User-defined options, like time options and filter options.

final class TransitOptions {
  /// Transport types that the router will avoid. The value should be one
  /// of [FilterVehicleTypes], or their bitwise 'OR' combination.
  final FilterVehicleTypes avoid;

  /// Desired departure/arrival time settings. Empty
  /// [transport_masstransit_options.TimeOptions] for requests that are not
  /// time-dependent.
  final transport_masstransit_options.TimeOptions timeOptions;

  const TransitOptions(
    this.timeOptions, {
    this.avoid = FilterVehicleTypes.None,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        avoid,
        timeOptions,
      ]);

  @core.override
  core.bool operator ==(covariant TransitOptions other) {
    if (core.identical(this, other)) {
      return true;
    }
    return avoid == other.avoid && timeOptions == other.timeOptions;
  }

  @core.override
  core.String toString() {
    return "TransitOptions(avoid: $avoid, timeOptions: $timeOptions, )";
  }
}
