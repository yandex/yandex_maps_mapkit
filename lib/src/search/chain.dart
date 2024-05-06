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
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'chain.containers.dart';
part 'chain.impl.dart';

final class SearchChain {
  final core.String id;
  final core.String name;

  const SearchChain({
    required this.id,
    required this.name,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([id, name]);

  @core.override
  core.bool operator ==(covariant SearchChain other) {
    if (core.identical(this, other)) {
      return true;
    }
    return id == other.id && name == other.name;
  }

  @core.override
  core.String toString() {
    return "SearchChain(id: $id, name: $name)";
  }
}
