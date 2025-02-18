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

part 'airship_tap_info.containers.dart';
part 'airship_tap_info.impl.dart';

abstract final class AirshipTapInfo extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  factory AirshipTapInfo(core.String panoramaId) =>
      AirshipTapInfoImpl(panoramaId);

  AirshipTapInfo._();

  /// Panorama id of the tapped airship. The id may be used to open
  /// panorama in the panorama player
  core.String get panoramaId;

  @core.override
  core.int get hashCode => core.Object.hashAll([panoramaId]);

  @core.override
  core.bool operator ==(covariant AirshipTapInfo other) {
    if (core.identical(this, other)) {
      return true;
    }
    return panoramaId == other.panoramaId;
  }

  @core.override
  core.String toString() {
    return "AirshipTapInfo(panoramaId: $panoramaId)";
  }

  static final struct_factory.StructFactory<AirshipTapInfo> factory =
      const _AirshipTapInfoFactory();
}
