part of 'transport_metadata.dart';

@bindings_annotations.ContainerData(
    toNative: 'RawTransportStopImpl.getNativePtr',
    toPlatform:
        '(val) => RawTransportStopImpl.fromPointer(val, needFree: false)',
    platformType: 'RawTransportStop')
final class RawTransportStopImpl extends RawTransportStop {
  RawTransportStopImpl(transport_masstransit_common.MasstransitStop stop,
      mapkit_geometry_geometry.PolylinePosition position)
      : this.fromNativePtr(_RawTransportStop_init(
            transport_masstransit_common.MasstransitStopImpl.getNativePtr(stop),
            mapkit_geometry_geometry.PolylinePositionImpl.toNative(position)));

  @core.override
  late final stop =
      transport_masstransit_common.MasstransitStopImpl.fromNativePtr(
          _RawTransportStop_get_stop(_ptr));
  @core.override
  late final position =
      mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
          _RawTransportStop_get_position(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_RawTransportStop_free.cast());

  RawTransportStopImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(RawTransportStop? obj) {
    return (obj as RawTransportStopImpl?)?._ptr ?? ffi.nullptr;
  }

  static RawTransportStop? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : RawTransportStopImpl.fromNativePtr(ptr);
  }

  static RawTransportStop? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = RawTransportStopImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _RawTransportStop_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_internal_RawTransportStop_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    mapkit_geometry_geometry
        .PolylinePositionNative) _RawTransportStop_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                    mapkit_geometry_geometry.PolylinePositionNative)>>(
        'yandex_flutter_transport_masstransit_internal_RawTransportStop_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RawTransportStop_get_stop = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_RawTransportStop_get_stop')
    .asFunction(isLeaf: true);
final mapkit_geometry_geometry.PolylinePositionNative Function(
    ffi
        .Pointer<ffi.Void>) _RawTransportStop_get_position = lib.library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_geometry.PolylinePositionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_RawTransportStop_get_position')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'TransportStopMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => TransportStopMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'TransportStopMetadata')
final class TransportStopMetadataImpl extends TransportStopMetadata {
  TransportStopMetadataImpl(
      core.List<TransportStopMetadataTransportStopInfo> transportStopInfo)
      : this.fromNativePtr(_TransportStopMetadata_init(
            TransportStopMetadataTransportStopInfoContainerExtension
                .toNativeVector(transportStopInfo)));

  @core.override
  late final transportStopInfo =
      TransportStopMetadataTransportStopInfoContainerExtension.toPlatformVector(
          _TransportStopMetadata_get_transportStopInfo(_ptr));

