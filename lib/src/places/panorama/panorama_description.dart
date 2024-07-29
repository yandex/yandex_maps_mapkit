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

/// The image size.

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

/// The TileLevel struct.
abstract final class PanoramaTileLevel implements ffi.Finalizable {
  factory PanoramaTileLevel(core.int level, PanoramaImageSize imageSize) =>
      PanoramaTileLevelImpl(level, imageSize);

  /// level is passed as a parameter to the TileImageFactory or to the
  /// TileUrlProvider. Each panorama description tile level must have
  /// unique value.
  core.int get level;

  /// Source image size. The imageSize width must be multiples of the
  /// tileSize width. The imageSize height must be in range
  /// \[1..imageSize.width/2\]
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

/// Position struct

final class PanoramaPosition {
  /// Longitude and latitude, degrees.
  final mapkit_geometry_point.Point point;

  /// Altitude, meters. Positive is above sea-level
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

/// Text marker struct
abstract final class PanoramaTextMarker implements ffi.Finalizable {
  factory PanoramaTextMarker(
          mapkit_geometry_direction.Direction angularPosition,
          core.String shortLabel,
          core.String fullLabel) =>
      PanoramaTextMarkerImpl(angularPosition, shortLabel, fullLabel);

  /// Angular position, degrees. (bearing, tilt) (0, 0) - (north, horizon)
  mapkit_geometry_direction.Direction get angularPosition;

  /// The text displayed in short mode. For example, a house name '14b'
  core.String get shortLabel;

  /// The text displayed in full mode. For example, street name + house
  /// name 'Lesnaya ul. 14b'
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

/// Company marker struct
abstract final class PanoramaCompanyMarker implements ffi.Finalizable {
  factory PanoramaCompanyMarker(
          mapkit_geometry_direction.Direction angularPosition,
          core.String label,
          core.String iconId,
          core.String permalink) =>
      PanoramaCompanyMarkerImpl(angularPosition, label, iconId, permalink);

  /// Angular position, degrees. (bearing, tilt) (0, 0) - (north, horizon)
  mapkit_geometry_direction.Direction get angularPosition;

  /// Displayed label. For example, a company name 'Sweet market'
  core.String get label;

  /// The company iconId. The iconId is passed as a parameter to the
  /// IconImageFactory and IconUrlProvider
  core.String get iconId;

  /// Permalink is passed as a parameter to the onCompanyTap method.
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

/// Icon marker struct
abstract final class PanoramaIconMarker implements ffi.Finalizable {
  factory PanoramaIconMarker(
          mapkit_geometry_direction.Direction angularPosition,
          core.String iconId) =>
      PanoramaIconMarkerImpl(angularPosition, iconId);

  /// Angular position, degrees. (bearing, tilt) (0, 0) - (north, horizon)
  mapkit_geometry_direction.Direction get angularPosition;

  /// The marker iconId. The iconId is passed as a parameter to the
  /// IconImageFactory and IconUrlProvider
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

  /// Angular position, degrees. (bearing, tilt) (0, 0) - (north, horizon)
  mapkit_geometry_direction.Direction get angularPosition;

  /// The connection iconId. The iconId is passed as a parameter to the
  /// IconImageFactory and IconUrlProvider once iconId is visible
  core.String get iconId;

  /// panoramaId is passed as a parameter to the onPanoramaChangeIntent
  /// method.
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

  /// Angular position, degrees. (bearing, tilt) (0, 0) - (north, horizon)
  mapkit_geometry_direction.Direction get angularPosition;

  /// label is shown near the arrow
  core.String get label;

  /// Arrow style.
  PanoramaArrowConnectionStyle get arrowStyle;

  /// panoramaId is passed as a parameter to the onPanoramaChangeIntent
  /// method.
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

/// Angular bbox. Direction + span will be limited between top and bottom
/// It's recommended to have (right - left) = 360.

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

  /// panoramaId is passed as a parameter to the TileImageFactory or to the
  /// TileUrlProvider
  core.String get panoramaId;

  /// Geo position.
  ///
  PanoramaPosition? get position;

  /// The angularBBox field sets how the tile tilelevels oriented in space.
  /// Direction + span will be limited between top and bottom The
  /// recommendation for initializing angular bbox: (right - left) == 360.
  /// Non 360 degrees panoramas are not supported yet. (top - bottom) <=
  /// 180 The angular aspect ratio must be the same as any tileLevel aspect
  /// ratio. (right - left)/(top - bottom) ==
  /// tileLevel\[i\].width/tileLevel\[i\].height
  PanoramaAngularBoundingBox get angularBBox;

  /// Any tile level imageSize width must be multiple of the tileSize
  /// width. Only 256x256 and 512x512 tiles are supported.
  PanoramaImageSize get tileSize;

  /// The tileLevels is a set of the TileLevel structs. Tile levels can be
  /// added in any order. It's recommended to have at least 2 tile levels:
  /// - low quality zoom. For example 512x200 - high quality zoom. For
  /// axample 20480x8000
  ///
  /// It can be useful to have several tile levels for huge images to save
  /// network traffic and reduce memory and power consumption. So the final
  /// tile levels list may look like that: level, width, height 0, 512, 200
  /// 1, 2048, 800 2, 5120, 2000 6, 10240, 4000 9, 20480, 8000
  ///
  /// Player takes into account the view area size and available tile
  /// levels and downloads the most suitable level.
  ///
  /// The tileLevels\[i\] aspect ratio must be the same. At first low
  /// quality zoom is loaded. Once it's done, the panorama player notifies
  /// that the panorama is opened and starts loading high quality zoom
  /// tiles.
  core.List<PanoramaTileLevel> get tileLevels;

  /// Add marker icons to the panorama
  core.List<PanoramaIconMarker> get iconMarkers;

  /// Add marker text to the panorama
  core.List<PanoramaTextMarker> get textMarkers;

  /// Add company icons and labels to the panorama
  core.List<PanoramaCompanyMarker> get companyMarkers;

  /// Add icons with interaction
  core.List<PanoramaIconConnection> get iconConnections;

  /// Add standard player arrow connections
  core.List<PanoramaArrowConnection> get arrowConnections;

  /// Suggest where to look at once panorama is opened. It's just a
  /// recommendation because it depends on angularBBox and span.
  mapkit_geometry_direction.Direction get direction;

  /// Suggest view area span. It's just a recommendation because it depends
  /// on angularBBox and direction.
  mapkit_geometry_span.Span get span;

  /// Panorama author information.
  ///
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
