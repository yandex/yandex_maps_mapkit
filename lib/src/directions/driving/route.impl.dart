part of 'route.dart';

final class DrivingSummaryNative extends ffi.Struct {
  external directions_driving_weight.DrivingWeightNative weight;
  external directions_driving_flags.DrivingFlagsNative flags;
  external directions_driving_non_avoided_features
      .DrivingNonAvoidedFeaturesNative nonAvoidedFeatures;
}

final DrivingSummaryNative Function(
        directions_driving_weight.DrivingWeightNative,
        directions_driving_flags.DrivingFlagsNative,
        directions_driving_non_avoided_features.DrivingNonAvoidedFeaturesNative)
    _DrivingSummaryNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingSummaryNative Function(
                        directions_driving_weight.DrivingWeightNative,
                        directions_driving_flags.DrivingFlagsNative,
                        directions_driving_non_avoided_features
                            .DrivingNonAvoidedFeaturesNative)>>(
            'yandex_flutter_directions_driving_DrivingSummary_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingSummaryImpl.toPointer',
    toPlatform: '(val) => DrivingSummaryImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingSummary')
extension DrivingSummaryImpl on DrivingSummary {
  static DrivingSummary fromNative(DrivingSummaryNative native) {
    return DrivingSummary(
        directions_driving_weight.DrivingWeightImpl.fromNative(native.weight),
        directions_driving_flags.DrivingFlagsImpl.fromNative(native.flags),
        directions_driving_non_avoided_features.DrivingNonAvoidedFeaturesImpl
            .fromNative(native.nonAvoidedFeatures));
  }

  static DrivingSummaryNative toNative(DrivingSummary obj) {
    return _DrivingSummaryNativeInit(
        directions_driving_weight.DrivingWeightImpl.toNative(obj.weight),
        directions_driving_flags.DrivingFlagsImpl.toNative(obj.flags),
        directions_driving_non_avoided_features.DrivingNonAvoidedFeaturesImpl
            .toNative(obj.nonAvoidedFeatures));
  }

