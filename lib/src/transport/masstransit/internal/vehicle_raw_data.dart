import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/struct_factory.dart'
    as struct_factory;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;
import 'package:yandex_maps_mapkit/src/transport/masstransit/common.dart'
    as transport_masstransit_common;

part 'vehicle_raw_data.containers.dart';
part 'vehicle_raw_data.impl.dart';

/// Represents a mass transport unit on the map
abstract final class VehicleRawData extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  factory VehicleRawData(core.String id, core.String threadId,
          transport_masstransit_common.MasstransitLine line) =>
      VehicleRawDataImpl(id, threadId, line);

  /// Id of a vehicle
  core.String get id;

  /// Id of the line thread on which the vehicle is running
  core.String get threadId;

  /// Stores the vehicle's public transport line info
  transport_masstransit_common.MasstransitLine get line;

  @core.override
  core.int get hashCode => core.Object.hashAll([id, threadId, line]);

  @core.override
  core.bool operator ==(covariant VehicleRawData other) {
    if (core.identical(this, other)) {
      return true;
    }
    return id == other.id && threadId == other.threadId && line == other.line;
  }

  @core.override
  core.String toString() {
    return "VehicleRawData(id: $id, threadId: $threadId, line: $line)";
  }

  static final struct_factory.StructFactory<VehicleRawData> factory =
      const _VehicleRawDataFactory();
}
