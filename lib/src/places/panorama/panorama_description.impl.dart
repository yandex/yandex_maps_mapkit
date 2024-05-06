part of 'panorama_description.dart';

final class PanoramaImageSizeNative extends ffi.Struct {
  @ffi.Uint32()
  external core.int width;
  @ffi.Uint32()
  external core.int height;
}

final PanoramaImageSizeNative Function(core.int, core.int)
    _PanoramaImageSizeNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    PanoramaImageSizeNative Function(ffi.Uint32, ffi.Uint32)>>(
            'yandex_flutter_places_panorama_PanoramaImageSize_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'PanoramaImageSizeImpl.toPointer',
    toPlatform:
        '(val) => PanoramaImageSizeImpl.fromPointer(val, needFree: false)',
    platformType: 'PanoramaImageSize')
extension PanoramaImageSizeImpl on PanoramaImageSize {
  static PanoramaImageSize fromNative(PanoramaImageSizeNative native) {
    return PanoramaImageSize(width: native.width, height: native.height);
  }

  static PanoramaImageSizeNative toNative(PanoramaImageSize obj) {
    return _PanoramaImageSizeNativeInit(obj.width, obj.height);
  }

  static PanoramaImageSize? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = PanoramaImageSizeImpl.fromNative(
        ptr.cast<PanoramaImageSizeNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(PanoramaImageSize? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<PanoramaImageSizeNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'PanoramaTileLevelImpl.toPointer',
    toPlatform:
        '(val) => PanoramaTileLevelImpl.fromPointer(val, needFree: false)',
    platformType: 'PanoramaTileLevel')
final class PanoramaTileLevelImpl implements PanoramaTileLevel {
  PanoramaTileLevelImpl(core.int level, PanoramaImageSize imageSize)
      : this.fromNativePtr(_PanoramaTileLevel_init(
            level, PanoramaImageSizeImpl.toNative(imageSize)));

  @core.override
  late final level = _PanoramaTileLevel_get_level(_ptr);
  @core.override
  late final imageSize =
      PanoramaImageSizeImpl.fromNative(_PanoramaTileLevel_get_imageSize(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_PanoramaTileLevel_free.cast());

  PanoramaTileLevelImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaTileLevel? obj) {
    return (obj as PanoramaTileLevelImpl?)?._ptr ?? ffi.nullptr;
  }

  static PanoramaTileLevel? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : PanoramaTileLevelImpl.fromNativePtr(ptr);
  }

  static PanoramaTileLevel? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = PanoramaTileLevelImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(PanoramaTileLevel? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _PanoramaTileLevel_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _PanoramaTileLevel_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaTileLevel_clone')
        .asFunction(isLeaf: true);

final _PanoramaTileLevel_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_places_panorama_PanoramaTileLevel_free');

final ffi.Pointer<ffi.Void> Function(core.int, PanoramaImageSizeNative)
    _PanoramaTileLevel_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Uint32, PanoramaImageSizeNative)>>(
            'yandex_flutter_places_panorama_PanoramaTileLevel_init')
        .asFunction(isLeaf: true);

final core.int Function(ffi.Pointer<ffi.Void>) _PanoramaTileLevel_get_level =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaTileLevel_get_level')
        .asFunction(isLeaf: true);
final PanoramaImageSizeNative Function(ffi.Pointer<ffi.Void>)
    _PanoramaTileLevel_get_imageSize = lib.library
        .lookup<
                ffi.NativeFunction<
                    PanoramaImageSizeNative Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaTileLevel_get_imageSize')
        .asFunction(isLeaf: true);

final class PanoramaPositionNative extends ffi.Struct {
  external mapkit_geometry_point.PointNative point;
  @ffi.Double()
  external core.double altitude;
}

final PanoramaPositionNative Function(
        mapkit_geometry_point.PointNative, core.double)
    _PanoramaPositionNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    PanoramaPositionNative Function(
                        mapkit_geometry_point.PointNative, ffi.Double)>>(
            'yandex_flutter_places_panorama_PanoramaPosition_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'PanoramaPositionImpl.toPointer',
    toPlatform:
        '(val) => PanoramaPositionImpl.fromPointer(val, needFree: false)',
    platformType: 'PanoramaPosition')
extension PanoramaPositionImpl on PanoramaPosition {
  static PanoramaPosition fromNative(PanoramaPositionNative native) {
    return PanoramaPosition(
        mapkit_geometry_point.PointImpl.fromNative(native.point),
        altitude: native.altitude);
  }

  static PanoramaPositionNative toNative(PanoramaPosition obj) {
    return _PanoramaPositionNativeInit(
        mapkit_geometry_point.PointImpl.toNative(obj.point), obj.altitude);
  }

  static PanoramaPosition? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        PanoramaPositionImpl.fromNative(ptr.cast<PanoramaPositionNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(PanoramaPosition? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<PanoramaPositionNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'PanoramaTextMarkerImpl.toPointer',
    toPlatform:
        '(val) => PanoramaTextMarkerImpl.fromPointer(val, needFree: false)',
    platformType: 'PanoramaTextMarker')
final class PanoramaTextMarkerImpl implements PanoramaTextMarker {
  PanoramaTextMarkerImpl(mapkit_geometry_direction.Direction angularPosition,
      core.String shortLabel, core.String fullLabel)
      : this.fromNativePtr(_PanoramaTextMarker_init(
            mapkit_geometry_direction.DirectionImpl.toNative(angularPosition),
            to_native.toNativeString(shortLabel),
            to_native.toNativeString(fullLabel)));

  @core.override
  late final angularPosition =
      mapkit_geometry_direction.DirectionImpl.fromNative(
          _PanoramaTextMarker_get_angularPosition(_ptr));
  @core.override
  late final shortLabel =
      to_platform.toPlatformString(_PanoramaTextMarker_get_shortLabel(_ptr));
  @core.override
  late final fullLabel =
      to_platform.toPlatformString(_PanoramaTextMarker_get_fullLabel(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaTextMarker_free.cast());

  PanoramaTextMarkerImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaTextMarker? obj) {
    return (obj as PanoramaTextMarkerImpl?)?._ptr ?? ffi.nullptr;
  }

  static PanoramaTextMarker? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : PanoramaTextMarkerImpl.fromNativePtr(ptr);
  }

  static PanoramaTextMarker? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = PanoramaTextMarkerImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(PanoramaTextMarker? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _PanoramaTextMarker_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _PanoramaTextMarker_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaTextMarker_clone')
        .asFunction(isLeaf: true);

final _PanoramaTextMarker_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_places_panorama_PanoramaTextMarker_free');

final ffi.Pointer<ffi.Void> Function(mapkit_geometry_direction.DirectionNative,
        native_types.NativeString, native_types.NativeString)
    _PanoramaTextMarker_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_direction.DirectionNative,
                        native_types.NativeString,
                        native_types.NativeString)>>(
            'yandex_flutter_places_panorama_PanoramaTextMarker_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_direction.DirectionNative Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaTextMarker_get_angularPosition = lib
    .library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_direction.DirectionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaTextMarker_get_angularPosition')
    .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _PanoramaTextMarker_get_shortLabel = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaTextMarker_get_shortLabel')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _PanoramaTextMarker_get_fullLabel = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaTextMarker_get_fullLabel')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'PanoramaCompanyMarkerImpl.toPointer',
    toPlatform:
        '(val) => PanoramaCompanyMarkerImpl.fromPointer(val, needFree: false)',
    platformType: 'PanoramaCompanyMarker')
final class PanoramaCompanyMarkerImpl implements PanoramaCompanyMarker {
  PanoramaCompanyMarkerImpl(mapkit_geometry_direction.Direction angularPosition,
      core.String label, core.String iconId, core.String permalink)
      : this.fromNativePtr(_PanoramaCompanyMarker_init(
            mapkit_geometry_direction.DirectionImpl.toNative(angularPosition),
            to_native.toNativeString(label),
            to_native.toNativeString(iconId),
            to_native.toNativeString(permalink)));

  @core.override
  late final angularPosition =
      mapkit_geometry_direction.DirectionImpl.fromNative(
          _PanoramaCompanyMarker_get_angularPosition(_ptr));
  @core.override
  late final label =
      to_platform.toPlatformString(_PanoramaCompanyMarker_get_label(_ptr));
  @core.override
  late final iconId =
      to_platform.toPlatformString(_PanoramaCompanyMarker_get_iconId(_ptr));
  @core.override
  late final permalink =
      to_platform.toPlatformString(_PanoramaCompanyMarker_get_permalink(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaCompanyMarker_free.cast());

  PanoramaCompanyMarkerImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaCompanyMarker? obj) {
    return (obj as PanoramaCompanyMarkerImpl?)?._ptr ?? ffi.nullptr;
  }

  static PanoramaCompanyMarker? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : PanoramaCompanyMarkerImpl.fromNativePtr(ptr);
  }

  static PanoramaCompanyMarker? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = PanoramaCompanyMarkerImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(PanoramaCompanyMarker? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _PanoramaCompanyMarker_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _PanoramaCompanyMarker_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaCompanyMarker_clone')
        .asFunction(isLeaf: true);

final _PanoramaCompanyMarker_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_places_panorama_PanoramaCompanyMarker_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_direction.DirectionNative,
        native_types.NativeString,
        native_types.NativeString,
        native_types.NativeString) _PanoramaCompanyMarker_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_direction.DirectionNative,
                        native_types.NativeString,
                        native_types.NativeString,
                        native_types.NativeString)>>(
            'yandex_flutter_places_panorama_PanoramaCompanyMarker_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_direction.DirectionNative Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaCompanyMarker_get_angularPosition = lib
    .library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_direction.DirectionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaCompanyMarker_get_angularPosition')
    .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _PanoramaCompanyMarker_get_label = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaCompanyMarker_get_label')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _PanoramaCompanyMarker_get_iconId = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaCompanyMarker_get_iconId')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaCompanyMarker_get_permalink = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaCompanyMarker_get_permalink')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'PanoramaIconMarkerImpl.toPointer',
    toPlatform:
        '(val) => PanoramaIconMarkerImpl.fromPointer(val, needFree: false)',
    platformType: 'PanoramaIconMarker')
final class PanoramaIconMarkerImpl implements PanoramaIconMarker {
  PanoramaIconMarkerImpl(
      mapkit_geometry_direction.Direction angularPosition, core.String iconId)
      : this.fromNativePtr(_PanoramaIconMarker_init(
            mapkit_geometry_direction.DirectionImpl.toNative(angularPosition),
            to_native.toNativeString(iconId)));

