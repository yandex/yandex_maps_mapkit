import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
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
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_mapkit/src/bindings/image/image_provider.dart'
    as image_provider;
import 'package:yandex_maps_mapkit/src/mapkit/road_events/event_tag.dart'
    as mapkit_road_events_event_tag;
import 'package:yandex_maps_mapkit/src/mapkit/road_events_layer/significance.dart'
    as mapkit_road_events_layer_significance;

part 'style_provider.containers.dart';
part 'style_provider.impl.dart';

abstract final class RoadEventsLayerTextStyle implements ffi.Finalizable {
  factory RoadEventsLayerTextStyle(
          core.double fontSize, ui.Color color, ui.Color? outlineColor) =>
      RoadEventsLayerTextStyleImpl(fontSize, color, outlineColor);

  core.double get fontSize;
  ui.Color get color;
  ui.Color? get outlineColor;

  @core.override
  core.int get hashCode => core.Object.hashAll([fontSize, color, outlineColor]);

  @core.override
  core.bool operator ==(covariant RoadEventsLayerTextStyle other) {
    if (core.identical(this, other)) {
      return true;
    }
    return fontSize == other.fontSize &&
        color == other.color &&
        outlineColor == other.outlineColor;
  }

  @core.override
  core.String toString() {
    return "RoadEventsLayerTextStyle(fontSize: $fontSize, color: $color, outlineColor: $outlineColor)";
  }
}

final class RoadEventsLayerHighlightCircleStyle {
  final ui.Color strokeColor;
  final core.double strokeWidth;
  final ui.Color fillColor;
  final core.double maximumRadius;
  final core.Duration animationDuration;

  const RoadEventsLayerHighlightCircleStyle(
    this.strokeColor,
    this.fillColor,
    this.animationDuration, {
    required this.strokeWidth,
    required this.maximumRadius,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        strokeColor,
        strokeWidth,
        fillColor,
        maximumRadius,
        animationDuration,
      ]);

  @core.override
  core.bool operator ==(covariant RoadEventsLayerHighlightCircleStyle other) {
    if (core.identical(this, other)) {
      return true;
    }
    return strokeColor == other.strokeColor &&
        strokeWidth == other.strokeWidth &&
        fillColor == other.fillColor &&
        maximumRadius == other.maximumRadius &&
        animationDuration == other.animationDuration;
  }

  @core.override
  core.String toString() {
    return "RoadEventsLayerHighlightCircleStyle(strokeColor: $strokeColor, strokeWidth: $strokeWidth, fillColor: $fillColor, maximumRadius: $maximumRadius, animationDuration: $animationDuration, )";
  }
}

enum RoadEventsLayerHighlightMode {
  SoftPulsation,
  HardPulsation,
  ;
}

abstract class RoadEventsLayerRoadEventStyle implements ffi.Finalizable {
  /// Road event is visible only if current camera zoom is greater or equal
  /// than this value.
  core.int get zoomMin;
  set zoomMin(core.int val);

  /// Icon anchor, (0, 0) is top left and (1.0, 1.0) is bottom right.
  math.Point<core.double> get iconAnchor;
  set iconAnchor(math.Point<core.double> val);

  /// Piecewise linear scale function. See Placemark's scale function.
  core.List<math.Point<core.double>> get zoomScaleFunction;
  set zoomScaleFunction(core.List<math.Point<core.double>> val);

  /// Style of caption displayed under the road event icon.
  ///
  RoadEventsLayerTextStyle? get captionStyle;
  set captionStyle(RoadEventsLayerTextStyle? val);

  /// Pulsation center on road event pin image (see HighlightMode). (0, 0)
  /// is top left and (1.0, 1.0) is bottom right.
  math.Point<core.double> get pulsationCenter;
  set pulsationCenter(math.Point<core.double> val);

  /// Road event icon image.
  void setIconImage(image_provider.ImageProvider image);
}

/// Interface that has subset of fields of RoadEvent necessary for
/// providing style.
abstract class RoadEventsLayerRoadEventStylingProperties
    implements ffi.Finalizable {
  /// Set of road event tags.
  core.List<mapkit_road_events_event_tag.RoadEventsEventTag> get tags;

  /// Whether road event will become active in the future. See RoadEvent
  /// for details.
  core.bool get inFuture;

  /// Road event placed on a route. See
  /// RoadEventsLayer.setRoadEventsOnRoute.
  core.bool get onRoute;

  /// Road event was selected by RoadEventsLayer.selectRoadEvent.
  core.bool get selected;

  /// Currently logged in user is either an author of this road event or
  /// has commented it.
  core.bool get userEvent;

  /// Road events with a high significance can be visible on overview
  /// zooms, while events with low significance usually visible on detailed
  /// zooms only. Significance of a road event can depend on a road
  /// category this event is snapped to, number of comments of this event
  /// and other factors. Two road events with same significance but
  /// different tag sets can be visible on different zoom ranges.
  core.bool hasSignificanceGreaterOrEqual(
      mapkit_road_events_layer_significance.RoadEventSignificance significance);
}

abstract class RoadEventsLayerStyleProvider {
  /// Provide style for given road event. Must produce same style for same
  /// input arguments.
  ///
  /// [scaleFactor] Scale factor of a map window displaying this road
  /// event. Road event icon image scale factor must match this value.
  ///
  /// Return `false` if road event must not be displayed at all.
  core.bool provideStyle(
    RoadEventsLayerRoadEventStylingProperties roadEventStylingProperties,
    core.bool isNightMode,
    core.double scaleFactor,
    RoadEventsLayerRoadEventStyle style,
  );

  RoadEventsLayerHighlightCircleStyle? provideHighlightCircleStyle(
    core.bool isNightMode,
    RoadEventsLayerHighlightMode highlightMode,
  );
}
