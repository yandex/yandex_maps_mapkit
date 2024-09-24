part of 'route.dart';

final class BicycleConstructionSegmentNative extends ffi.Struct {
  @ffi.Int64()
  external core.int construction;
  external mapkit_geometry_geometry.SubpolylineNative subpolyline;
}

final BicycleConstructionSegmentNative Function(
        core.int, mapkit_geometry_geometry.SubpolylineNative)
    _BicycleConstructionSegmentNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    BicycleConstructionSegmentNative Function(ffi.Int64,
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_transport_bicycle_BicycleConstructionSegment_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'BicycleConstructionSegmentImpl.toPointer',
    toPlatform:
        '(val) => BicycleConstructionSegmentImpl.fromPointer(val, needFree: false)',
    platformType: 'BicycleConstructionSegment')
extension BicycleConstructionSegmentImpl on BicycleConstructionSegment {
  static BicycleConstructionSegment fromNative(
      BicycleConstructionSegmentNative native) {
    return BicycleConstructionSegment(
        transport_bicycle_construction.BicycleConstructionIDImpl.fromInt(
            native.construction),
        mapkit_geometry_geometry.SubpolylineImpl.fromNative(
            native.subpolyline));
  }

  static BicycleConstructionSegmentNative toNative(
      BicycleConstructionSegment obj) {
    return _BicycleConstructionSegmentNativeInit(
        transport_bicycle_construction.BicycleConstructionIDImpl.toInt(
            obj.construction),
        mapkit_geometry_geometry.SubpolylineImpl.toNative(obj.subpolyline));
  }