  @core.override
  late final angularPosition =
      mapkit_geometry_direction.DirectionImpl.fromNative(
          _PanoramaIconMarker_get_angularPosition(_ptr));
  @core.override
  late final iconId =
      to_platform.toPlatformString(_PanoramaIconMarker_get_iconId(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaIconMarker_free.cast());

  PanoramaIconMarkerImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaIconMarker? obj) {
    return (obj as PanoramaIconMarkerImpl?)?._ptr ?? ffi.nullptr;
  }

  static PanoramaIconMarker? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : PanoramaIconMarkerImpl.fromNativePtr(ptr);
  }

  static PanoramaIconMarker? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = PanoramaIconMarkerImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(PanoramaIconMarker? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _PanoramaIconMarker_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _PanoramaIconMarker_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaIconMarker_clone')
        .asFunction(isLeaf: true);

final _PanoramaIconMarker_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_places_panorama_PanoramaIconMarker_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_direction.DirectionNative, native_types.NativeString)
    _PanoramaIconMarker_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_direction.DirectionNative,
                        native_types.NativeString)>>(
            'yandex_flutter_places_panorama_PanoramaIconMarker_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_direction.DirectionNative Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaIconMarker_get_angularPosition = lib
    .library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_direction.DirectionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaIconMarker_get_angularPosition')
    .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _PanoramaIconMarker_get_iconId = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaIconMarker_get_iconId')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'PanoramaIconConnectionImpl.toPointer',
    toPlatform:
        '(val) => PanoramaIconConnectionImpl.fromPointer(val, needFree: false)',
    platformType: 'PanoramaIconConnection')
