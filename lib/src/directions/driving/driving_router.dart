import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_mapkit/src/directions/driving/session.dart'
    as directions_driving_session;
import 'package:yandex_maps_mapkit/src/directions/driving/vehicle_options.dart'
    as directions_driving_vehicle_options;
import 'package:yandex_maps_mapkit/src/mapkit/annotations/annotation_lang.dart'
    as mapkit_annotations_annotation_lang;
import 'package:yandex_maps_mapkit/src/mapkit/request_point.dart'
    as mapkit_request_point;
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as runtime_error;

part 'driving_router.containers.dart';

@bindings_annotations
    .WeakInterface('directions.driving.TooComplexAvoidedZonesError')
@bindings_annotations.ContainerData(
    toNative: 'DrivingTooComplexAvoidedZonesError.getNativePtr',
    toPlatform:
        '(val) => DrivingTooComplexAvoidedZonesError.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class DrivingTooComplexAvoidedZonesError extends runtime_error.Error
    implements ffi.Finalizable {
  static final _finalizer =
      ffi.NativeFinalizer(_DrivingTooComplexAvoidedZonesError_free.cast());

  /// @nodoc
  DrivingTooComplexAvoidedZonesError.fromExternalPtr(ffi.Pointer<ffi.Void> ptr)
      : super.fromExternalPtr(ptr);

  /// @nodoc
  @internal
  DrivingTooComplexAvoidedZonesError.fromNativePtrImpl(
      ffi.Pointer<ffi.Void> ptr)
      : super.fromExternalPtr(ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory DrivingTooComplexAvoidedZonesError.fromNativePtr(
          ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      DrivingTooComplexAvoidedZonesError? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _DrivingTooComplexAvoidedZonesError_check(ptr);
  }

  @internal

  /// @nodoc
  static DrivingTooComplexAvoidedZonesError? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingTooComplexAvoidedZonesError.fromNativePtr(ptr);
  }
}

final _DrivingTooComplexAvoidedZonesError_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_directions_driving_DrivingTooComplexAvoidedZonesError_free');
final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _DrivingTooComplexAvoidedZonesError_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingTooComplexAvoidedZonesError_check')
    .asFunction(isLeaf: true);

/// @nodoc
final class DrivingOptionsNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> initialAzimuth;
  external ffi.Pointer<ffi.Void> routesCount;
  external ffi.Pointer<ffi.Void> avoidTolls;
  external ffi.Pointer<ffi.Void> avoidUnpaved;
  external ffi.Pointer<ffi.Void> avoidPoorConditions;
  external ffi.Pointer<ffi.Void> departureTime;
  external ffi.Pointer<ffi.Void> annotationLanguage;
}

final DrivingOptionsNative Function(
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingOptionsNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingOptionsNative Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingOptions_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingOptions.toPointer',
    toPlatform: '(val) => DrivingOptions.fromPointer(val, needFree: false)')
class DrivingOptions {
  final core.double? initialAzimuth;
  final core.int? routesCount;
  final core.bool? avoidTolls;
  final core.bool? avoidUnpaved;
  final core.bool? avoidPoorConditions;
  final core.DateTime? departureTime;
  final mapkit_annotations_annotation_lang.AnnotationLanguage?
      annotationLanguage;

  const DrivingOptions({
    this.initialAzimuth,
    this.routesCount,
    this.avoidTolls,
    this.avoidUnpaved,
    this.avoidPoorConditions,
    this.departureTime,
    this.annotationLanguage,
  });

  /// @nodoc
  @internal
  DrivingOptions.fromNative(DrivingOptionsNative native)
      : this(
            initialAzimuth:
                to_platform.toPlatformFromPointerDouble(native.initialAzimuth),
            routesCount:
                to_platform.toPlatformFromPointerInt(native.routesCount),
            avoidTolls:
                to_platform.toPlatformFromPointerBool(native.avoidTolls),
            avoidUnpaved:
                to_platform.toPlatformFromPointerBool(native.avoidUnpaved),
            avoidPoorConditions: to_platform
                .toPlatformFromPointerBool(native.avoidPoorConditions),
            departureTime: to_platform
                .toPlatformFromPointerAbsTimestamp(native.departureTime),
            annotationLanguage: mapkit_annotations_annotation_lang
                .AnnotationLanguage.fromPointer(native.annotationLanguage));

