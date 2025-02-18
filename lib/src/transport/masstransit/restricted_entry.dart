import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'restricted_entry.containers.dart';
part 'restricted_entry.impl.dart';

/// Defines a point on a pedestrian path.
abstract final class MasstransitRestrictedEntry implements ffi.Finalizable {
  factory MasstransitRestrictedEntry(core.int position) =>
      MasstransitRestrictedEntryImpl(position);

  MasstransitRestrictedEntry._();

  /// Index of the point in the section geometry.
  core.int get position;

  @core.override
  core.int get hashCode => core.Object.hashAll([position]);

  @core.override
  core.bool operator ==(covariant MasstransitRestrictedEntry other) {
    if (core.identical(this, other)) {
      return true;
    }
    return position == other.position;
  }

  @core.override
  core.String toString() {
    return "MasstransitRestrictedEntry(position: $position)";
  }
}

/// Defines a vector of points on a pedestrian path.
abstract final class RestrictedEntriesContainer implements ffi.Finalizable {
  factory RestrictedEntriesContainer(
          core.List<MasstransitRestrictedEntry> entries) =>
      RestrictedEntriesContainerImpl(entries);

  RestrictedEntriesContainer._();

  /// Vector of points on a pedestrian path.
  core.List<MasstransitRestrictedEntry> get entries;

  @core.override
  core.int get hashCode => core.Object.hashAll([entries]);

  @core.override
  core.bool operator ==(covariant RestrictedEntriesContainer other) {
    if (core.identical(this, other)) {
      return true;
    }
    return entries == other.entries;
  }

  @core.override
  core.String toString() {
    return "RestrictedEntriesContainer(entries: $entries)";
  }
}