final class PanoramaIconConnectionImpl implements PanoramaIconConnection {
  PanoramaIconConnectionImpl(
      mapkit_geometry_direction.Direction angularPosition,
      core.String iconId,
      core.String panoramaId)
      : this.fromNativePtr(_PanoramaIconConnection_init(
            mapkit_geometry_direction.DirectionImpl.toNative(angularPosition),
            to_native.toNativeString(iconId),
            to_native.toNativeString(panoramaId)));

  @core.override
  late final angularPosition =
      mapkit_geometry_direction.DirectionImpl.fromNative(
          _PanoramaIconConnection_get_angularPosition(_ptr));
  @core.override
  late final iconId =
      to_platform.toPlatformString(_PanoramaIconConnection_get_iconId(_ptr));
  @core.override
  late final panoramaId = to_platform
      .toPlatformString(_PanoramaIconConnection_get_panoramaId(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaIconConnection_free.cast());

  PanoramaIconConnectionImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaIconConnection? obj) {
    return (obj as PanoramaIconConnectionImpl?)?._ptr ?? ffi.nullptr;
  }

  static PanoramaIconConnection? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : PanoramaIconConnectionImpl.fromNativePtr(ptr);
  }

  static PanoramaIconConnection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = PanoramaIconConnectionImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(PanoramaIconConnection? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _PanoramaIconConnection_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _PanoramaIconConnection_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaIconConnection_clone')
        .asFunction(isLeaf: true);

final _PanoramaIconConnection_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_places_panorama_PanoramaIconConnection_free');

final ffi.Pointer<ffi.Void> Function(mapkit_geometry_direction.DirectionNative,
        native_types.NativeString, native_types.NativeString)
    _PanoramaIconConnection_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_direction.DirectionNative,
                        native_types.NativeString,
                        native_types.NativeString)>>(
            'yandex_flutter_places_panorama_PanoramaIconConnection_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_direction.DirectionNative Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaIconConnection_get_angularPosition = lib
    .library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_direction.DirectionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaIconConnection_get_angularPosition')
    .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _PanoramaIconConnection_get_iconId = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaIconConnection_get_iconId')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaIconConnection_get_panoramaId = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaIconConnection_get_panoramaId')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'PanoramaArrowConnectionImpl.toPointer',
    toPlatform:
        '(val) => PanoramaArrowConnectionImpl.fromPointer(val, needFree: false)',
    platformType: 'PanoramaArrowConnection')
