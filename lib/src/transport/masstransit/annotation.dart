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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;

part 'annotation.containers.dart';
part 'annotation.impl.dart';

/// Action that can be performed
enum MasstransitActionID {
  Straight,
  Left,
  Right,
  Dismount,
  ;
}

/// Landmark type
enum MasstransitLandmarkID {
  Crosswalk,
  StairsToUnderpass,
  StairsToOverpass,
  Stairs,
  StairsDown,
  StairsUp,
  ;
}

final class MasstransitToponym {
  final core.String? toponym;

  /// Toponym in accusative case with preposition
  ///
  final core.String? accusativeToponym;

  const MasstransitToponym({
    this.toponym,
    this.accusativeToponym,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([toponym, accusativeToponym]);

  @core.override
  core.bool operator ==(covariant MasstransitToponym other) {
    if (core.identical(this, other)) {
      return true;
    }
    return toponym == other.toponym &&
        accusativeToponym == other.accusativeToponym;
  }

  @core.override
  core.String toString() {
    return "MasstransitToponym(toponym: $toponym, accusativeToponym: $accusativeToponym)";
  }
}

/// Contains info about actions on part of route. Either `action` or
/// `landmark` should be non-empty.
abstract final class MasstransitAnnotation implements ffi.Finalizable {
  factory MasstransitAnnotation(
          mapkit_geometry_geometry.PolylinePosition position,
          MasstransitActionID? action,
          MasstransitLandmarkID? landmark,
          MasstransitToponym? toponym) =>
      MasstransitAnnotationImpl(position, action, landmark, toponym);

  MasstransitAnnotation._();

  /// Position of annotation on part of route
  mapkit_geometry_geometry.PolylinePosition get position;

  /// Action
  ///
  MasstransitActionID? get action;

  /// Landmark
  ///
  MasstransitLandmarkID? get landmark;

  /// The toponym of the location.
  ///
  MasstransitToponym? get toponym;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([position, action, landmark, toponym]);

  @core.override
  core.bool operator ==(covariant MasstransitAnnotation other) {
    if (core.identical(this, other)) {
      return true;
    }
    return position == other.position &&
        action == other.action &&
        landmark == other.landmark &&
        toponym == other.toponym;
  }

  @core.override
  core.String toString() {
    return "MasstransitAnnotation(position: $position, action: $action, landmark: $landmark, toponym: $toponym)";
  }
}