  @core.override
  final _TransportStopMetadataFactory runtimeFactory =
      const _TransportStopMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_TransportStopMetadata_free.cast());

  TransportStopMetadataImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(TransportStopMetadata? obj) {
    return (obj as TransportStopMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static TransportStopMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : TransportStopMetadataImpl.fromNativePtr(ptr);
  }

  static TransportStopMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = TransportStopMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _TransportStopMetadataFactory
    extends struct_factory.StructFactory<TransportStopMetadata> {
  const _TransportStopMetadataFactory();

  @core.override
  TransportStopMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return TransportStopMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  TransportStopMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return TransportStopMetadataImpl.fromNativePtr(
        _TransportStopMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(TransportStopMetadata obj) {
    return _TransportStopMetadata_upcast(
        TransportStopMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _TransportStopMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _TransportStopMetadata_downcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TransportStopMetadata_downcast')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _TransportStopMetadata_upcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TransportStopMetadata_upcast')
    .asFunction(isLeaf: true);

final native_types.NativeString Function() _TransportStopMetadata_name = lib
    .library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_transport_masstransit_internal_TransportStopMetadata_name')
    .asFunction(isLeaf: true);

final _TransportStopMetadata_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_transport_masstransit_internal_TransportStopMetadata_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _TransportStopMetadata_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TransportStopMetadata_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _TransportStopMetadata_get_transportStopInfo = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TransportStopMetadata_get_transportStopInfo')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'TransportStopMetadataTransportStopInfoImpl.getNativePtr',
    toPlatform:
        '(val) => TransportStopMetadataTransportStopInfoImpl.fromPointer(val, needFree: false)',
    platformType: 'TransportStopMetadataTransportStopInfo')
final class TransportStopMetadataTransportStopInfoImpl
    extends TransportStopMetadataTransportStopInfo {
  TransportStopMetadataTransportStopInfoImpl(
      core.List<core.String> threadIds, core.List<RawTransportStop> stops)
      : this.fromNativePtr(_TransportStopMetadataTransportStopInfo_init(
            to_native.toNativeVectorString(threadIds),
            RawTransportStopContainerExtension.toNativeVector(stops)));

  @core.override
  late final threadIds = to_platform.toVectorString(
      _TransportStopMetadataTransportStopInfo_get_threadIds(_ptr));
  @core.override
  late final stops = RawTransportStopContainerExtension.toPlatformVector(
      _TransportStopMetadataTransportStopInfo_get_stops(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_TransportStopMetadataTransportStopInfo_free.cast());

  TransportStopMetadataTransportStopInfoImpl.fromNativePtr(this._ptr)
      : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      TransportStopMetadataTransportStopInfo? obj) {
    return (obj as TransportStopMetadataTransportStopInfoImpl?)?._ptr ??
        ffi.nullptr;
  }

  static TransportStopMetadataTransportStopInfo? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : TransportStopMetadataTransportStopInfoImpl.fromNativePtr(ptr);
  }

  static TransportStopMetadataTransportStopInfo? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = TransportStopMetadataTransportStopInfoImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _TransportStopMetadataTransportStopInfo_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_transport_masstransit_internal_TransportStopMetadata_TransportStopMetadataTransportStopInfo_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _TransportStopMetadataTransportStopInfo_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TransportStopMetadata_TransportStopMetadataTransportStopInfo_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _TransportStopMetadataTransportStopInfo_get_threadIds = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TransportStopMetadata_TransportStopMetadataTransportStopInfo_get_threadIds')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _TransportStopMetadataTransportStopInfo_get_stops = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TransportStopMetadata_TransportStopMetadataTransportStopInfo_get_stops')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'TransportGeometryMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => TransportGeometryMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'TransportGeometryMetadata')
final class TransportGeometryMetadataImpl extends TransportGeometryMetadata {
  TransportGeometryMetadataImpl(
      core.List<TransportGeometryMetadataTransportGeometry> transportGeometry)
      : this.fromNativePtr(_TransportGeometryMetadata_init(
            TransportGeometryMetadataTransportGeometryContainerExtension
                .toNativeVector(transportGeometry)));

  @core.override
  late final transportGeometry =
      TransportGeometryMetadataTransportGeometryContainerExtension
          .toPlatformVector(
              _TransportGeometryMetadata_get_transportGeometry(_ptr));

  @core.override
  final _TransportGeometryMetadataFactory runtimeFactory =
      const _TransportGeometryMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_TransportGeometryMetadata_free.cast());

  TransportGeometryMetadataImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(TransportGeometryMetadata? obj) {
    return (obj as TransportGeometryMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static TransportGeometryMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : TransportGeometryMetadataImpl.fromNativePtr(ptr);
  }

  static TransportGeometryMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = TransportGeometryMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _TransportGeometryMetadataFactory
    extends struct_factory.StructFactory<TransportGeometryMetadata> {
  const _TransportGeometryMetadataFactory();

  @core.override
  TransportGeometryMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return TransportGeometryMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  TransportGeometryMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return TransportGeometryMetadataImpl.fromNativePtr(
        _TransportGeometryMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(TransportGeometryMetadata obj) {
    return _TransportGeometryMetadata_upcast(
        TransportGeometryMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _TransportGeometryMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _TransportGeometryMetadata_downcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TransportGeometryMetadata_downcast')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _TransportGeometryMetadata_upcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TransportGeometryMetadata_upcast')
    .asFunction(isLeaf: true);

final native_types.NativeString Function() _TransportGeometryMetadata_name = lib
    .library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_transport_masstransit_internal_TransportGeometryMetadata_name')
    .asFunction(isLeaf: true);

final _TransportGeometryMetadata_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_transport_masstransit_internal_TransportGeometryMetadata_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _TransportGeometryMetadata_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TransportGeometryMetadata_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _TransportGeometryMetadata_get_transportGeometry = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TransportGeometryMetadata_get_transportGeometry')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'TransportGeometryMetadataTransportGeometryImpl.getNativePtr',
    toPlatform:
        '(val) => TransportGeometryMetadataTransportGeometryImpl.fromPointer(val, needFree: false)',
    platformType: 'TransportGeometryMetadataTransportGeometry')
final class TransportGeometryMetadataTransportGeometryImpl
    extends TransportGeometryMetadataTransportGeometry {
  TransportGeometryMetadataTransportGeometryImpl(
      core.List<core.String> threadIds,
      mapkit_geometry_geometry.Polyline geometry)
      : this.fromNativePtr(_TransportGeometryMetadataTransportGeometry_init(
            to_native.toNativeVectorString(threadIds),
            mapkit_geometry_geometry.PolylineImpl.getNativePtr(geometry)));

  @core.override
  late final threadIds = to_platform.toVectorString(
      _TransportGeometryMetadataTransportGeometry_get_threadIds(_ptr));
  @core.override
  late final geometry = mapkit_geometry_geometry.PolylineImpl.fromNativePtr(
      _TransportGeometryMetadataTransportGeometry_get_geometry(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(
      _TransportGeometryMetadataTransportGeometry_free.cast());

  TransportGeometryMetadataTransportGeometryImpl.fromNativePtr(this._ptr)
      : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      TransportGeometryMetadataTransportGeometry? obj) {
    return (obj as TransportGeometryMetadataTransportGeometryImpl?)?._ptr ??
        ffi.nullptr;
  }

  static TransportGeometryMetadataTransportGeometry? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : TransportGeometryMetadataTransportGeometryImpl.fromNativePtr(ptr);
  }

  static TransportGeometryMetadataTransportGeometry? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = TransportGeometryMetadataTransportGeometryImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _TransportGeometryMetadataTransportGeometry_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_transport_masstransit_internal_TransportGeometryMetadata_TransportGeometryMetadataTransportGeometry_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<
        ffi.Void>) _TransportGeometryMetadataTransportGeometry_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TransportGeometryMetadata_TransportGeometryMetadataTransportGeometry_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi
        .Void>) _TransportGeometryMetadataTransportGeometry_get_threadIds = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TransportGeometryMetadata_TransportGeometryMetadataTransportGeometry_get_threadIds')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi
        .Void>) _TransportGeometryMetadataTransportGeometry_get_geometry = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TransportGeometryMetadata_TransportGeometryMetadataTransportGeometry_get_geometry')
    .asFunction(isLeaf: true);