final class PanoramaArrowConnectionImpl implements PanoramaArrowConnection {
  PanoramaArrowConnectionImpl(
      mapkit_geometry_direction.Direction angularPosition,
      core.String label,
      PanoramaArrowConnectionStyle arrowStyle,
      core.String panoramaId)
      : this.fromNativePtr(_PanoramaArrowConnection_init(
            mapkit_geometry_direction.DirectionImpl.toNative(angularPosition),
            to_native.toNativeString(label),
            PanoramaArrowConnectionStyleImpl.toInt(arrowStyle),
            to_native.toNativeString(panoramaId)));

  @core.override
  late final angularPosition =
      mapkit_geometry_direction.DirectionImpl.fromNative(
          _PanoramaArrowConnection_get_angularPosition(_ptr));
  @core.override
  late final label =
      to_platform.toPlatformString(_PanoramaArrowConnection_get_label(_ptr));
  @core.override
  late final arrowStyle = PanoramaArrowConnectionStyleImpl.fromInt(
      _PanoramaArrowConnection_get_arrowStyle(_ptr));
  @core.override
  late final panoramaId = to_platform
      .toPlatformString(_PanoramaArrowConnection_get_panoramaId(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaArrowConnection_free.cast());

  PanoramaArrowConnectionImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaArrowConnection? obj) {
    return (obj as PanoramaArrowConnectionImpl?)?._ptr ?? ffi.nullptr;
  }

  static PanoramaArrowConnection? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : PanoramaArrowConnectionImpl.fromNativePtr(ptr);
  }

  static PanoramaArrowConnection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = PanoramaArrowConnectionImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(PanoramaArrowConnection? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _PanoramaArrowConnection_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _PanoramaArrowConnection_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaArrowConnection_clone')
        .asFunction(isLeaf: true);

final _PanoramaArrowConnection_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_places_panorama_PanoramaArrowConnection_free');

final ffi.Pointer<ffi.Void> Function(mapkit_geometry_direction.DirectionNative,
        native_types.NativeString, core.int, native_types.NativeString)
    _PanoramaArrowConnection_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_direction.DirectionNative,
                        native_types.NativeString,
                        ffi.Int64,
                        native_types.NativeString)>>(
            'yandex_flutter_places_panorama_PanoramaArrowConnection_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_direction.DirectionNative Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaArrowConnection_get_angularPosition = lib
    .library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_direction.DirectionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaArrowConnection_get_angularPosition')
    .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _PanoramaArrowConnection_get_label = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaArrowConnection_get_label')
        .asFunction(isLeaf: true);
final core.int Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaArrowConnection_get_arrowStyle = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaArrowConnection_get_arrowStyle')
    .asFunction(isLeaf: true);
final native_types.NativeString Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaArrowConnection_get_panoramaId = lib
    .library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaArrowConnection_get_panoramaId')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'PanoramaArrowConnectionStyleImpl.toPointer',
    toPlatform:
        '(val) => PanoramaArrowConnectionStyleImpl.fromPointer(val, needFree: false)',
    platformType: 'PanoramaArrowConnectionStyle')
extension PanoramaArrowConnectionStyleImpl on PanoramaArrowConnectionStyle {
  static core.int toInt(PanoramaArrowConnectionStyle e) {
    return e.index;
  }

  static PanoramaArrowConnectionStyle fromInt(core.int val) {
    return PanoramaArrowConnectionStyle.values[val];
  }