  static BicycleConstructionSegment? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = BicycleConstructionSegmentImpl.fromNative(
        ptr.cast<BicycleConstructionSegmentNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(BicycleConstructionSegment? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<BicycleConstructionSegmentNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class BicycleTrafficTypeSegmentNative extends ffi.Struct {
  @ffi.Int64()
  external core.int trafficType;
  external mapkit_geometry_geometry.SubpolylineNative subpolyline;
}

final BicycleTrafficTypeSegmentNative Function(
        core.int, mapkit_geometry_geometry.SubpolylineNative)
    _BicycleTrafficTypeSegmentNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    BicycleTrafficTypeSegmentNative Function(ffi.Int64,
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_transport_bicycle_BicycleTrafficTypeSegment_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'BicycleTrafficTypeSegmentImpl.toPointer',
    toPlatform:
        '(val) => BicycleTrafficTypeSegmentImpl.fromPointer(val, needFree: false)',
    platformType: 'BicycleTrafficTypeSegment')
extension BicycleTrafficTypeSegmentImpl on BicycleTrafficTypeSegment {
  static BicycleTrafficTypeSegment fromNative(
      BicycleTrafficTypeSegmentNative native) {
    return BicycleTrafficTypeSegment(
        transport_bicycle_traffic_type.BicycleTrafficTypeIDImpl.fromInt(
            native.trafficType),
        mapkit_geometry_geometry.SubpolylineImpl.fromNative(
            native.subpolyline));
  }

  static BicycleTrafficTypeSegmentNative toNative(
      BicycleTrafficTypeSegment obj) {
    return _BicycleTrafficTypeSegmentNativeInit(
        transport_bicycle_traffic_type.BicycleTrafficTypeIDImpl.toInt(
            obj.trafficType),
        mapkit_geometry_geometry.SubpolylineImpl.toNative(obj.subpolyline));
  }

  static BicycleTrafficTypeSegment? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = BicycleTrafficTypeSegmentImpl.fromNative(
        ptr.cast<BicycleTrafficTypeSegmentNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(BicycleTrafficTypeSegment? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<BicycleTrafficTypeSegmentNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'BicycleRouteImpl.getNativePtr',
    toPlatform:
        '(val) => BicycleRouteImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'BicycleRoute')
class BicycleRouteImpl implements BicycleRoute, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleRoute_free.cast());

  /// @nodoc
  BicycleRouteImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  BicycleRouteImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleRoute? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as BicycleRouteImpl).ptr;
  }

  @internal

  /// @nodoc
  static BicycleRoute? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BicycleRouteImpl.fromNativePtr(ptr);
  }

  @core.override
  transport_bicycle_weight.BicycleWeight get weight {
    final result = _Route_get_weight(ptr);
    return transport_bicycle_weight.BicycleWeightImpl.fromNative(result);
  }

  @core.override
  core.List<transport_bicycle_section.BicycleSection> get sections {
    final result = _Route_get_sections(ptr);
    return transport_bicycle_section.BicycleSectionContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  core.List<transport_bicycle_leg.BicycleLeg> get legs {
    final result = _Route_get_legs(ptr);
    return transport_bicycle_leg.BicycleLegContainerExtension.toPlatformVector(
        result);
  }

  @core.override
  mapkit_geometry_geometry.Polyline get geometry {
    final result = _Route_get_geometry(ptr);
    return mapkit_geometry_geometry.PolylineImpl.fromNativePtr(result);
  }

  @core.override
  transport_bicycle_flags.BicycleFlags? get flags {
    final result = _Route_get_flags(ptr);
    return transport_bicycle_flags.BicycleFlagsImpl.fromPointer(result);
  }

  @core.override
  core.List<BicycleConstructionSegment> get constructions {
    final result = _Route_get_constructions(ptr);
    return BicycleConstructionSegmentContainerExtension.toPlatformVector(
        result);
  }

  @core.override
  core.List<BicycleTrafficTypeSegment> get trafficTypes {
    final result = _Route_get_trafficTypes(ptr);
    return BicycleTrafficTypeSegmentContainerExtension.toPlatformVector(result);
  }

  @core.override
  core.List<transport_bicycle_restricted_entry.BicycleRestrictedEntry>
      get restrictedEntries {
    final result = _Route_get_restrictedEntries(ptr);
    return transport_bicycle_restricted_entry
        .BicycleRestrictedEntryContainerExtension.toPlatformVector(result);
  }

  @core.override
  core.List<transport_bicycle_intermediate_points.BicycleViaPoint>
      get viaPoints {
    final result = _Route_get_viaPoints(ptr);
    return transport_bicycle_intermediate_points
        .BicycleViaPointContainerExtension.toPlatformVector(result);
  }

  @core.override
  core.List<transport_bicycle_intermediate_points.BicycleWayPoint>
      get wayPoints {
    final result = _Route_get_wayPoints(ptr);
    return transport_bicycle_intermediate_points
        .BicycleWayPointContainerExtension.toPlatformVector(result);
  }

  @core.override
  mapkit_uri_uri_object_metadata.UriObjectMetadata get uriMetadata {
    final result = _Route_get_uriMetadata(ptr);
    return mapkit_uri_uri_object_metadata.UriObjectMetadataImpl.fromNativePtr(
        result);
  }

  @core.override
  core.String? get routeId {
    final result = _Route_get_routeId(ptr);
    return to_platform.toPlatformFromPointerString(result);
  }
}

final _BicycleRoute_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_bicycle_BicycleRoute_free');

final transport_bicycle_weight.BicycleWeightNative Function(
        ffi.Pointer<ffi.Void>) _Route_get_weight =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    transport_bicycle_weight.BicycleWeightNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_weight')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_sections = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_sections')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _Route_get_legs =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_legs')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_geometry = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_geometry')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _Route_get_flags =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_flags')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_constructions = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_constructions')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_trafficTypes = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_trafficTypes')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_restrictedEntries = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_bicycle_BicycleRoute_get_restrictedEntries')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_viaPoints = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_viaPoints')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_wayPoints = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_wayPoints')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_uriMetadata = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_uriMetadata')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _Route_get_routeId =
    lib
        .library
        .lookup<
                ffi
                .NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleRoute_get_routeId')
        .asFunction();

final void Function(ffi.Pointer<ffi.Void>, core.int) _BicycleRoute_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_transport_bicycle_BicycleRoute_set_')
    .asFunction(isLeaf: true);
