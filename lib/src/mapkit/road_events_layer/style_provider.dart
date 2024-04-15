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

@bindings_annotations.ContainerData(
    toNative: 'RoadEventsLayerTextStyle.toPointer',
    toPlatform:
        '(val) => RoadEventsLayerTextStyle.fromPointer(val, needFree: false)')
class RoadEventsLayerTextStyle implements ffi.Finalizable {
  late final fontSize = _RoadEventsLayerTextStyle_get_fontSize(_ptr);
  late final color =
      to_platform.toPlatformColor(_RoadEventsLayerTextStyle_get_color(_ptr));
  late final outlineColor = to_platform.toPlatformFromPointerColor(
      _RoadEventsLayerTextStyle_get_outlineColor(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_RoadEventsLayerTextStyle_free.cast());

  RoadEventsLayerTextStyle(
      core.double fontSize, ui.Color color, ui.Color? outlineColor)
      : this.fromNativePtr(_RoadEventsLayerTextStyle_init(
            fontSize,
            to_native.toNativeColor(color),
            to_native.toNativePtrColor(outlineColor)));

  /// @nodoc
  @internal
  RoadEventsLayerTextStyle.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(RoadEventsLayerTextStyle? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static RoadEventsLayerTextStyle? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return RoadEventsLayerTextStyle.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static RoadEventsLayerTextStyle? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = RoadEventsLayerTextStyle.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(RoadEventsLayerTextStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _RoadEventsLayerTextStyle_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayerTextStyle_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerTextStyle_clone')
    .asFunction(isLeaf: true);

final _RoadEventsLayerTextStyle_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerTextStyle_free');

final ffi.Pointer<ffi.Void> Function(
    core.double,
    native_types.NativeColor,
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayerTextStyle_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Float,
                    native_types.NativeColor, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerTextStyle_init')
    .asFunction(isLeaf: true);

final core.double Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayerTextStyle_get_fontSize = lib.library
    .lookup<ffi.NativeFunction<ffi.Float Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerTextStyle_get_fontSize')
    .asFunction(isLeaf: true);
final native_types.NativeColor Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayerTextStyle_get_color = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeColor Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerTextStyle_get_color')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayerTextStyle_get_outlineColor = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerTextStyle_get_outlineColor')
    .asFunction(isLeaf: true);

/// @nodoc
final class RoadEventsLayerHighlightCircleStyleNative extends ffi.Struct {
  external native_types.NativeColor strokeColor;
  @ffi.Float()
  external core.double strokeWidth;
  external native_types.NativeColor fillColor;
  @ffi.Float()
  external core.double maximumRadius;
  external native_types.NativeInterval animationDuration;
}

final RoadEventsLayerHighlightCircleStyleNative Function(
  native_types.NativeColor,
  core.double,
  native_types.NativeColor,
  core.double,
  native_types.NativeInterval,
) _RoadEventsLayerHighlightCircleStyleNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                RoadEventsLayerHighlightCircleStyleNative Function(
                  native_types.NativeColor,
                  ffi.Float,
                  native_types.NativeColor,
                  ffi.Float,
                  native_types.NativeInterval,
                )>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerHighlightCircleStyle_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'RoadEventsLayerHighlightCircleStyle.toPointer',
    toPlatform:
        '(val) => RoadEventsLayerHighlightCircleStyle.fromPointer(val, needFree: false)')
class RoadEventsLayerHighlightCircleStyle {
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

  /// @nodoc
  @internal
  RoadEventsLayerHighlightCircleStyle.fromNative(
      RoadEventsLayerHighlightCircleStyleNative native)
      : this(
          to_platform.toPlatformColor(native.strokeColor),
          strokeWidth: native.strokeWidth,
          to_platform.toPlatformColor(native.fillColor),
          maximumRadius: native.maximumRadius,
          to_platform.toPlatformTimeInterval(native.animationDuration),
        );

  /// @nodoc
  @internal
  static RoadEventsLayerHighlightCircleStyleNative toNative(
      RoadEventsLayerHighlightCircleStyle c) {
    return _RoadEventsLayerHighlightCircleStyleNativeInit(
      to_native.toNativeColor(c.strokeColor),
      c.strokeWidth,
      to_native.toNativeColor(c.fillColor),
      c.maximumRadius,
      to_native.toNativeTimeInterval(c.animationDuration),
    );
  }

  /// @nodoc
  @internal
  static RoadEventsLayerHighlightCircleStyle? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = RoadEventsLayerHighlightCircleStyle.fromNative(
        ptr.cast<RoadEventsLayerHighlightCircleStyleNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      RoadEventsLayerHighlightCircleStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<RoadEventsLayerHighlightCircleStyleNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'RoadEventsLayerHighlightMode.toPointer',
    toPlatform:
        '(val) => RoadEventsLayerHighlightMode.fromPointer(val, needFree: false)')
enum RoadEventsLayerHighlightMode {
  SoftPulsation,
  HardPulsation,
  ;

  /// @nodoc
  @internal
  static RoadEventsLayerHighlightMode fromInt(core.int val) {
    return RoadEventsLayerHighlightMode.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(RoadEventsLayerHighlightMode e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static RoadEventsLayerHighlightMode? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(RoadEventsLayerHighlightMode? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.WeakInterface('mapkit.road_events_layer.RoadEventStyle')
@bindings_annotations.ContainerData(
    toNative: 'RoadEventsLayerRoadEventStyle.getNativePtr',
    toPlatform:
        '(val) => RoadEventsLayerRoadEventStyle.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class RoadEventsLayerRoadEventStyle implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_RoadEventsLayerRoadEventStyle_free.cast());

  /// @nodoc
  RoadEventsLayerRoadEventStyle.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  RoadEventsLayerRoadEventStyle.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory RoadEventsLayerRoadEventStyle.fromNativePtr(
          ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      RoadEventsLayerRoadEventStyle? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _RoadEventsLayerRoadEventStyle_check(ptr);
  }

  @internal

  /// @nodoc
  static RoadEventsLayerRoadEventStyle? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return RoadEventsLayerRoadEventStyle.fromNativePtr(ptr);
  }

  /// Road event is visible only if current camera zoom is greater or equal
  /// than this value.
  core.int get zoomMin {
    return _RoadEventStyle_get_zoomMin(ptr);
  }

  set zoomMin(core.int val) {
    return _RoadEventStyle_set_zoomMin(ptr, val);
  }

  /// Icon anchor, (0, 0) is top left and (1.0, 1.0) is bottom right.
  math.Point<core.double> get iconAnchor {
    return to_platform.toPlatformPoint(_RoadEventStyle_get_iconAnchor(ptr));
  }

  set iconAnchor(math.Point<core.double> val) {
    return _RoadEventStyle_set_iconAnchor(ptr, to_native.toNativePoint(val));
  }

  /// Piecewise linear scale function. See Placemark's scale function.
  core.List<math.Point<core.double>> get zoomScaleFunction {
    return to_platform
        .toVectorPoint(_RoadEventStyle_get_zoomScaleFunction(ptr));
  }

  set zoomScaleFunction(core.List<math.Point<core.double>> val) {
    return _RoadEventStyle_set_zoomScaleFunction(
        ptr, to_native.toNativeVectorPoint(val));
  }

  /// Style of caption displayed under the road event icon.
  ///
  RoadEventsLayerTextStyle? get captionStyle {
    return RoadEventsLayerTextStyle.fromOptionalPtr(
        _RoadEventStyle_get_captionStyle(ptr));
  }

  set captionStyle(RoadEventsLayerTextStyle? val) {
    return _RoadEventStyle_set_captionStyle(
        ptr, RoadEventsLayerTextStyle.getNativePtr(val));
  }

  /// Pulsation center on road event pin image (see HighlightMode). (0, 0)
  /// is top left and (1.0, 1.0) is bottom right.
  math.Point<core.double> get pulsationCenter {
    return to_platform
        .toPlatformPoint(_RoadEventStyle_get_pulsationCenter(ptr));
  }

  set pulsationCenter(math.Point<core.double> val) {
    return _RoadEventStyle_set_pulsationCenter(
        ptr, to_native.toNativePoint(val));
  }

  /// Road event icon image.
  void setIconImage(image_provider.ImageProvider image) {
    _RoadEventStyle_setIconImage(ptr, to_native.toNativeImageProvider(image));
  }
}

final _RoadEventsLayerRoadEventStyle_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_free');
final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayerRoadEventStyle_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_check')
    .asFunction(isLeaf: true);

final core.int Function(ffi.Pointer<ffi.Void>) _RoadEventStyle_get_zoomMin = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_get_zoomMin')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _RoadEventStyle_set_zoomMin = lib.library
    .lookup<
            ffi
            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_set_zoomMin')
    .asFunction();

final native_types.NativePoint Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStyle_get_iconAnchor = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativePoint Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_get_iconAnchor')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    native_types
        .NativePoint) _RoadEventStyle_set_iconAnchor = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, native_types.NativePoint)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_set_iconAnchor')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStyle_get_zoomScaleFunction = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_get_zoomScaleFunction')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _RoadEventStyle_set_zoomScaleFunction = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_set_zoomScaleFunction')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStyle_get_captionStyle = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_get_captionStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _RoadEventStyle_set_captionStyle = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_set_captionStyle')
    .asFunction();

final native_types.NativePoint Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStyle_get_pulsationCenter = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativePoint Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_get_pulsationCenter')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    native_types
        .NativePoint) _RoadEventStyle_set_pulsationCenter = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, native_types.NativePoint)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_set_pulsationCenter')
    .asFunction();

final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _RoadEventStyle_setIconImage = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_setIconImage')
    .asFunction();

/// Interface that has subset of fields of RoadEvent necessary for
/// providing style.
@bindings_annotations
    .WeakInterface('mapkit.road_events_layer.RoadEventStylingProperties')
@bindings_annotations.ContainerData(
    toNative: 'RoadEventsLayerRoadEventStylingProperties.getNativePtr',
    toPlatform:
        '(val) => RoadEventsLayerRoadEventStylingProperties.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class RoadEventsLayerRoadEventStylingProperties implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(
      _RoadEventsLayerRoadEventStylingProperties_free.cast());