  static PanoramaArrowConnectionStyle? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(PanoramaArrowConnectionStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

final class PanoramaAngularBoundingBoxNative extends ffi.Struct {
  @ffi.Float()
  external core.double left;
  @ffi.Float()
  external core.double top;
  @ffi.Float()
  external core.double right;
  @ffi.Float()
  external core.double bottom;
}

final PanoramaAngularBoundingBoxNative Function(
        core.double, core.double, core.double, core.double)
    _PanoramaAngularBoundingBoxNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    PanoramaAngularBoundingBoxNative Function(
                        ffi.Float, ffi.Float, ffi.Float, ffi.Float)>>(
            'yandex_flutter_places_panorama_PanoramaAngularBoundingBox_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'PanoramaAngularBoundingBoxImpl.toPointer',
    toPlatform:
        '(val) => PanoramaAngularBoundingBoxImpl.fromPointer(val, needFree: false)',
    platformType: 'PanoramaAngularBoundingBox')
extension PanoramaAngularBoundingBoxImpl on PanoramaAngularBoundingBox {
  static PanoramaAngularBoundingBox fromNative(
      PanoramaAngularBoundingBoxNative native) {
    return PanoramaAngularBoundingBox(
        left: native.left,
        top: native.top,
        right: native.right,
        bottom: native.bottom);
  }

  static PanoramaAngularBoundingBoxNative toNative(
      PanoramaAngularBoundingBox obj) {
    return _PanoramaAngularBoundingBoxNativeInit(
        obj.left, obj.top, obj.right, obj.bottom);
  }

  static PanoramaAngularBoundingBox? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = PanoramaAngularBoundingBoxImpl.fromNative(
        ptr.cast<PanoramaAngularBoundingBoxNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(PanoramaAngularBoundingBox? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<PanoramaAngularBoundingBoxNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'PanoramaDescriptionImpl.toPointer',
    toPlatform:
        '(val) => PanoramaDescriptionImpl.fromPointer(val, needFree: false)',
    platformType: 'PanoramaDescription')
final class PanoramaDescriptionImpl implements PanoramaDescription {
  PanoramaDescriptionImpl(
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
      mapkit_attribution.Attribution? attribution)
      : this.fromNativePtr(_PanoramaDescription_init(
            to_native.toNativeString(panoramaId),
            PanoramaPositionImpl.toPointer(position),
            PanoramaAngularBoundingBoxImpl.toNative(angularBBox),
            PanoramaImageSizeImpl.toNative(tileSize),
            PanoramaTileLevelContainerExtension.toNativeVector(tileLevels),
            PanoramaIconMarkerContainerExtension.toNativeVector(iconMarkers),
            PanoramaTextMarkerContainerExtension.toNativeVector(textMarkers),
            PanoramaCompanyMarkerContainerExtension.toNativeVector(
                companyMarkers),
            PanoramaIconConnectionContainerExtension.toNativeVector(
                iconConnections),
            PanoramaArrowConnectionContainerExtension.toNativeVector(
                arrowConnections),
            mapkit_geometry_direction.DirectionImpl.toNative(direction),
            mapkit_geometry_span.SpanImpl.toNative(span),
            mapkit_attribution.AttributionImpl.toPointer(attribution)));

  @core.override
  late final panoramaId =
      to_platform.toPlatformString(_PanoramaDescription_get_panoramaId(_ptr));
  @core.override
  late final position =
      PanoramaPositionImpl.fromPointer(_PanoramaDescription_get_position(_ptr));
  @core.override
  late final angularBBox = PanoramaAngularBoundingBoxImpl.fromNative(
      _PanoramaDescription_get_angularBBox(_ptr));
  @core.override
  late final tileSize =
      PanoramaImageSizeImpl.fromNative(_PanoramaDescription_get_tileSize(_ptr));
  @core.override
  late final tileLevels = PanoramaTileLevelContainerExtension.toPlatformVector(
      _PanoramaDescription_get_tileLevels(_ptr));
  @core.override
  late final iconMarkers =
      PanoramaIconMarkerContainerExtension.toPlatformVector(
          _PanoramaDescription_get_iconMarkers(_ptr));
  @core.override
  late final textMarkers =
      PanoramaTextMarkerContainerExtension.toPlatformVector(
          _PanoramaDescription_get_textMarkers(_ptr));
  @core.override
  late final companyMarkers =
      PanoramaCompanyMarkerContainerExtension.toPlatformVector(
          _PanoramaDescription_get_companyMarkers(_ptr));
  @core.override
  late final iconConnections =
      PanoramaIconConnectionContainerExtension.toPlatformVector(
          _PanoramaDescription_get_iconConnections(_ptr));
  @core.override
  late final arrowConnections =
      PanoramaArrowConnectionContainerExtension.toPlatformVector(
          _PanoramaDescription_get_arrowConnections(_ptr));
  @core.override
  late final direction = mapkit_geometry_direction.DirectionImpl.fromNative(
      _PanoramaDescription_get_direction(_ptr));
  @core.override
  late final span = mapkit_geometry_span.SpanImpl.fromNative(
      _PanoramaDescription_get_span(_ptr));
  @core.override
  late final attribution = mapkit_attribution.AttributionImpl.fromPointer(
      _PanoramaDescription_get_attribution(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaDescription_free.cast());

  PanoramaDescriptionImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaDescription? obj) {
    return (obj as PanoramaDescriptionImpl?)?._ptr ?? ffi.nullptr;
  }

  static PanoramaDescription? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : PanoramaDescriptionImpl.fromNativePtr(ptr);
  }

  static PanoramaDescription? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = PanoramaDescriptionImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(PanoramaDescription? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _PanoramaDescription_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _PanoramaDescription_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaDescription_clone')
        .asFunction(isLeaf: true);

final _PanoramaDescription_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_places_panorama_PanoramaDescription_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        PanoramaAngularBoundingBoxNative,
        PanoramaImageSizeNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        mapkit_geometry_direction.DirectionNative,
        mapkit_geometry_span.SpanNative,
        ffi.Pointer<ffi.Void>) _PanoramaDescription_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        PanoramaAngularBoundingBoxNative,
                        PanoramaImageSizeNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        mapkit_geometry_direction.DirectionNative,
                        mapkit_geometry_span.SpanNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaDescription_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _PanoramaDescription_get_panoramaId = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaDescription_get_panoramaId')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _PanoramaDescription_get_position = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaDescription_get_position')
        .asFunction(isLeaf: true);
final PanoramaAngularBoundingBoxNative Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaDescription_get_angularBBox = lib.library
    .lookup<
            ffi.NativeFunction<
                PanoramaAngularBoundingBoxNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaDescription_get_angularBBox')
    .asFunction(isLeaf: true);
final PanoramaImageSizeNative Function(ffi.Pointer<ffi.Void>)
    _PanoramaDescription_get_tileSize = lib.library
        .lookup<
                ffi.NativeFunction<
                    PanoramaImageSizeNative Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaDescription_get_tileSize')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _PanoramaDescription_get_tileLevels = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaDescription_get_tileLevels')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaDescription_get_iconMarkers = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaDescription_get_iconMarkers')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaDescription_get_textMarkers = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaDescription_get_textMarkers')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaDescription_get_companyMarkers = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaDescription_get_companyMarkers')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaDescription_get_iconConnections = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaDescription_get_iconConnections')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaDescription_get_arrowConnections = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaDescription_get_arrowConnections')
    .asFunction(isLeaf: true);
