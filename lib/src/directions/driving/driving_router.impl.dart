part of 'driving_router.dart';

@bindings_annotations
    .WeakInterface('directions.driving.TooComplexAvoidedZonesError')
@bindings_annotations.ContainerData(
    toNative: 'DrivingTooComplexAvoidedZonesErrorImpl.getNativePtr',
    toPlatform:
        '(val) => DrivingTooComplexAvoidedZonesErrorImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'DrivingTooComplexAvoidedZonesError')
class DrivingTooComplexAvoidedZonesErrorImpl extends runtime_error.ErrorImpl
    implements DrivingTooComplexAvoidedZonesError, ffi.Finalizable {
  static final _finalizer =
      ffi.NativeFinalizer(_DrivingTooComplexAvoidedZonesError_free.cast());

  /// @nodoc
  DrivingTooComplexAvoidedZonesErrorImpl.fromExternalPtr(
      ffi.Pointer<ffi.Void> ptr)
      : super.fromExternalPtr(ptr);

  /// @nodoc
  @internal
  DrivingTooComplexAvoidedZonesErrorImpl.fromNativePtrImpl(
      ffi.Pointer<ffi.Void> ptr)
      : super.fromExternalPtr(ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory DrivingTooComplexAvoidedZonesErrorImpl.fromNativePtr(
          ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      DrivingTooComplexAvoidedZonesError? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as DrivingTooComplexAvoidedZonesErrorImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _DrivingTooComplexAvoidedZonesError_check(ptr);
  }

  @internal

  /// @nodoc
  static DrivingTooComplexAvoidedZonesError? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingTooComplexAvoidedZonesErrorImpl.fromNativePtr(ptr);
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

final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _DrivingTooComplexAvoidedZonesError_set = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_directions_driving_DrivingTooComplexAvoidedZonesError_set_')
    .asFunction(isLeaf: true);

final class DrivingOptionsNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> initialAzimuth;
  external ffi.Pointer<ffi.Void> routesCount;
  external ffi.Pointer<ffi.Void> departureTime;
  external ffi.Pointer<ffi.Void> annotationLanguage;
  external ffi.Pointer<ffi.Void> avoidanceFlags;
}

final DrivingOptionsNative Function(
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
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingOptions_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingOptionsImpl.toPointer',
    toPlatform: '(val) => DrivingOptionsImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingOptions')
extension DrivingOptionsImpl on DrivingOptions {
  static DrivingOptions fromNative(DrivingOptionsNative native) {
    return DrivingOptions(
        initialAzimuth:
            to_platform.toPlatformFromPointerDouble(native.initialAzimuth),
        routesCount: to_platform.toPlatformFromPointerInt(native.routesCount),
        departureTime:
            to_platform.toPlatformFromPointerAbsTimestamp(native.departureTime),
        annotationLanguage: mapkit_annotations_annotation_lang
            .AnnotationLanguageImpl.fromPointer(native.annotationLanguage),
        avoidanceFlags: directions_driving_avoidance_flags
            .DrivingAvoidanceFlagsImpl.fromPointer(native.avoidanceFlags));
  }

  static DrivingOptionsNative toNative(DrivingOptions obj) {
    return _DrivingOptionsNativeInit(
        to_native.toNativePtrDouble(obj.initialAzimuth),
        to_native.toNativePtrInt(obj.routesCount),
        to_native.toNativePtrAbsTimestamp(obj.departureTime),
        mapkit_annotations_annotation_lang.AnnotationLanguageImpl.toPointer(
            obj.annotationLanguage),
        directions_driving_avoidance_flags.DrivingAvoidanceFlagsImpl.toPointer(
            obj.avoidanceFlags));
  }

  static DrivingOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        DrivingOptionsImpl.fromNative(ptr.cast<DrivingOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingOptionsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingRouterTypeImpl.toPointer',
    toPlatform:
        '(val) => DrivingRouterTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingRouterType')
extension DrivingRouterTypeImpl on DrivingRouterType {
  static core.int toInt(DrivingRouterType e) {
    return e.index;
  }

  static DrivingRouterType fromInt(core.int val) {
    return DrivingRouterType.values[val];
  }

  static DrivingRouterType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingRouterType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingRouterImpl.getNativePtr',
    toPlatform:
        '(val) => DrivingRouterImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'DrivingRouter')
class DrivingRouterImpl implements DrivingRouter, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingRouter_free.cast());

  /// @nodoc
  DrivingRouterImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  DrivingRouterImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingRouter? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as DrivingRouterImpl).ptr;
  }

  @internal

  /// @nodoc
  static DrivingRouter? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingRouterImpl.fromNativePtr(ptr);
  }

  directions_driving_session.DrivingSession requestRoutes(
    DrivingOptions drivingOptions,
    directions_driving_vehicle_options.DrivingVehicleOptions vehicleOptions,
    directions_driving_session.DrivingSessionRouteListener routeListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  }) {
    final result = _DrivingRouter_requestRoutes(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      DrivingOptionsImpl.toNative(drivingOptions),
      directions_driving_vehicle_options.DrivingVehicleOptionsImpl.toNative(
          vehicleOptions),
      directions_driving_session.DrivingSessionRouteListenerImpl.getNativePtr(
          routeListener),
    );
    return directions_driving_session.DrivingSessionImpl.fromNativePtr(result);
  }

  directions_driving_session.DrivingSession matchRoute(
      mapkit_geometry_geometry.Polyline polyline,
      DrivingOptions drivingOptions,
      directions_driving_vehicle_options.DrivingVehicleOptions vehicleOptions,
      directions_driving_session.DrivingSessionRouteListener routeListener) {
    final result = _DrivingRouter_matchRoute(
        ptr,
        mapkit_geometry_geometry.PolylineImpl.getNativePtr(polyline),
        DrivingOptionsImpl.toNative(drivingOptions),
        directions_driving_vehicle_options.DrivingVehicleOptionsImpl.toNative(
            vehicleOptions),
        directions_driving_session.DrivingSessionRouteListenerImpl.getNativePtr(
            routeListener));
    return directions_driving_session.DrivingSessionImpl.fromNativePtr(result);
  }

  directions_driving_session.DrivingSummarySession requestRoutesSummary(
    DrivingOptions drivingOptions,
    directions_driving_vehicle_options.DrivingVehicleOptions vehicleOptions,
    directions_driving_session.DrivingSummarySessionSummaryListener
        summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  }) {
    final result = _DrivingRouter_requestRoutesSummary(
      ptr,
      mapkit_request_point.RequestPointContainerExtension.toNativeVector(
          points),
      DrivingOptionsImpl.toNative(drivingOptions),
      directions_driving_vehicle_options.DrivingVehicleOptionsImpl.toNative(
          vehicleOptions),
      directions_driving_session.DrivingSummarySessionSummaryListenerImpl
          .getNativePtr(summaryListener),
    );
    return directions_driving_session.DrivingSummarySessionImpl.fromNativePtr(
        result);
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
        ffi.Pointer<ffi.Void>) _DrivingRouter_matchRoute =
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
            'yandex_flutter_directions_driving_DrivingRouter_matchRoute')
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
final void Function(ffi.Pointer<ffi.Void>, core.int) _DrivingRouter_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_directions_driving_DrivingRouter_set_')
    .asFunction(isLeaf: true);
