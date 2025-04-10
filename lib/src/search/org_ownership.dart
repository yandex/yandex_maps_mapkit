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

part 'org_ownership.containers.dart';
part 'org_ownership.impl.dart';

abstract final class SearchOrgOwnershipObjectMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory SearchOrgOwnershipObjectMetadata(core.bool? canBeClaimed) =>
      SearchOrgOwnershipObjectMetadataImpl(canBeClaimed);

  SearchOrgOwnershipObjectMetadata._();

  core.bool? get canBeClaimed;

  @core.override
  core.int get hashCode => core.Object.hashAll([canBeClaimed]);

  @core.override
  core.bool operator ==(covariant SearchOrgOwnershipObjectMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return canBeClaimed == other.canBeClaimed;
  }

  @core.override
  core.String toString() {
    return "SearchOrgOwnershipObjectMetadata(canBeClaimed: $canBeClaimed)";
  }

  static final struct_factory.StructFactory<SearchOrgOwnershipObjectMetadata>
      factory = const _SearchOrgOwnershipObjectMetadataFactory();
}