final mapkit_geometry_direction.DirectionNative Function(ffi.Pointer<ffi.Void>)
    _PanoramaDescription_get_direction = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_direction.DirectionNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaDescription_get_direction')
        .asFunction(isLeaf: true);
final mapkit_geometry_span.SpanNative Function(ffi.Pointer<ffi.Void>)
    _PanoramaDescription_get_span = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_span.SpanNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaDescription_get_span')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _PanoramaDescription_get_attribution = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaDescription_get_attribution')
    .asFunction(isLeaf: true);

final class _PanoramaUserPanoramaEventListenerWrapper
    implements ffi.Finalizable {
  _PanoramaUserPanoramaEventListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaUserPanoramaEventListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension PanoramaUserPanoramaEventListenerImpl
    on PanoramaUserPanoramaEventListener {
  static final _pointerToListener = <ffi.Pointer<ffi.Void>,
      core.WeakReference<PanoramaUserPanoramaEventListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<
      PanoramaUserPanoramaEventListener,
      _PanoramaUserPanoramaEventListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(
      PanoramaUserPanoramaEventListener obj) {
    final ptr = _PanoramaUserPanoramaEventListener_new(ffi.Pointer.fromFunction<
            ffi.Void Function(
                ffi.Pointer<ffi.Void>, native_types.NativeString)>(
        _PanoramaUserPanoramaEventListener_onPanoramaChangeIntent));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _PanoramaUserPanoramaEventListenerWrapper(ptr);
    _PanoramaUserPanoramaEventListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      PanoramaUserPanoramaEventListener? obj) {
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
        .int) _PanoramaUserPanoramaEventListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_places_panorama_PanoramaUserPanoramaEventListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, native_types.NativeString)>>)
    _PanoramaUserPanoramaEventListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<
                            ffi
                            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, native_types.NativeString)>>)>>(
            'yandex_flutter_places_panorama_PanoramaUserPanoramaEventListener_new')
        .asFunction(isLeaf: true);

final _PanoramaUserPanoramaEventListener_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_places_panorama_PanoramaUserPanoramaEventListener_free');
void _PanoramaUserPanoramaEventListener_onPanoramaChangeIntent(
    ffi.Pointer<ffi.Void> _ptr, native_types.NativeString panoramaId) {
  final listener =
      PanoramaUserPanoramaEventListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onPanoramaChangeIntent(to_platform.toPlatformString(panoramaId));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

extension PanoramaTileImageFactoryImpl on PanoramaTileImageFactory {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, PanoramaTileImageFactory>{};
  static final _listenerToPointer =
      <PanoramaTileImageFactory, ffi.Pointer<ffi.Void>>{};

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _PanoramaTileImageFactory_free(ptr);
    final listener = _pointerToListener[ptr];
    _listenerToPointer.remove(listener);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _renewNonExsistPointer(
      ffi.Pointer<ffi.Void> ptr) {
    if (!_PanoramaTileImageFactory_exists(ptr)) {
      final listener = _pointerToListener[ptr];
      _pointerToListener.remove(ptr);
      _listenerToPointer.remove(listener);
      return _newNativeObject(listener!);
    }
    return ptr;
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(PanoramaTileImageFactory obj) {
    final ptr = _PanoramaTileImageFactory_new(ffi.Pointer.fromFunction<
        ffi.Void Function(
            ffi.Pointer<ffi.Void>,
            ffi.Pointer<ffi.Void>,
            native_types.NativeString,
            ffi.Uint32,
            ffi.Uint32,
            ffi.Uint32)>(_PanoramaTileImageFactory_load));
    _pointerToListener[ptr] = obj;
    _listenerToPointer[obj] = ptr;
    _PanoramaTileImageFactorysetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createAsyncExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaTileImageFactory? obj) {
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
        .int) _PanoramaTileImageFactorysetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_places_panorama_PanoramaTileImageFactory_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(
                ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>,
                native_types.NativeString,
                ffi.Uint32,
                ffi.Uint32,
                ffi.Uint32)>>) _PanoramaTileImageFactory_new = lib.library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, native_types.NativeString, ffi.Uint32, ffi.Uint32, ffi.Uint32)>>)>>(
        'yandex_flutter_places_panorama_PanoramaTileImageFactory_new')
    .asFunction(isLeaf: true);