  /// @nodoc
  @internal
  static DrivingOptionsNative toNative(DrivingOptions c) {
    return _DrivingOptionsNativeInit(
        to_native.toNativePtrDouble(c.initialAzimuth),
        to_native.toNativePtrInt(c.routesCount),
        to_native.toNativePtrBool(c.avoidTolls),
        to_native.toNativePtrBool(c.avoidUnpaved),
        to_native.toNativePtrBool(c.avoidPoorConditions),
        to_native.toNativePtrAbsTimestamp(c.departureTime),
        mapkit_annotations_annotation_lang.AnnotationLanguage.toPointer(
            c.annotationLanguage));
  }

  /// @nodoc
  @internal
  static DrivingOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        DrivingOptions.fromNative(ptr.cast<DrivingOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingOptionsNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// Driving router type.
@bindings_annotations.ContainerData(
    toNative: 'DrivingRouterType.toPointer',
    toPlatform: '(val) => DrivingRouterType.fromPointer(val, needFree: false)')
enum DrivingRouterType {
  /// Online driving router. Always tries to use online router even if
  /// network is not available.
  Online,

  /// Offline driving router. Always tries to use offline router even if
  /// network is available.
  Offline,

  /// Combined driving router. Decision to use online or offline router is
  /// based on internal timeout. If server manages to respond within given
  /// time, then online router result is returned. Otherwise uses offline
  /// router.  Will combine online and offline router result in single
  /// session (hence the name). Timeout logic is applied on each resubmit
  /// until first response from offline router is returned to the listener.
  /// After that timeout is reduced to zero for all following resubmits.
  Combined,
  ;

  /// @nodoc
  @internal
  static DrivingRouterType fromInt(core.int val) {
    return DrivingRouterType.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(DrivingRouterType e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static DrivingRouterType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(DrivingRouterType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// Interface for the driving router.
@bindings_annotations.ContainerData(
    toNative: 'DrivingRouter.getNativePtr',
    toPlatform:
        '(val) => DrivingRouter.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class DrivingRouter implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingRouter_free.cast());

  /// @nodoc
  DrivingRouter.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  DrivingRouter.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingRouter? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static DrivingRouter? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingRouter.fromNativePtr(ptr);
  }

  /// Builds a route.
  ///
  /// [points] Route points.
  /// [drivingOptions] Driving options.
  /// [vehicleOptions] Vehicle options.
  /// [routeListener] Route listener object.
  directions_driving_session.DrivingSession requestRoutes(
    DrivingOptions drivingOptions,
    directions_driving_vehicle_options.DrivingVehicleOptions vehicleOptions,
    directions_driving_session.DrivingSessionRouteListener routeListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  }) {
    return directions_driving_session.DrivingSession.fromNativePtr(
        _DrivingRouter_requestRoutes(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      DrivingOptions.toNative(drivingOptions),
      directions_driving_vehicle_options.DrivingVehicleOptions.toNative(
          vehicleOptions),
      directions_driving_session.DrivingSessionRouteListener.getNativePtr(
          routeListener),
    ));
  }

  /// Creates a route summary.
  ///
  /// [points] Route points.
  /// [drivingOptions] Driving options.
  /// [vehicleOptions] Vehicle options.
  /// [summaryListener] Summary listener object.
  directions_driving_session.DrivingSummarySession requestRoutesSummary(
    DrivingOptions drivingOptions,
    directions_driving_vehicle_options.DrivingVehicleOptions vehicleOptions,
    directions_driving_session.DrivingSummarySessionSummaryListener
        summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  }) {
    return directions_driving_session.DrivingSummarySession.fromNativePtr(
        _DrivingRouter_requestRoutesSummary(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      DrivingOptions.toNative(drivingOptions),
      directions_driving_vehicle_options.DrivingVehicleOptions.toNative(
          vehicleOptions),
      directions_driving_session.DrivingSummarySessionSummaryListener
          .getNativePtr(summaryListener),
    ));
  }
}

final _DrivingRouter_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRouter_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        DrivingOptionsNative,
        directions_driving_vehicle_options.DrivingVehicleOptionsNative,
        ffi.Pointer<ffi.Void>) _DrivingRouter_requestRoutes =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        DrivingOptionsNative,
                        directions_driving_vehicle_options
                            .DrivingVehicleOptionsNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRouter_requestRoutes')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    DrivingOptionsNative,
    directions_driving_vehicle_options.DrivingVehicleOptionsNative,
    ffi
        .Pointer<ffi.Void>) _DrivingRouter_requestRoutesSummary = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    DrivingOptionsNative,
                    directions_driving_vehicle_options.DrivingVehicleOptionsNative,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRouter_requestRoutesSummary')
    .asFunction();
