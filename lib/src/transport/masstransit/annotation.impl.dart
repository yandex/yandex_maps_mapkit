part of 'annotation.dart';

@bindings_annotations.ContainerData(
    toNative: 'MasstransitActionIDImpl.toPointer',
    toPlatform:
        '(val) => MasstransitActionIDImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitActionID')
extension MasstransitActionIDImpl on MasstransitActionID {
  static core.int toInt(MasstransitActionID e) {
    return e.index;
  }

  static MasstransitActionID fromInt(core.int val) {
    return MasstransitActionID.values[val];
  }

  static MasstransitActionID? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(MasstransitActionID? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitLandmarkIDImpl.toPointer',
    toPlatform:
        '(val) => MasstransitLandmarkIDImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitLandmarkID')
extension MasstransitLandmarkIDImpl on MasstransitLandmarkID {
  static core.int toInt(MasstransitLandmarkID e) {
    return e.index;
  }

  static MasstransitLandmarkID fromInt(core.int val) {
    return MasstransitLandmarkID.values[val];
  }

  static MasstransitLandmarkID? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(MasstransitLandmarkID? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

final class MasstransitToponymNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> toponym;
  external ffi.Pointer<ffi.Void> accusativeToponym;
}

final MasstransitToponymNative Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _MasstransitToponymNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    MasstransitToponymNative Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitToponym_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitToponymImpl.toPointer',
    toPlatform:
        '(val) => MasstransitToponymImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitToponym')
extension MasstransitToponymImpl on MasstransitToponym {
  static MasstransitToponym fromNative(MasstransitToponymNative native) {
    return MasstransitToponym(
        toponym: to_platform.toPlatformFromPointerString(native.toponym),
        accusativeToponym:
            to_platform.toPlatformFromPointerString(native.accusativeToponym));
  }

  static MasstransitToponymNative toNative(MasstransitToponym obj) {
    return _MasstransitToponymNativeInit(
        to_native.toNativePtrString(obj.toponym),
        to_native.toNativePtrString(obj.accusativeToponym));
  }

  static MasstransitToponym? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitToponymImpl.fromNative(
        ptr.cast<MasstransitToponymNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitToponym? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitToponymNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitAnnotationImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitAnnotationImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitAnnotation')
final class MasstransitAnnotationImpl extends MasstransitAnnotation {
  MasstransitAnnotationImpl(
      mapkit_geometry_geometry.PolylinePosition position,
      MasstransitActionID? action,
      MasstransitLandmarkID? landmark,
      MasstransitToponym? toponym)
      : this.fromNativePtr(_MasstransitAnnotation_init(
            mapkit_geometry_geometry.PolylinePositionImpl.toNative(position),
            MasstransitActionIDImpl.toPointer(action),
            MasstransitLandmarkIDImpl.toPointer(landmark),
            MasstransitToponymImpl.toPointer(toponym)));

  @core.override
  late final position =
      mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
          _MasstransitAnnotation_get_position(_ptr));
  @core.override
  late final action = MasstransitActionIDImpl.fromPointer(
      _MasstransitAnnotation_get_action(_ptr));
  @core.override
  late final landmark = MasstransitLandmarkIDImpl.fromPointer(
      _MasstransitAnnotation_get_landmark(_ptr));
  @core.override
  late final toponym = MasstransitToponymImpl.fromPointer(
      _MasstransitAnnotation_get_toponym(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitAnnotation_free.cast());

  MasstransitAnnotationImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitAnnotation? obj) {
    return (obj as MasstransitAnnotationImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitAnnotation? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitAnnotationImpl.fromNativePtr(ptr);
  }

  static MasstransitAnnotation? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitAnnotationImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _MasstransitAnnotation_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitAnnotation_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_geometry.PolylinePositionNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _MasstransitAnnotation_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_geometry.PolylinePositionNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitAnnotation_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_geometry.PolylinePositionNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitAnnotation_get_position = lib.library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_geometry.PolylinePositionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitAnnotation_get_position')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitAnnotation_get_action = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitAnnotation_get_action')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitAnnotation_get_landmark = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitAnnotation_get_landmark')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitAnnotation_get_toponym = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitAnnotation_get_toponym')
    .asFunction(isLeaf: true);
