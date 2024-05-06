import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:typed_data' as typed_data;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/transport/masstransit/route.dart'
    as transport_masstransit_route;

part 'serializer.containers.dart';
part 'serializer.impl.dart';

abstract class MasstransitRouteSerializer implements ffi.Finalizable {
  /// Serializes the route.
  /// Return Route's serialized representation. Empty array in case of any
  /// errors.
  typed_data.ByteBuffer save(
      transport_masstransit_route.MasstransitRoute route);

  /// Deserializes the route.
  /// Return Deserialized Route. Null in case of any errors.
  transport_masstransit_route.MasstransitRoute? load(
      typed_data.ByteBuffer data);
}