  static DrivingSummary? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        DrivingSummaryImpl.fromNative(ptr.cast<DrivingSummaryNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingSummary? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingSummaryNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingSectionMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => DrivingSectionMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingSectionMetadata')
final class DrivingSectionMetadataImpl extends DrivingSectionMetadata {
  DrivingSectionMetadataImpl(
      core.int legIndex,
      directions_driving_weight.DrivingWeight weight,
      directions_driving_annotation.DrivingAnnotation annotation,
      core.List<core.int> viaPointPositions)
      : this.fromNativePtr(_DrivingSectionMetadata_init(
            legIndex,
            directions_driving_weight.DrivingWeightImpl.toNative(weight),
            directions_driving_annotation.DrivingAnnotationImpl.getNativePtr(
                annotation),
            to_native.toNativeVectorUint32(viaPointPositions)));

  @core.override
  late final legIndex = _DrivingSectionMetadata_get_legIndex(_ptr);
  @core.override
  late final weight = directions_driving_weight.DrivingWeightImpl.fromNative(
      _DrivingSectionMetadata_get_weight(_ptr));
  @core.override
  late final annotation =
      directions_driving_annotation.DrivingAnnotationImpl.fromNativePtr(
          _DrivingSectionMetadata_get_annotation(_ptr));
  @core.override
  late final viaPointPositions = to_platform
      .toVectorUint32(_DrivingSectionMetadata_get_viaPointPositions(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_DrivingSectionMetadata_free.cast());

  DrivingSectionMetadataImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(DrivingSectionMetadata? obj) {
    return (obj as DrivingSectionMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static DrivingSectionMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : DrivingSectionMetadataImpl.fromNativePtr(ptr);
  }

  static DrivingSectionMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingSectionMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _DrivingSectionMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingSectionMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        core.int,
        directions_driving_weight.DrivingWeightNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingSectionMetadata_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Uint32,
                        directions_driving_weight.DrivingWeightNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingSectionMetadata_init')
        .asFunction(isLeaf: true);

final core.int Function(
    ffi
        .Pointer<ffi.Void>) _DrivingSectionMetadata_get_legIndex = lib.library
    .lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingSectionMetadata_get_legIndex')
    .asFunction(isLeaf: true);
final directions_driving_weight.DrivingWeightNative Function(
    ffi
        .Pointer<ffi.Void>) _DrivingSectionMetadata_get_weight = lib.library
    .lookup<
            ffi.NativeFunction<
                directions_driving_weight.DrivingWeightNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingSectionMetadata_get_weight')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingSectionMetadata_get_annotation = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingSectionMetadata_get_annotation')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingSectionMetadata_get_viaPointPositions = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingSectionMetadata_get_viaPointPositions')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingRoutePointImpl.getNativePtr',
    toPlatform:
        '(val) => DrivingRoutePointImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingRoutePoint')
final class DrivingRoutePointImpl extends DrivingRoutePoint {
  DrivingRoutePointImpl(mapkit_geometry_point.Point position,
      mapkit_geometry_point.Point? selectedArrivalPoint)
      : this.fromNativePtr(_DrivingRoutePoint_init(
            mapkit_geometry_point.PointImpl.toNative(position),
            mapkit_geometry_point.PointImpl.toPointer(selectedArrivalPoint)));

  @core.override
  late final position = mapkit_geometry_point.PointImpl.fromNative(
      _DrivingRoutePoint_get_position(_ptr));
  @core.override
  late final selectedArrivalPoint = mapkit_geometry_point.PointImpl.fromPointer(
      _DrivingRoutePoint_get_selectedArrivalPoint(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingRoutePoint_free.cast());

  DrivingRoutePointImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(DrivingRoutePoint? obj) {
    return (obj as DrivingRoutePointImpl?)?._ptr ?? ffi.nullptr;
  }

  static DrivingRoutePoint? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : DrivingRoutePointImpl.fromNativePtr(ptr);
  }

  static DrivingRoutePoint? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingRoutePointImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _DrivingRoutePoint_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingRoutePoint_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_point.PointNative, ffi.Pointer<ffi.Void>)
    _DrivingRoutePoint_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoutePoint_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_point.PointNative Function(ffi.Pointer<ffi.Void>)
    _DrivingRoutePoint_get_position = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_point.PointNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoutePoint_get_position')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingRoutePoint_get_selectedArrivalPoint = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoutePoint_get_selectedArrivalPoint')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingRouteMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => DrivingRouteMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingRouteMetadata')
final class DrivingRouteMetadataImpl extends DrivingRouteMetadata {
  DrivingRouteMetadataImpl(
      directions_driving_weight.DrivingWeight weight,
      directions_driving_flags.DrivingFlags flags,
      core.List<DrivingRoutePoint> routePoints,
      core.String? uri,
      directions_driving_non_avoided_features.DrivingNonAvoidedFeatures?
          nonAvoidedFeatures)
      : this.fromNativePtr(_DrivingRouteMetadata_init(
            directions_driving_weight.DrivingWeightImpl.toNative(weight),
            directions_driving_flags.DrivingFlagsImpl.toNative(flags),
            DrivingRoutePointContainerExtension.toNativeVector(routePoints),
            to_native.toNativePtrString(uri),
            directions_driving_non_avoided_features
                .DrivingNonAvoidedFeaturesImpl.toPointer(nonAvoidedFeatures)));

  @core.override
  late final weight = directions_driving_weight.DrivingWeightImpl.fromNative(
      _DrivingRouteMetadata_get_weight(_ptr));
  @core.override
  late final flags = directions_driving_flags.DrivingFlagsImpl.fromNative(
      _DrivingRouteMetadata_get_flags(_ptr));
  @core.override
  late final routePoints = DrivingRoutePointContainerExtension.toPlatformVector(
      _DrivingRouteMetadata_get_routePoints(_ptr));
  @core.override
  late final uri = to_platform
      .toPlatformFromPointerString(_DrivingRouteMetadata_get_uri(_ptr));
  @core.override
  late final nonAvoidedFeatures =
      directions_driving_non_avoided_features.DrivingNonAvoidedFeaturesImpl
          .fromPointer(_DrivingRouteMetadata_get_nonAvoidedFeatures(_ptr));

  @core.override
  final _DrivingRouteMetadataFactory runtimeFactory =
      const _DrivingRouteMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_DrivingRouteMetadata_free.cast());

  DrivingRouteMetadataImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(DrivingRouteMetadata? obj) {
    return (obj as DrivingRouteMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static DrivingRouteMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : DrivingRouteMetadataImpl.fromNativePtr(ptr);
  }

  static DrivingRouteMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingRouteMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _DrivingRouteMetadataFactory
    extends struct_factory.StructFactory<DrivingRouteMetadata> {
  const _DrivingRouteMetadataFactory();

  @core.override
  DrivingRouteMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return DrivingRouteMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  DrivingRouteMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return DrivingRouteMetadataImpl.fromNativePtr(
        _DrivingRouteMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(DrivingRouteMetadata obj) {
    return _DrivingRouteMetadata_upcast(
        DrivingRouteMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _DrivingRouteMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingRouteMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRouteMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingRouteMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRouteMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _DrivingRouteMetadata_name = lib
    .library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_directions_driving_DrivingRouteMetadata_name')
    .asFunction(isLeaf: true);

final _DrivingRouteMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingRouteMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        directions_driving_weight.DrivingWeightNative,
        directions_driving_flags.DrivingFlagsNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingRouteMetadata_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        directions_driving_weight.DrivingWeightNative,
                        directions_driving_flags.DrivingFlagsNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRouteMetadata_init')
        .asFunction(isLeaf: true);

final directions_driving_weight.DrivingWeightNative Function(
        ffi.Pointer<ffi.Void>) _DrivingRouteMetadata_get_weight =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    directions_driving_weight.DrivingWeightNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRouteMetadata_get_weight')
        .asFunction(isLeaf: true);
final directions_driving_flags.DrivingFlagsNative Function(
        ffi.Pointer<ffi.Void>) _DrivingRouteMetadata_get_flags =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    directions_driving_flags.DrivingFlagsNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRouteMetadata_get_flags')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingRouteMetadata_get_routePoints = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRouteMetadata_get_routePoints')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingRouteMetadata_get_uri = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRouteMetadata_get_uri')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingRouteMetadata_get_nonAvoidedFeatures = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRouteMetadata_get_nonAvoidedFeatures')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingSectionImpl.getNativePtr',
    toPlatform: '(val) => DrivingSectionImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingSection')
final class DrivingSectionImpl extends DrivingSection {
  DrivingSectionImpl(DrivingSectionMetadata metadata,
      mapkit_geometry_geometry.Subpolyline geometry)
      : this.fromNativePtr(_DrivingSection_init(
            DrivingSectionMetadataImpl.getNativePtr(metadata),
            mapkit_geometry_geometry.SubpolylineImpl.toNative(geometry)));

  @core.override
  late final metadata = DrivingSectionMetadataImpl.fromNativePtr(
      _DrivingSection_get_metadata(_ptr));
  @core.override
  late final geometry = mapkit_geometry_geometry.SubpolylineImpl.fromNative(
      _DrivingSection_get_geometry(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingSection_free.cast());

  DrivingSectionImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(DrivingSection? obj) {
    return (obj as DrivingSectionImpl?)?._ptr ?? ffi.nullptr;
  }

  static DrivingSection? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : DrivingSectionImpl.fromNativePtr(ptr);
  }

  static DrivingSection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingSectionImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _DrivingSection_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingSection_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_geometry.SubpolylineNative)
    _DrivingSection_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_directions_driving_DrivingSection_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingSection_get_metadata = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingSection_get_metadata')
        .asFunction(isLeaf: true);
final mapkit_geometry_geometry.SubpolylineNative Function(ffi.Pointer<ffi.Void>)
    _DrivingSection_get_geometry = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_geometry.SubpolylineNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingSection_get_geometry')
        .asFunction(isLeaf: true);

final class _DrivingConditionsListenerWrapper implements ffi.Finalizable {
  _DrivingConditionsListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_DrivingConditionsListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension DrivingConditionsListenerImpl on DrivingConditionsListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<DrivingConditionsListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<DrivingConditionsListener,
      _DrivingConditionsListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(DrivingConditionsListener obj) {
    final ptr = _DrivingConditionsListener_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _DrivingConditionsListener_onConditionsUpdated),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _DrivingConditionsListener_onConditionsOutdated));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _DrivingConditionsListenerWrapper(ptr);
    _DrivingConditionsListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(DrivingConditionsListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _DrivingConditionsListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_directions_driving_DrivingConditionsListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)
    _DrivingConditionsListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi
                        .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_directions_driving_DrivingConditionsListener_new')
        .asFunction(isLeaf: true);

final _DrivingConditionsListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingConditionsListener_free');
void _DrivingConditionsListener_onConditionsUpdated(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener =
      DrivingConditionsListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onConditionsUpdated();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _DrivingConditionsListener_onConditionsOutdated(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener =
      DrivingConditionsListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onConditionsOutdated();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingEventImpl.getNativePtr',
    toPlatform: '(val) => DrivingEventImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingEvent')
final class DrivingEventImpl extends DrivingEvent {
  DrivingEventImpl(
      mapkit_geometry_geometry.PolylinePosition polylinePosition,
      core.String eventId,
      core.String? descriptionText,
      core.List<mapkit_road_events_event_tag.RoadEventsEventTag> tags,
      mapkit_geometry_point.Point location,
      core.double? speedLimit)
      : this.fromNativePtr(_DrivingEvent_init(
            mapkit_geometry_geometry.PolylinePositionImpl.toNative(
                polylinePosition),
            to_native.toNativeString(eventId),
            to_native.toNativePtrString(descriptionText),
            mapkit_road_events_event_tag.RoadEventsEventTagContainerExtension
                .toNativeVector(tags),
            mapkit_geometry_point.PointImpl.toNative(location),
            to_native.toNativePtrFloat(speedLimit)));

  @core.override
  late final polylinePosition =
      mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
          _DrivingEvent_get_polylinePosition(_ptr));
  @core.override
  late final eventId =
      to_platform.toPlatformString(_DrivingEvent_get_eventId(_ptr));
  @core.override
  late final descriptionText = to_platform
      .toPlatformFromPointerString(_DrivingEvent_get_descriptionText(_ptr));
  @core.override
  late final tags =
      mapkit_road_events_event_tag.RoadEventsEventTagContainerExtension
          .toPlatformVector(_DrivingEvent_get_tags(_ptr));
  @core.override
  late final location = mapkit_geometry_point.PointImpl.fromNative(
      _DrivingEvent_get_location(_ptr));
  @core.override
  late final speedLimit = to_platform
      .toPlatformFromPointerFloat(_DrivingEvent_get_speedLimit(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingEvent_free.cast());

  DrivingEventImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(DrivingEvent? obj) {
    return (obj as DrivingEventImpl?)?._ptr ?? ffi.nullptr;
  }

  static DrivingEvent? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : DrivingEventImpl.fromNativePtr(ptr);
  }

  static DrivingEvent? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        DrivingEventImpl.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _DrivingEvent_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingEvent_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_geometry.PolylinePositionNative,
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        mapkit_geometry_point.PointNative,
        ffi.Pointer<ffi.Void>) _DrivingEvent_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_geometry.PolylinePositionNative,
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingEvent_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_geometry.PolylinePositionNative Function(
    ffi
        .Pointer<ffi.Void>) _DrivingEvent_get_polylinePosition = lib.library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_geometry.PolylinePositionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingEvent_get_polylinePosition')
    .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _DrivingEvent_get_eventId = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingEvent_get_eventId')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingEvent_get_descriptionText = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingEvent_get_descriptionText')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingEvent_get_tags = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingEvent_get_tags')
        .asFunction(isLeaf: true);
final mapkit_geometry_point.PointNative Function(ffi.Pointer<ffi.Void>)
    _DrivingEvent_get_location = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_point.PointNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingEvent_get_location')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingEvent_get_speedLimit = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingEvent_get_speedLimit')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingRouteImpl.getNativePtr',
    toPlatform:
        '(val) => DrivingRouteImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'DrivingRoute')
class DrivingRouteImpl implements DrivingRoute, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingRoute_free.cast());

  /// @nodoc
  DrivingRouteImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  DrivingRouteImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingRoute? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as DrivingRouteImpl).ptr;
  }

  @internal

  /// @nodoc
  static DrivingRoute? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingRouteImpl.fromNativePtr(ptr);
  }

  @core.override
  core.String get routeId {
    final result = _Route_get_routeId(ptr);
    return to_platform.toPlatformString(result);
  }

  @core.override
  DrivingRouteMetadata get metadata {
    final result = _Route_get_metadata(ptr);
    return DrivingRouteMetadataImpl.fromNativePtr(result);
  }

  @core.override
  core.List<DrivingSection> get sections {
    final result = _Route_get_sections(ptr);
    return DrivingSectionContainerExtension.toPlatformVector(result);
  }

  @core.override
  mapkit_geometry_geometry.Polyline get geometry {
    final result = _Route_get_geometry(ptr);
    return mapkit_geometry_geometry.PolylineImpl.fromNativePtr(result);
  }

  @core.override
  core.List<mapkit_navigation_jam_segment.JamSegment> get jamSegments {
    final result = _Route_get_jamSegments(ptr);
    return mapkit_navigation_jam_segment.JamSegmentContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  core.List<DrivingEvent> get events {
    final result = _Route_get_events(ptr);
    return DrivingEventContainerExtension.toPlatformVector(result);
  }

  @core.override
  core.List<core.double?> get speedLimits {
    final result = _Route_get_speedLimits(ptr);
    return to_platform.toVectorFloat(result);
  }

  @core.override
  directions_driving_vehicle_options.DrivingVehicleOptions get vehicleOptions {
    final result = _Route_get_vehicleOptions(ptr);
    return directions_driving_vehicle_options.DrivingVehicleOptionsImpl
        .fromNative(result);
  }

  @core.override
  core.List<directions_driving_lane.DrivingLaneSign> get laneSigns {
    final result = _Route_get_laneSigns(ptr);
    return directions_driving_lane.DrivingLaneSignContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  core.List<directions_driving_direction_signs.DrivingDirectionSign>
      get directionSigns {
    final result = _Route_get_directionSigns(ptr);
    return directions_driving_direction_signs
        .DrivingDirectionSignContainerExtension.toPlatformVector(result);
  }

  @core.override
  core.List<directions_driving_restricted_entry.DrivingRestrictedEntry>
      get restrictedEntries {
    final result = _Route_get_restrictedEntries(ptr);
    return directions_driving_restricted_entry
        .DrivingRestrictedEntryContainerExtension.toPlatformVector(result);
  }

  @core.override
  core.List<directions_driving_traffic_light.DrivingTrafficLight>
      get trafficLights {
    final result = _Route_get_trafficLights(ptr);
    return directions_driving_traffic_light
        .DrivingTrafficLightContainerExtension.toPlatformVector(result);
  }

  @core.override
  core.List<directions_driving_restricted_turn.DrivingRestrictedTurn>
      get restrictedTurns {
    final result = _Route_get_restrictedTurns(ptr);
    return directions_driving_restricted_turn
        .DrivingRestrictedTurnContainerExtension.toPlatformVector(result);
  }

  @core.override
  core.List<directions_driving_railway_crossing.DrivingRailwayCrossing>
      get railwayCrossings {
    final result = _Route_get_railwayCrossings(ptr);
    return directions_driving_railway_crossing
        .DrivingRailwayCrossingContainerExtension.toPlatformVector(result);
  }

  @core.override
  core.List<directions_driving_pedestrian_crossing.DrivingPedestrianCrossing>
      get pedestrianCrossings {
    final result = _Route_get_pedestrianCrossings(ptr);
    return directions_driving_pedestrian_crossing
        .DrivingPedestrianCrossingContainerExtension.toPlatformVector(result);
  }

  @core.override
  core.List<directions_driving_speed_bump.DrivingSpeedBump> get speedBumps {
    final result = _Route_get_speedBumps(ptr);
    return directions_driving_speed_bump.DrivingSpeedBumpContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  core.List<directions_driving_checkpoint.DrivingCheckpoint> get checkpoints {
    final result = _Route_get_checkpoints(ptr);
    return directions_driving_checkpoint.DrivingCheckpointContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  core.List<directions_driving_rugged_road.DrivingRuggedRoad> get ruggedRoads {
    final result = _Route_get_ruggedRoads(ptr);
    return directions_driving_rugged_road.DrivingRuggedRoadContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  core.List<directions_driving_toll_road.DrivingTollRoad> get tollRoads {
    final result = _Route_get_tollRoads(ptr);
    return directions_driving_toll_road.DrivingTollRoadContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  core.List<directions_driving_ford_crossing.DrivingFordCrossing>
      get fordCrossings {
    final result = _Route_get_fordCrossings(ptr);
    return directions_driving_ford_crossing
        .DrivingFordCrossingContainerExtension.toPlatformVector(result);
  }

  @core.override
  core.List<directions_driving_ferry.DrivingFerry> get ferries {
    final result = _Route_get_ferries(ptr);
    return directions_driving_ferry.DrivingFerryContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  core.List<directions_driving_highway.DrivingHighway> get highways {
    final result = _Route_get_highways(ptr);
    return directions_driving_highway.DrivingHighwayContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  core.List<directions_driving_tunnel.DrivingTunnel> get tunnels {
    final result = _Route_get_tunnels(ptr);
    return directions_driving_tunnel.DrivingTunnelContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  core.List<directions_driving_zone_crossing.DrivingZoneCrossing>
      get zoneCrossings {
    final result = _Route_get_zoneCrossings(ptr);
    return directions_driving_zone_crossing
        .DrivingZoneCrossingContainerExtension.toPlatformVector(result);
  }

  @core.override
  core.List<
          directions_driving_vehicle_restrictions.DrivingRoadVehicleRestriction>
      get roadVehicleRestrictions {
    final result = _Route_get_roadVehicleRestrictions(ptr);
    return directions_driving_vehicle_restrictions
            .DrivingRoadVehicleRestrictionContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  core.List<
      directions_driving_vehicle_restrictions
      .DrivingManoeuvreVehicleRestriction> get manoeuvreVehicleRestrictions {
    final result = _Route_get_manoeuvreVehicleRestrictions(ptr);
    return directions_driving_vehicle_restrictions
            .DrivingManoeuvreVehicleRestrictionContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  mapkit_annotations_annotation_lang.AnnotationLanguage?
      get annotationLanguage {
    final result = _Route_get_annotationLanguage(ptr);
    return mapkit_annotations_annotation_lang.AnnotationLanguageImpl
        .fromPointer(result);
  }

  @core.override
  core.List<mapkit_request_point.RequestPoint>? get requestPoints {
    final result = _Route_get_requestPoints(ptr);
    return mapkit_request_point.RequestPointContainerExtension.toPlatformVector(
        result);
  }

  @core.override
  mapkit_geometry_geometry.PolylinePosition get position {
    final result = _Route_get_position(ptr);
    return mapkit_geometry_geometry.PolylinePositionImpl.fromNative(result);
  }

  @core.override
  set position(mapkit_geometry_geometry.PolylinePosition val) {
    _Route_set_position(
        ptr, mapkit_geometry_geometry.PolylinePositionImpl.toNative(val));
  }

  @core.override
  mapkit_navigation_route_position.RoutePosition get routePosition {
    final result = _Route_get_routePosition(ptr);
    return mapkit_navigation_route_position.RoutePositionImpl.fromNativePtr(
        result);
  }

  @core.override
  core.int get legIndex {
    final result = _Route_get_legIndex(ptr);
    return result;
  }

  @core.override
  set legIndex(core.int val) {
    _Route_set_legIndex(ptr, val);
  }

  @core.override
  core.bool get areConditionsOutdated {
    final result = _Route_get_areConditionsOutdated(ptr);
    return result;
  }

  @core.override
  core.List<mapkit_geometry_geometry.PolylinePosition> get wayPoints {
    final result = _Route_get_wayPoints(ptr);
    return mapkit_geometry_geometry.PolylinePositionContainerExtension
        .toPlatformVector(result);
  }

  void addConditionsListener(DrivingConditionsListener conditionsListener) {
    _Route_addConditionsListener(
        ptr, DrivingConditionsListenerImpl.getNativePtr(conditionsListener));
  }

  void removeConditionsListener(DrivingConditionsListener conditionsListener) {
    _Route_removeConditionsListener(
        ptr, DrivingConditionsListenerImpl.getNativePtr(conditionsListener));
  }

  core.int sectionIndex(core.int segmentIndex) {
    final result = _Route_sectionIndex(ptr, segmentIndex);
    return result;
  }

  DrivingRouteMetadata metadataAt(
      mapkit_geometry_geometry.PolylinePosition position) {
    final result = _Route_metadataAt(
        ptr, mapkit_geometry_geometry.PolylinePositionImpl.toNative(position));
    return DrivingRouteMetadataImpl.fromNativePtr(result);
  }

  void requestConditionsUpdate() {
    _Route_requestConditionsUpdate(ptr);
  }
}

final _DrivingRoute_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_free');

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _Route_get_routeId = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_routeId')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_metadata = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_metadata')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_sections = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_sections')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_geometry = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_geometry')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_jamSegments = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_jamSegments')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _Route_get_events =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_events')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_speedLimits = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_speedLimits')
        .asFunction();

final directions_driving_vehicle_options.DrivingVehicleOptionsNative Function(
        ffi.Pointer<ffi.Void>) _Route_get_vehicleOptions =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    directions_driving_vehicle_options
                        .DrivingVehicleOptionsNative
                        Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_vehicleOptions')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_laneSigns = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_laneSigns')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_directionSigns = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_directionSigns')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_restrictedEntries = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_restrictedEntries')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_trafficLights = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_trafficLights')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_restrictedTurns = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_restrictedTurns')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_railwayCrossings = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_railwayCrossings')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_pedestrianCrossings = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_pedestrianCrossings')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_speedBumps = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_speedBumps')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_checkpoints = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_checkpoints')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_ruggedRoads = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_ruggedRoads')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_tollRoads = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_tollRoads')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_fordCrossings = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_fordCrossings')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _Route_get_ferries =
    lib
        .library
        .lookup<
                ffi
                .NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_ferries')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_highways = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_highways')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _Route_get_tunnels =
    lib
        .library
        .lookup<
                ffi
                .NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_tunnels')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_zoneCrossings = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_zoneCrossings')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_roadVehicleRestrictions = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_roadVehicleRestrictions')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_manoeuvreVehicleRestrictions = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_manoeuvreVehicleRestrictions')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_annotationLanguage = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_annotationLanguage')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_requestPoints = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_requestPoints')
        .asFunction();

