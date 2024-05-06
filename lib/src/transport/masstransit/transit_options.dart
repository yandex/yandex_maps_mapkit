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

final class TransitOptions {
  final FilterVehicleTypes avoid;
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
