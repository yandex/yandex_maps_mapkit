import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_mapkit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/image/image_provider.dart'
    as image_provider;
import 'package:yandex_maps_mapkit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_mapkit/src/mapkit/attribution.dart'
    as mapkit_attribution;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/direction.dart'
    as mapkit_geometry_direction;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/span.dart'
    as mapkit_geometry_span;

part 'panorama_description.containers.dart';
part 'panorama_description.impl.dart';

final class PanoramaImageSize {
  final core.int width;
  final core.int height;

  const PanoramaImageSize({
    required this.width,
    required this.height,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([width, height]);

  @core.override
  core.bool operator ==(covariant PanoramaImageSize other) {
    if (core.identical(this, other)) {
      return true;
    }
    return width == other.width && height == other.height;
  }

  @core.override
  core.String toString() {
    return "PanoramaImageSize(width: $width, height: $height)";
  }
}

abstract final class PanoramaTileLevel implements ffi.Finalizable {
  factory PanoramaTileLevel(core.int level, PanoramaImageSize imageSize) =>
      PanoramaTileLevelImpl(level, imageSize);

  core.int get level;
  PanoramaImageSize get imageSize;

  @core.override
  core.int get hashCode => core.Object.hashAll([level, imageSize]);

  @core.override
  core.bool operator ==(covariant PanoramaTileLevel other) {
    if (core.identical(this, other)) {
      return true;
    }
    return level == other.level && imageSize == other.imageSize;
  }

  @core.override
  core.String toString() {
    return "PanoramaTileLevel(level: $level, imageSize: $imageSize)";
  }
}

final class PanoramaPosition {
  final mapkit_geometry_point.Point point;
  final core.double altitude;

  const PanoramaPosition(
    this.point, {
    required this.altitude,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([point, altitude]);

  @core.override
  core.bool operator ==(covariant PanoramaPosition other) {
    if (core.identical(this, other)) {
      return true;
    }
    return point == other.point && altitude == other.altitude;
  }

  @core.override
  core.String toString() {
    return "PanoramaPosition(point: $point, altitude: $altitude)";
  }
}

abstract final class PanoramaTextMarker implements ffi.Finalizable {
  factory PanoramaTextMarker(
          mapkit_geometry_direction.Direction angularPosition,
          core.String shortLabel,
          core.String fullLabel) =>
      PanoramaTextMarkerImpl(angularPosition, shortLabel, fullLabel);

  mapkit_geometry_direction.Direction get angularPosition;
  core.String get shortLabel;
  core.String get fullLabel;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([angularPosition, shortLabel, fullLabel]);

  @core.override
  core.bool operator ==(covariant PanoramaTextMarker other) {
    if (core.identical(this, other)) {
      return true;
    }
    return angularPosition == other.angularPosition &&
        shortLabel == other.shortLabel &&
        fullLabel == other.fullLabel;
  }

  @core.override
  core.String toString() {
    return "PanoramaTextMarker(angularPosition: $angularPosition, shortLabel: $shortLabel, fullLabel: $fullLabel)";
  }
}

abstract final class PanoramaCompanyMarker implements ffi.Finalizable {
  factory PanoramaCompanyMarker(
          mapkit_geometry_direction.Direction angularPosition,
          core.String label,
          core.String iconId,
          core.String permalink) =>
      PanoramaCompanyMarkerImpl(angularPosition, label, iconId, permalink);

  mapkit_geometry_direction.Direction get angularPosition;
  core.String get label;
  core.String get iconId;
  core.String get permalink;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([angularPosition, label, iconId, permalink]);

  @core.override
  core.bool operator ==(covariant PanoramaCompanyMarker other) {
    if (core.identical(this, other)) {
      return true;
    }
    return angularPosition == other.angularPosition &&
        label == other.label &&
        iconId == other.iconId &&
        permalink == other.permalink;
  }

  @core.override
  core.String toString() {
    return "PanoramaCompanyMarker(angularPosition: $angularPosition, label: $label, iconId: $iconId, permalink: $permalink)";
  }
}

abstract final class PanoramaIconMarker implements ffi.Finalizable {
  factory PanoramaIconMarker(
          mapkit_geometry_direction.Direction angularPosition,
          core.String iconId) =>
      PanoramaIconMarkerImpl(angularPosition, iconId);

  mapkit_geometry_direction.Direction get angularPosition;
  core.String get iconId;

  @core.override
  core.int get hashCode => core.Object.hashAll([angularPosition, iconId]);

  @core.override
  core.bool operator ==(covariant PanoramaIconMarker other) {
    if (core.identical(this, other)) {
      return true;
    }
    return angularPosition == other.angularPosition && iconId == other.iconId;
  }

  @core.override
  core.String toString() {
    return "PanoramaIconMarker(angularPosition: $angularPosition, iconId: $iconId)";
  }
}

abstract final class PanoramaIconConnection implements ffi.Finalizable {
  factory PanoramaIconConnection(
          mapkit_geometry_direction.Direction angularPosition,
          core.String iconId,
          core.String panoramaId) =>
      PanoramaIconConnectionImpl(angularPosition, iconId, panoramaId);

  mapkit_geometry_direction.Direction get angularPosition;
  core.String get iconId;
  core.String get panoramaId;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([angularPosition, iconId, panoramaId]);

  @core.override
  core.bool operator ==(covariant PanoramaIconConnection other) {
    if (core.identical(this, other)) {
      return true;
    }
    return angularPosition == other.angularPosition &&
        iconId == other.iconId &&
        panoramaId == other.panoramaId;
  }

  @core.override
  core.String toString() {
    return "PanoramaIconConnection(angularPosition: $angularPosition, iconId: $iconId, panoramaId: $panoramaId)";
  }
}

abstract final class PanoramaArrowConnection implements ffi.Finalizable {
  factory PanoramaArrowConnection(
          mapkit_geometry_direction.Direction angularPosition,
          core.String label,
          PanoramaArrowConnectionStyle arrowStyle,
          core.String panoramaId) =>
      PanoramaArrowConnectionImpl(
          angularPosition, label, arrowStyle, panoramaId);

  mapkit_geometry_direction.Direction get angularPosition;
  core.String get label;
  PanoramaArrowConnectionStyle get arrowStyle;
  core.String get panoramaId;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([angularPosition, label, arrowStyle, panoramaId]);

  @core.override
  core.bool operator ==(covariant PanoramaArrowConnection other) {
    if (core.identical(this, other)) {
      return true;
    }
    return angularPosition == other.angularPosition &&
        label == other.label &&
        arrowStyle == other.arrowStyle &&
        panoramaId == other.panoramaId;
  }

  @core.override
  core.String toString() {
    return "PanoramaArrowConnection(angularPosition: $angularPosition, label: $label, arrowStyle: $arrowStyle, panoramaId: $panoramaId)";
  }
}

/// Player arrow styles
enum PanoramaArrowConnectionStyle {
  /// connection from street to street
  Street,

  /// connection from indor to indoor
  Indoor,

  /// connection from street to indoor or from indoor to street
  Entry,
  ;
}

final class PanoramaAngularBoundingBox {
  final core.double left;
  final core.double top;
  final core.double right;
  final core.double bottom;

  const PanoramaAngularBoundingBox({
    required this.left,
    required this.top,
    required this.right,
    required this.bottom,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([left, top, right, bottom]);

  @core.override
  core.bool operator ==(covariant PanoramaAngularBoundingBox other) {
    if (core.identical(this, other)) {
      return true;
    }
    return left == other.left &&
        top == other.top &&
        right == other.right &&
        bottom == other.bottom;
  }

  @core.override
  core.String toString() {
    return "PanoramaAngularBoundingBox(left: $left, top: $top, right: $right, bottom: $bottom)";
  }
}

abstract final class PanoramaDescription implements ffi.Finalizable {
  factory PanoramaDescription(
          core.String panoramaId,
          PanoramaPosition? position,
          PanoramaAngularBoundingBox angularBBox,
          PanoramaImageSize tileSize,
          core.List<PanoramaTileLevel> tileLevels,
          core.List<PanoramaIconMarker> iconMarkers,
          core.List<PanoramaTextMarker> textMarkers,
          core.List<PanoramaCompanyMarker> companyMarkers,
          core.List<PanoramaIconConnection> iconConnections,
          core.List<PanoramaArrowConnection> arrowConnections,
          mapkit_geometry_direction.Direction direction,
          mapkit_geometry_span.Span span,
          mapkit_attribution.Attribution? attribution) =>
      PanoramaDescriptionImpl(
          panoramaId,
          position,
          angularBBox,
          tileSize,
          tileLevels,
          iconMarkers,
          textMarkers,
          companyMarkers,
          iconConnections,
          arrowConnections,
          direction,
          span,
          attribution);

  core.String get panoramaId;
  PanoramaPosition? get position;
  PanoramaAngularBoundingBox get angularBBox;
  PanoramaImageSize get tileSize;
  core.List<PanoramaTileLevel> get tileLevels;
  core.List<PanoramaIconMarker> get iconMarkers;
  core.List<PanoramaTextMarker> get textMarkers;
  core.List<PanoramaCompanyMarker> get companyMarkers;
  core.List<PanoramaIconConnection> get iconConnections;
  core.List<PanoramaArrowConnection> get arrowConnections;
  mapkit_geometry_direction.Direction get direction;
  mapkit_geometry_span.Span get span;
  mapkit_attribution.Attribution? get attribution;

  @core.override
  core.int get hashCode => core.Object.hashAll([
        panoramaId,
        position,
        angularBBox,
        tileSize,
        tileLevels,
        iconMarkers,
        textMarkers,
        companyMarkers,
        iconConnections,
        arrowConnections,
        direction,
        span,
        attribution
      ]);

  @core.override
  core.bool operator ==(covariant PanoramaDescription other) {
    if (core.identical(this, other)) {
      return true;
    }
    return panoramaId == other.panoramaId &&
        position == other.position &&
        angularBBox == other.angularBBox &&
        tileSize == other.tileSize &&
        tileLevels == other.tileLevels &&
        iconMarkers == other.iconMarkers &&
        textMarkers == other.textMarkers &&
        companyMarkers == other.companyMarkers &&
        iconConnections == other.iconConnections &&
        arrowConnections == other.arrowConnections &&
        direction == other.direction &&
        span == other.span &&
        attribution == other.attribution;
  }

  @core.override
  core.String toString() {
    return "PanoramaDescription(panoramaId: $panoramaId, position: $position, angularBBox: $angularBBox, tileSize: $tileSize, tileLevels: $tileLevels, iconMarkers: $iconMarkers, textMarkers: $textMarkers, companyMarkers: $companyMarkers, iconConnections: $iconConnections, arrowConnections: $arrowConnections, direction: $direction, span: $span, attribution: $attribution)";
  }
}

/// Listener to handle event from user panoramas
abstract class PanoramaUserPanoramaEventListener {
  /// Called when user presses to the arrow or icon connection. It's a good
  /// place to handle panoramaId and call openPanorama...
  ///
  /// [panoramaId] The clicked connection panoramaId
  void onPanoramaChangeIntent(core.String panoramaId);
}

abstract class PanoramaTileImageFactory {
  /// Called once the tile is within the view frustum. If tile can't be
  /// loaded, empty value must be returned.
  ///
  /// [panoramaId] The id of the panorama to get tile for.
  /// [x] Tile x coordinate in range
  /// \[0..tileLevels\[tileLevel\].width/tileSize.width\] x=0,y=0 is the
  /// left top corner
  /// [y] Tile y coordinate in range
  /// \[0..ceil(tileLevels\[tileLevel\].height/tileSize.height)\]
  /// [tileLevel] Tile level coordinate. One of the given tilelevels
  /// level\]
  core.Future<image_provider.ImageProvider?> load(
      core.String panoramaId, core.int x, core.int y, core.int tileLevel);
}

abstract class PanoramaIconImageFactory {
  /// Called once the icon is visible in view frustum If the icon can't be
  /// loaded, empty value must be returned. Scale - scale factor. mdpi: 1.0
  /// , xhdpi: 2.0, etc. If you have image resources for different pixel
  /// densities, just ignore this parameter.
  core.Future<image_provider.ImageProvider?> load(
      core.String iconId, core.double scale);
}

abstract class PanoramaTileUrlProvider {
  /// Called once the tile within the view frustum.
  ///
  /// [panoramaId] The id of the panorama to get tile for.
  /// [x] Tile x coordinate in range
  /// \[0..tileLevels\[tileLevel\].width/tileSize.width\] x=0,y=0 is the
  /// left top corner
  /// [y] Tile y coordinate in range
  /// \[0..ceil(tileLevels\[tileLevel\].height/tileSize.height)\]
  /// [tileLevel] Tile level coordinate. One of the given tilelevels
  /// level\]
  core.String formatUrl(
      core.String panoramaId, core.int x, core.int y, core.int tileLevel);
}

abstract class PanoramaIconUrlProvider {
  /// Called once the icon is visible in view frustum Scale - scale factor.
  /// mdpi: 1.0 , xhdpi: 2.0 etc.
  core.String formatUrl(core.String iconId, core.double scale);
}
