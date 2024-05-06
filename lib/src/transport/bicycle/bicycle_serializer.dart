import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:typed_data' as typed_data;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/transport/bicycle/route.dart'
    as transport_bicycle_route;

part 'bicycle_serializer.impl.dart';

class BicycleRouteSerializer {
  BicycleRouteSerializer._();

  /// Returns a route's serialized representation. Returns an empty array
  /// if there are any errors.
  static typed_data.ByteBuffer save(
      transport_bicycle_route.BicycleRoute route) {
    return _save(
      route,
    );
  }

  /// Returns a deserialized route. Returns null on error.
  static transport_bicycle_route.BicycleRoute load(typed_data.ByteBuffer data) {
    return _load(
      data,
    );
  }
}
