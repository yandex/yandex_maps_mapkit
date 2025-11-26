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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_mapkit/src/transport/masstransit/common.dart'
    as transport_masstransit_common;

part 'transport_metadata.containers.dart';
part 'transport_metadata.impl.dart';

/// @nodoc
/// This struct is here to automatically generate protobuf parsing
/// functions It is not to be used in platform code
abstract final class RawTransportStop implements ffi.Finalizable {
  factory RawTransportStop(transport_masstransit_common.MasstransitStop stop,
          mapkit_geometry_geometry.PolylinePosition position) =>
      RawTransportStopImpl(stop, position);

  RawTransportStop._();

  transport_masstransit_common.MasstransitStop get stop;
  mapkit_geometry_geometry.PolylinePosition get position;

  @core.override
  core.int get hashCode => core.Object.hashAll([stop, position]);

  @core.override
  core.bool operator ==(covariant RawTransportStop other) {
    if (core.identical(this, other)) {
      return true;
    }
    return stop == other.stop && position == other.position;
  }

  @core.override
  core.String toString() {
    return "RawTransportStop(stop: $stop, position: $position)";
  }
}

/// @nodoc
/// This struct is here to automatically generate protobuf parsing
/// functions It is not to be used in platform code
abstract final class TransportStopMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory TransportStopMetadata(
          core.List<TransportStopMetadataTransportStopInfo>
              transportStopInfo) =>
      TransportStopMetadataImpl(transportStopInfo);

  TransportStopMetadata._();

  core.List<TransportStopMetadataTransportStopInfo> get transportStopInfo;

  @core.override
  core.int get hashCode => core.Object.hashAll([transportStopInfo]);

  @core.override
  core.bool operator ==(covariant TransportStopMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return transportStopInfo == other.transportStopInfo;
  }

  @core.override
  core.String toString() {
    return "TransportStopMetadata(transportStopInfo: $transportStopInfo)";
  }

  static final struct_factory.StructFactory<TransportStopMetadata> factory =
      const _TransportStopMetadataFactory();
}

abstract final class TransportStopMetadataTransportStopInfo
    implements ffi.Finalizable {
  factory TransportStopMetadataTransportStopInfo(
          core.List<core.String> threadIds,
          core.List<RawTransportStop> stops) =>
      TransportStopMetadataTransportStopInfoImpl(threadIds, stops);

  TransportStopMetadataTransportStopInfo._();

  core.List<core.String> get threadIds;
  core.List<RawTransportStop> get stops;

  @core.override
  core.int get hashCode => core.Object.hashAll([threadIds, stops]);

  @core.override
  core.bool operator ==(
      covariant TransportStopMetadataTransportStopInfo other) {
    if (core.identical(this, other)) {
      return true;
    }
    return threadIds == other.threadIds && stops == other.stops;
  }

  @core.override
  core.String toString() {
    return "TransportStopMetadataTransportStopInfo(threadIds: $threadIds, stops: $stops)";
  }
}

/// @nodoc
/// This struct is here to automatically generate protobuf parsing
/// functions It is not to be used in platform code
abstract final class TransportGeometryMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory TransportGeometryMetadata(
          core.List<TransportGeometryMetadataTransportGeometry>
              transportGeometry) =>
      TransportGeometryMetadataImpl(transportGeometry);

  TransportGeometryMetadata._();

  core.List<TransportGeometryMetadataTransportGeometry> get transportGeometry;

  @core.override
  core.int get hashCode => core.Object.hashAll([transportGeometry]);

  @core.override
  core.bool operator ==(covariant TransportGeometryMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return transportGeometry == other.transportGeometry;
  }

  @core.override
  core.String toString() {
    return "TransportGeometryMetadata(transportGeometry: $transportGeometry)";
  }

  static final struct_factory.StructFactory<TransportGeometryMetadata> factory =
      const _TransportGeometryMetadataFactory();
}

abstract final class TransportGeometryMetadataTransportGeometry
    implements ffi.Finalizable {
  factory TransportGeometryMetadataTransportGeometry(
          core.List<core.String> threadIds,
          mapkit_geometry_geometry.Polyline geometry) =>
      TransportGeometryMetadataTransportGeometryImpl(threadIds, geometry);

  TransportGeometryMetadataTransportGeometry._();

  core.List<core.String> get threadIds;
  mapkit_geometry_geometry.Polyline get geometry;

  @core.override
  core.int get hashCode => core.Object.hashAll([threadIds, geometry]);

  @core.override
  core.bool operator ==(
      covariant TransportGeometryMetadataTransportGeometry other) {
    if (core.identical(this, other)) {
      return true;
    }
    return threadIds == other.threadIds && geometry == other.geometry;
  }

  @core.override
  core.String toString() {
    return "TransportGeometryMetadataTransportGeometry(threadIds: $threadIds, geometry: $geometry)";
  }
}