final void Function(ffi.Pointer<ffi.Void>) _PanoramaTileImageFactory_free = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaTileImageFactory_free')
    .asFunction(isLeaf: true);
final core.bool Function(ffi.Pointer<ffi.Void>)
    _PanoramaTileImageFactory_exists = lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaTileImageFactory_exists')
        .asFunction(isLeaf: true);

void _PanoramaTileImageFactory_load(
    ffi.Pointer<ffi.Void> _ptr,
    ffi.Pointer<ffi.Void> _onResult,
    native_types.NativeString panoramaId,
    core.int x,
    core.int y,
    core.int tileLevel) {
  final listener = PanoramaTileImageFactoryImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }

  listener.load(to_platform.toPlatformString(panoramaId), x, y, tileLevel).then(
      (result) => _PanoramaTileImageFactoryloadInvokeOnResult(
          _onResult, to_native.toNativePtrImageProvider(result)),
      onError: (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
  });
}

final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _PanoramaTileImageFactoryloadInvokeOnResult = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaTileImageFactory_load_invokeOnResult')
    .asFunction(isLeaf: true);

extension PanoramaIconImageFactoryImpl on PanoramaIconImageFactory {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, PanoramaIconImageFactory>{};
  static final _listenerToPointer =
      <PanoramaIconImageFactory, ffi.Pointer<ffi.Void>>{};

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _PanoramaIconImageFactory_free(ptr);
    final listener = _pointerToListener[ptr];
    _listenerToPointer.remove(listener);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _renewNonExsistPointer(
      ffi.Pointer<ffi.Void> ptr) {
    if (!_PanoramaIconImageFactory_exists(ptr)) {
      final listener = _pointerToListener[ptr];
      _pointerToListener.remove(ptr);
      _listenerToPointer.remove(listener);
      return _newNativeObject(listener!);
    }
    return ptr;
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(PanoramaIconImageFactory obj) {
    final ptr = _PanoramaIconImageFactory_new(ffi.Pointer.fromFunction<
        ffi.Void Function(
            ffi.Pointer<ffi.Void>,
            ffi.Pointer<ffi.Void>,
            native_types.NativeString,
            ffi.Double)>(_PanoramaIconImageFactory_load));
    _pointerToListener[ptr] = obj;
    _listenerToPointer[obj] = ptr;
    _PanoramaIconImageFactorysetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createAsyncExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaIconImageFactory? obj) {
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
        .int) _PanoramaIconImageFactorysetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_places_panorama_PanoramaIconImageFactory_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(
                ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>,
                native_types.NativeString,
                ffi.Double)>>) _PanoramaIconImageFactory_new = lib.library
    .lookup<
            ffi
            .NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, native_types.NativeString, ffi.Double)>>)>>(
        'yandex_flutter_places_panorama_PanoramaIconImageFactory_new')
    .asFunction(isLeaf: true);

final void Function(ffi.Pointer<ffi.Void>) _PanoramaIconImageFactory_free = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaIconImageFactory_free')
    .asFunction(isLeaf: true);
final core.bool Function(ffi.Pointer<ffi.Void>)
    _PanoramaIconImageFactory_exists = lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaIconImageFactory_exists')
        .asFunction(isLeaf: true);

void _PanoramaIconImageFactory_load(
    ffi.Pointer<ffi.Void> _ptr,
    ffi.Pointer<ffi.Void> _onResult,
    native_types.NativeString iconId,
    core.double scale) {
  final listener = PanoramaIconImageFactoryImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }

  listener.load(to_platform.toPlatformString(iconId), scale).then(
      (result) => _PanoramaIconImageFactoryloadInvokeOnResult(
          _onResult, to_native.toNativePtrImageProvider(result)),
      onError: (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
  });
}

final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _PanoramaIconImageFactoryloadInvokeOnResult = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaIconImageFactory_load_invokeOnResult')
    .asFunction(isLeaf: true);

