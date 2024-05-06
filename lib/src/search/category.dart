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

part 'category.containers.dart';
part 'category.impl.dart';

abstract final class SearchCategory implements ffi.Finalizable {
  factory SearchCategory(core.String name, core.String? categoryClass,
          core.List<core.String> tags) =>
      SearchCategoryImpl(name, categoryClass, tags);

  core.String get name;
  core.String? get categoryClass;
  core.List<core.String> get tags;

  @core.override
  core.int get hashCode => core.Object.hashAll([name, categoryClass, tags]);

  @core.override
  core.bool operator ==(covariant SearchCategory other) {
    if (core.identical(this, other)) {
      return true;
    }
    return name == other.name &&
        categoryClass == other.categoryClass &&
        tags == other.tags;
  }

  @core.override
  core.String toString() {
    return "SearchCategory(name: $name, categoryClass: $categoryClass, tags: $tags)";
  }
}