  /// @nodoc
  RoadEventsLayerRoadEventStylingProperties.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  RoadEventsLayerRoadEventStylingProperties.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory RoadEventsLayerRoadEventStylingProperties.fromNativePtr(
          ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      RoadEventsLayerRoadEventStylingProperties? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _RoadEventsLayerRoadEventStylingProperties_check(ptr);
  }

  @internal

  /// @nodoc
  static RoadEventsLayerRoadEventStylingProperties? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return RoadEventsLayerRoadEventStylingProperties.fromNativePtr(ptr);
  }

  /// Set of road event tags.
  core.List<mapkit_road_events_event_tag.RoadEventsEventTag> get tags {
    return mapkit_road_events_event_tag.RoadEventsEventTagContainerExtension
        .toPlatformVector(_RoadEventStylingProperties_get_tags(ptr));
  }

  /// Whether road event will become active in the future. See RoadEvent
  /// for details.
  core.bool get inFuture {
    return _RoadEventStylingProperties_get_inFuture(ptr);
  }

  /// Road event placed on a route. See
  /// RoadEventsLayer.setRoadEventsOnRoute.
  core.bool get onRoute {
    return _RoadEventStylingProperties_get_onRoute(ptr);
  }

  /// Road event was selected by RoadEventsLayer.selectRoadEvent.
  core.bool get selected {
    return _RoadEventStylingProperties_get_selected(ptr);
  }

  /// Currently logged in user is either an author of this road event or
  /// has commented it.
  core.bool get userEvent {
    return _RoadEventStylingProperties_get_userEvent(ptr);
  }

  /// Road events with a high significance can be visible on overview
  /// zooms, while events with low significance usually visible on detailed
  /// zooms only. Significance of a road event can depend on a road
  /// category this event is snapped to, number of comments of this event
  /// and other factors. Two road events with same significance but
  /// different tag sets can be visible on different zoom ranges.
  core.bool hasSignificanceGreaterOrEqual(
      mapkit_road_events_layer_significance.RoadEventSignificance
          significance) {
    return _RoadEventStylingProperties_hasSignificanceGreaterOrEqual(
        ptr,
        mapkit_road_events_layer_significance.RoadEventSignificance.toInt(
            significance));
  }
}

