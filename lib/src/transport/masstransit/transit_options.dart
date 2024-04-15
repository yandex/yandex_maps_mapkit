import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/transport/masstransit/options.dart'
    as transport_masstransit_options;

part 'transit_options.containers.dart';

/// Types which are allowed to be used in filters.
@bindings_annotations.ContainerData(
    toNative: 'FilterVehicleTypes.toPointer',
    toPlatform: '(val) => FilterVehicleTypes.fromPointer(val, needFree: false)')
class FilterVehicleTypes {
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

  /// @nodoc
  @internal
  static FilterVehicleTypes fromInt(core.int val) {
    return FilterVehicleTypes(val);
  }

  /// @nodoc
  @internal
  static core.int toInt(FilterVehicleTypes e) {
    return e.value;
  }

  /// @nodoc
  @internal
  static FilterVehicleTypes? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(FilterVehicleTypes? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class TransitOptionsNative extends ffi.Struct {
  @ffi.Int64()
  external core.int avoid;
  external transport_masstransit_options.TimeOptionsNative timeOptions;
}

final TransitOptionsNative Function(
  core.int,
  transport_masstransit_options.TimeOptionsNative,
) _TransitOptionsNativeInit = lib.library
    .lookup<
        ffi.NativeFunction<
            TransitOptionsNative Function(
              ffi.Int64,
              transport_masstransit_options.TimeOptionsNative,
            )>>('yandex_flutter_transport_masstransit_TransitOptions_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'TransitOptions.toPointer',
    toPlatform: '(val) => TransitOptions.fromPointer(val, needFree: false)')
class TransitOptions {
  final FilterVehicleTypes avoid;
  final transport_masstransit_options.TimeOptions timeOptions;

  const TransitOptions(
    this.timeOptions, {
    this.avoid = FilterVehicleTypes.None,
  });

  /// @nodoc
  @internal
  TransitOptions.fromNative(TransitOptionsNative native)
      : this(
          avoid: FilterVehicleTypes.fromInt(native.avoid),
          transport_masstransit_options.TimeOptions.fromNative(
              native.timeOptions),
        );

  /// @nodoc
  @internal
  static TransitOptionsNative toNative(TransitOptions c) {
    return _TransitOptionsNativeInit(
      FilterVehicleTypes.toInt(c.avoid),
      transport_masstransit_options.TimeOptions.toNative(c.timeOptions),
    );
  }

  /// @nodoc
  @internal
  static TransitOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        TransitOptions.fromNative(ptr.cast<TransitOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(TransitOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<TransitOptionsNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
