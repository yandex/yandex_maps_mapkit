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
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;
import 'package:yandex_maps_mapkit/src/transport/masstransit/route.dart'
    as transport_masstransit_route;

part 'section_metadata_internal.containers.dart';
part 'section_metadata_internal.impl.dart';

/// @nodoc
/// It is not to be used in platform code
abstract final class SectionMetadataInternal
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory SectionMetadataInternal(
          transport_masstransit_route.MasstransitSectionMetadata metadata,
          core.bool isPassThroughTransportSection) =>
      SectionMetadataInternalImpl(metadata, isPassThroughTransportSection);

  SectionMetadataInternal._();

  transport_masstransit_route.MasstransitSectionMetadata get metadata;
  core.bool get isPassThroughTransportSection;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([metadata, isPassThroughTransportSection]);

  @core.override
  core.bool operator ==(covariant SectionMetadataInternal other) {
    if (core.identical(this, other)) {
      return true;
    }
    return metadata == other.metadata &&
        isPassThroughTransportSection == other.isPassThroughTransportSection;
  }

  @core.override
  core.String toString() {
    return "SectionMetadataInternal(metadata: $metadata, isPassThroughTransportSection: $isPassThroughTransportSection)";
  }

  static final struct_factory.StructFactory<SectionMetadataInternal> factory =
      const _SectionMetadataInternalFactory();
}