final _RoadEventsLayerRoadEventStylingProperties_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_free');
final core.bool Function(
    ffi.Pointer<
        ffi.Void>) _RoadEventsLayerRoadEventStylingProperties_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStylingProperties_get_tags = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_get_tags')
    .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStylingProperties_get_inFuture = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_get_inFuture')
    .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStylingProperties_get_onRoute = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_get_onRoute')
    .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStylingProperties_get_selected = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_get_selected')
    .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStylingProperties_get_userEvent = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_get_userEvent')
    .asFunction();

final core.bool Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _RoadEventStylingProperties_hasSignificanceGreaterOrEqual = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Bool Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_hasSignificanceGreaterOrEqual')
    .asFunction();

abstract class RoadEventsLayerStyleProvider {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, RoadEventsLayerStyleProvider>{};
  static final _listenerToPointer =
      <RoadEventsLayerStyleProvider, ffi.Pointer<ffi.Void>>{};

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

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _RoadEventsLayerStyleProvider_free(ptr);
    final listener = _pointerToListener[ptr];
    _listenerToPointer.remove(listener);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _renewNonExsistPointer(
      ffi.Pointer<ffi.Void> ptr) {
    if (!_RoadEventsLayerStyleProvider_exists(ptr)) {
      final listener = _pointerToListener[ptr];
      _pointerToListener.remove(ptr);
      _listenerToPointer.remove(listener);
      return _newNativeObject(listener!);
    }
    return ptr;
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(
      RoadEventsLayerStyleProvider obj) {
    final ptr = _RoadEventsLayerStyleProvider_new(
        ffi.Pointer.fromFunction<
            ffi.Bool Function(
              ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>,
              ffi.Bool,
              ffi.Float,
              ffi.Pointer<ffi.Void>,
            )>(_RoadEventsLayerStyleProvider_provideStyle, false),
        ffi.Pointer.fromFunction<
            ffi.Pointer<ffi.Void> Function(
              ffi.Pointer<ffi.Void>,
              ffi.Bool,
              ffi.Int64,
            )>(_RoadEventsLayerStyleProvider_provideHighlightCircleStyle));
    _pointerToListener[ptr] = obj;
    _listenerToPointer[obj] = ptr;
    _RoadEventsLayerStyleProvidersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(RoadEventsLayerStyleProvider? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return _renewNonExsistPointer(foundPointer);
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _RoadEventsLayerStyleProvidersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerStyleProvider_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Bool Function(
              ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>,
              ffi.Bool,
              ffi.Float,
              ffi.Pointer<ffi.Void>,
            )>>,
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Pointer<ffi.Void> Function(
              ffi.Pointer<ffi.Void>,
              ffi.Bool,
              ffi.Int64,
            )>>) _RoadEventsLayerStyleProvider_new = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Bool Function(
                              ffi.Pointer<ffi.Void>,
                              ffi.Pointer<ffi.Void>,
                              ffi.Bool,
                              ffi.Float,
                              ffi.Pointer<ffi.Void>,
                            )>>,
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Pointer<ffi.Void> Function(
                              ffi.Pointer<ffi.Void>,
                              ffi.Bool,
                              ffi.Int64,
                            )>>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerStyleProvider_new')
    .asFunction(isLeaf: true);

final void Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayerStyleProvider_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerStyleProvider_free')
    .asFunction(isLeaf: true);
final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayerStyleProvider_exists = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerStyleProvider_exists')
    .asFunction(isLeaf: true);

core.bool _RoadEventsLayerStyleProvider_provideStyle(
  ffi.Pointer<ffi.Void> _ptr,
  ffi.Pointer<ffi.Void> roadEventStylingProperties,
  core.bool isNightMode,
  core.double scaleFactor,
  ffi.Pointer<ffi.Void> style,
) {
  final listener = RoadEventsLayerStyleProvider._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return listener.provideStyle(
      RoadEventsLayerRoadEventStylingProperties.fromNativePtr(
          roadEventStylingProperties),
      isNightMode,
      scaleFactor,
      RoadEventsLayerRoadEventStyle.fromNativePtr(style),
    );
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

ffi.Pointer<ffi.Void> _RoadEventsLayerStyleProvider_provideHighlightCircleStyle(
  ffi.Pointer<ffi.Void> _ptr,
  core.bool isNightMode,
  core.int highlightMode,
) {
  final listener = RoadEventsLayerStyleProvider._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return RoadEventsLayerHighlightCircleStyle.toPointer(
        listener.provideHighlightCircleStyle(
      isNightMode,
      RoadEventsLayerHighlightMode.fromInt(highlightMode),
    ));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}