final mapkit_geometry_geometry.PolylinePositionNative Function(
        ffi.Pointer<ffi.Void>) _Route_get_position =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_geometry.PolylinePositionNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_position')
        .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_geometry.PolylinePositionNative)
    _Route_set_position = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingRoute_set_position')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_routePosition = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_routePosition')
        .asFunction();

final core.int Function(ffi.Pointer<ffi.Void>) _Route_get_legIndex = lib.library
    .lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_legIndex')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _Route_set_legIndex = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint32)>>(
        'yandex_flutter_directions_driving_DrivingRoute_set_legIndex')
    .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_areConditionsOutdated = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_get_areConditionsOutdated')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Route_get_wayPoints = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingRoute_get_wayPoints')
        .asFunction();

final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Route_addConditionsListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_addConditionsListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Route_removeConditionsListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_removeConditionsListener')
    .asFunction();
final core.int Function(ffi.Pointer<ffi.Void>, core.int) _Route_sectionIndex =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Uint32 Function(ffi.Pointer<ffi.Void>, ffi.Uint32)>>(
            'yandex_flutter_directions_driving_DrivingRoute_sectionIndex')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_geometry.PolylinePositionNative)
    _Route_metadataAt = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.PolylinePositionNative)>>(
            'yandex_flutter_directions_driving_DrivingRoute_metadataAt')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Route_requestConditionsUpdate = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingRoute_requestConditionsUpdate')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _DrivingRoute_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_directions_driving_DrivingRoute_set_')
    .asFunction(isLeaf: true);