extension PanoramaTileUrlProviderImpl on PanoramaTileUrlProvider {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, PanoramaTileUrlProvider>{};
  static final _listenerToPointer =
      <PanoramaTileUrlProvider, ffi.Pointer<ffi.Void>>{};

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _PanoramaTileUrlProvider_free(ptr);
    final listener = _pointerToListener[ptr];
    _listenerToPointer.remove(listener);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _renewNonExsistPointer(
      ffi.Pointer<ffi.Void> ptr) {
    if (!_PanoramaTileUrlProvider_exists(ptr)) {
      final listener = _pointerToListener[ptr];
      _pointerToListener.remove(ptr);
      _listenerToPointer.remove(listener);
      return _newNativeObject(listener!);
    }
    return ptr;
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(PanoramaTileUrlProvider obj) {
    final ptr = _PanoramaTileUrlProvider_new(ffi.Pointer.fromFunction<
        native_types.NativeString Function(
            ffi.Pointer<ffi.Void>,
            native_types.NativeString,
            ffi.Uint32,
            ffi.Uint32,
            ffi.Uint32)>(_PanoramaTileUrlProvider_formatUrl));
    _pointerToListener[ptr] = obj;
    _listenerToPointer[obj] = ptr;
    _PanoramaTileUrlProvidersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaTileUrlProvider? obj) {
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
        .int) _PanoramaTileUrlProvidersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_places_panorama_PanoramaTileUrlProvider_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.NativeFunction<
            native_types.NativeString Function(
                ffi.Pointer<ffi.Void>,
                native_types.NativeString,
                ffi.Uint32,
                ffi.Uint32,
                ffi.Uint32)>>) _PanoramaTileUrlProvider_new = lib.library
    .lookup<
            ffi
            .NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.NativeFunction<native_types.NativeString Function(ffi.Pointer<ffi.Void>, native_types.NativeString, ffi.Uint32, ffi.Uint32, ffi.Uint32)>>)>>(
        'yandex_flutter_places_panorama_PanoramaTileUrlProvider_new')
    .asFunction(isLeaf: true);

final void Function(ffi.Pointer<ffi.Void>) _PanoramaTileUrlProvider_free = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaTileUrlProvider_free')
    .asFunction(isLeaf: true);
final core.bool Function(ffi.Pointer<ffi.Void>)
    _PanoramaTileUrlProvider_exists = lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaTileUrlProvider_exists')
        .asFunction(isLeaf: true);

native_types.NativeString _PanoramaTileUrlProvider_formatUrl(
    ffi.Pointer<ffi.Void> _ptr,
    native_types.NativeString panoramaId,
    core.int x,
    core.int y,
    core.int tileLevel) {
  final listener = PanoramaTileUrlProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return to_native.toNativeString(listener.formatUrl(
        to_platform.toPlatformString(panoramaId), x, y, tileLevel));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

extension PanoramaIconUrlProviderImpl on PanoramaIconUrlProvider {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, PanoramaIconUrlProvider>{};
  static final _listenerToPointer =
      <PanoramaIconUrlProvider, ffi.Pointer<ffi.Void>>{};

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _PanoramaIconUrlProvider_free(ptr);
    final listener = _pointerToListener[ptr];
    _listenerToPointer.remove(listener);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _renewNonExsistPointer(
      ffi.Pointer<ffi.Void> ptr) {
    if (!_PanoramaIconUrlProvider_exists(ptr)) {
      final listener = _pointerToListener[ptr];
      _pointerToListener.remove(ptr);
      _listenerToPointer.remove(listener);
      return _newNativeObject(listener!);
    }
    return ptr;
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(PanoramaIconUrlProvider obj) {
    final ptr = _PanoramaIconUrlProvider_new(ffi.Pointer.fromFunction<
        native_types.NativeString Function(
            ffi.Pointer<ffi.Void>,
            native_types.NativeString,
            ffi.Double)>(_PanoramaIconUrlProvider_formatUrl));
    _pointerToListener[ptr] = obj;
    _listenerToPointer[obj] = ptr;
    _PanoramaIconUrlProvidersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaIconUrlProvider? obj) {
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
        .int) _PanoramaIconUrlProvidersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_places_panorama_PanoramaIconUrlProvider_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.NativeFunction<
            native_types.NativeString Function(
                ffi.Pointer<ffi.Void>,
                native_types.NativeString,
                ffi.Double)>>) _PanoramaIconUrlProvider_new = lib.library
    .lookup<
            ffi
            .NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.NativeFunction<native_types.NativeString Function(ffi.Pointer<ffi.Void>, native_types.NativeString, ffi.Double)>>)>>(
        'yandex_flutter_places_panorama_PanoramaIconUrlProvider_new')
    .asFunction(isLeaf: true);

final void Function(ffi.Pointer<ffi.Void>) _PanoramaIconUrlProvider_free = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaIconUrlProvider_free')
    .asFunction(isLeaf: true);
final core.bool Function(ffi.Pointer<ffi.Void>)
    _PanoramaIconUrlProvider_exists = lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaIconUrlProvider_exists')
        .asFunction(isLeaf: true);

native_types.NativeString _PanoramaIconUrlProvider_formatUrl(
    ffi.Pointer<ffi.Void> _ptr,
    native_types.NativeString iconId,
    core.double scale) {
  final listener = PanoramaIconUrlProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return to_native.toNativeString(
        listener.formatUrl(to_platform.toPlatformString(iconId), scale));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}
