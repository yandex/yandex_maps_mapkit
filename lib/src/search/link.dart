import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/attribution.dart'
    as mapkit_attribution;

part 'link.containers.dart';
part 'link.impl.dart';

/// Link structure. Combines actual link with attribution and type info.

final class SearchLink {
  /// Attribution reference.
  ///
  final core.String? aref;

  /// Actual link.
  final mapkit_attribution.AttributionLink link;

  /// Link tag. Possible values (non-exhaustive)
  /// 'self/social/attribution/showtimes/booking'.
  ///
  final core.String? tag;

  const SearchLink(
    this.link, {
    this.aref,
    this.tag,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([aref, link, tag]);

  @core.override
  core.bool operator ==(covariant SearchLink other) {
    if (core.identical(this, other)) {
      return true;
    }
    return aref == other.aref && link == other.link && tag == other.tag;
  }

  @core.override
  core.String toString() {
    return "SearchLink(aref: $aref, link: $link, tag: $tag)";
  }
}
