import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
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

/// @nodoc
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
    toNative: 'PanoramaImageSize.toPointer',
    toPlatform: '(val) => PanoramaImageSize.fromPointer(val, needFree: false)')
class PanoramaImageSize {
  final core.int width;
  final core.int height;

  const PanoramaImageSize({
    required this.width,
    required this.height,
  });

  /// @nodoc
  @internal
  PanoramaImageSize.fromNative(PanoramaImageSizeNative native)
      : this(width: native.width, height: native.height);

  /// @nodoc
  @internal
  static PanoramaImageSizeNative toNative(PanoramaImageSize c) {
    return _PanoramaImageSizeNativeInit(c.width, c.height);
  }

  /// @nodoc
  @internal
  static PanoramaImageSize? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        PanoramaImageSize.fromNative(ptr.cast<PanoramaImageSizeNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(PanoramaImageSize? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<PanoramaImageSizeNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'PanoramaTileLevel.toPointer',
    toPlatform: '(val) => PanoramaTileLevel.fromPointer(val, needFree: false)')
class PanoramaTileLevel implements ffi.Finalizable {
  late final level = _PanoramaTileLevel_get_level(_ptr);
  late final imageSize =
      PanoramaImageSize.fromNative(_PanoramaTileLevel_get_imageSize(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_PanoramaTileLevel_free.cast());

  PanoramaTileLevel(core.int level, PanoramaImageSize imageSize)
      : this.fromNativePtr(_PanoramaTileLevel_init(
            level, PanoramaImageSize.toNative(imageSize)));

  /// @nodoc
  @internal
  PanoramaTileLevel.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaTileLevel? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static PanoramaTileLevel? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaTileLevel.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static PanoramaTileLevel? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = PanoramaTileLevel.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
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

/// @nodoc
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
    toNative: 'PanoramaPosition.toPointer',
    toPlatform: '(val) => PanoramaPosition.fromPointer(val, needFree: false)')
class PanoramaPosition {
  final mapkit_geometry_point.Point point;
  final core.double altitude;

  const PanoramaPosition(
    this.point, {
    required this.altitude,
  });

  /// @nodoc
  @internal
  PanoramaPosition.fromNative(PanoramaPositionNative native)
      : this(mapkit_geometry_point.Point.fromNative(native.point),
            altitude: native.altitude);

  /// @nodoc
  @internal
  static PanoramaPositionNative toNative(PanoramaPosition c) {
    return _PanoramaPositionNativeInit(
        mapkit_geometry_point.Point.toNative(c.point), c.altitude);
  }

  /// @nodoc
  @internal
  static PanoramaPosition? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        PanoramaPosition.fromNative(ptr.cast<PanoramaPositionNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(PanoramaPosition? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<PanoramaPositionNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'PanoramaTextMarker.toPointer',
    toPlatform: '(val) => PanoramaTextMarker.fromPointer(val, needFree: false)')
class PanoramaTextMarker implements ffi.Finalizable {
  late final angularPosition = mapkit_geometry_direction.Direction.fromNative(
      _PanoramaTextMarker_get_angularPosition(_ptr));
  late final shortLabel =
      to_platform.toPlatformString(_PanoramaTextMarker_get_shortLabel(_ptr));
  late final fullLabel =
      to_platform.toPlatformString(_PanoramaTextMarker_get_fullLabel(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaTextMarker_free.cast());

  PanoramaTextMarker(mapkit_geometry_direction.Direction angularPosition,
      core.String shortLabel, core.String fullLabel)
      : this.fromNativePtr(_PanoramaTextMarker_init(
            mapkit_geometry_direction.Direction.toNative(angularPosition),
            to_native.toNativeString(shortLabel),
            to_native.toNativeString(fullLabel)));

  /// @nodoc
  @internal
  PanoramaTextMarker.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaTextMarker? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static PanoramaTextMarker? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaTextMarker.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static PanoramaTextMarker? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = PanoramaTextMarker.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
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
    toNative: 'PanoramaCompanyMarker.toPointer',
    toPlatform:
        '(val) => PanoramaCompanyMarker.fromPointer(val, needFree: false)')
class PanoramaCompanyMarker implements ffi.Finalizable {
  late final angularPosition = mapkit_geometry_direction.Direction.fromNative(
      _PanoramaCompanyMarker_get_angularPosition(_ptr));
  late final label =
      to_platform.toPlatformString(_PanoramaCompanyMarker_get_label(_ptr));
  late final iconId =
      to_platform.toPlatformString(_PanoramaCompanyMarker_get_iconId(_ptr));
  late final permalink =
      to_platform.toPlatformString(_PanoramaCompanyMarker_get_permalink(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaCompanyMarker_free.cast());

  PanoramaCompanyMarker(mapkit_geometry_direction.Direction angularPosition,
      core.String label, core.String iconId, core.String permalink)
      : this.fromNativePtr(_PanoramaCompanyMarker_init(
            mapkit_geometry_direction.Direction.toNative(angularPosition),
            to_native.toNativeString(label),
            to_native.toNativeString(iconId),
            to_native.toNativeString(permalink)));

  /// @nodoc
  @internal
  PanoramaCompanyMarker.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaCompanyMarker? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static PanoramaCompanyMarker? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaCompanyMarker.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static PanoramaCompanyMarker? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = PanoramaCompanyMarker.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
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
    toNative: 'PanoramaIconMarker.toPointer',
    toPlatform: '(val) => PanoramaIconMarker.fromPointer(val, needFree: false)')
class PanoramaIconMarker implements ffi.Finalizable {
  late final angularPosition = mapkit_geometry_direction.Direction.fromNative(
      _PanoramaIconMarker_get_angularPosition(_ptr));
  late final iconId =
      to_platform.toPlatformString(_PanoramaIconMarker_get_iconId(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaIconMarker_free.cast());

  PanoramaIconMarker(
      mapkit_geometry_direction.Direction angularPosition, core.String iconId)
      : this.fromNativePtr(_PanoramaIconMarker_init(
            mapkit_geometry_direction.Direction.toNative(angularPosition),
            to_native.toNativeString(iconId)));

  /// @nodoc
  @internal
  PanoramaIconMarker.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaIconMarker? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static PanoramaIconMarker? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaIconMarker.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static PanoramaIconMarker? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = PanoramaIconMarker.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
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
    toNative: 'PanoramaIconConnection.toPointer',
    toPlatform:
        '(val) => PanoramaIconConnection.fromPointer(val, needFree: false)')
class PanoramaIconConnection implements ffi.Finalizable {
  late final angularPosition = mapkit_geometry_direction.Direction.fromNative(
      _PanoramaIconConnection_get_angularPosition(_ptr));
  late final iconId =
      to_platform.toPlatformString(_PanoramaIconConnection_get_iconId(_ptr));
  late final panoramaId = to_platform
      .toPlatformString(_PanoramaIconConnection_get_panoramaId(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaIconConnection_free.cast());

  PanoramaIconConnection(mapkit_geometry_direction.Direction angularPosition,
      core.String iconId, core.String panoramaId)
      : this.fromNativePtr(_PanoramaIconConnection_init(
            mapkit_geometry_direction.Direction.toNative(angularPosition),
            to_native.toNativeString(iconId),
            to_native.toNativeString(panoramaId)));

  /// @nodoc
  @internal
  PanoramaIconConnection.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaIconConnection? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static PanoramaIconConnection? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaIconConnection.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static PanoramaIconConnection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = PanoramaIconConnection.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
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
    toNative: 'PanoramaArrowConnection.toPointer',
    toPlatform:
        '(val) => PanoramaArrowConnection.fromPointer(val, needFree: false)')
class PanoramaArrowConnection implements ffi.Finalizable {
  late final angularPosition = mapkit_geometry_direction.Direction.fromNative(
      _PanoramaArrowConnection_get_angularPosition(_ptr));
  late final label =
      to_platform.toPlatformString(_PanoramaArrowConnection_get_label(_ptr));
  late final arrowStyle = PanoramaArrowConnectionStyle.fromInt(
      _PanoramaArrowConnection_get_arrowStyle(_ptr));
  late final panoramaId = to_platform
      .toPlatformString(_PanoramaArrowConnection_get_panoramaId(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaArrowConnection_free.cast());

  PanoramaArrowConnection(
      mapkit_geometry_direction.Direction angularPosition,
      core.String label,
      PanoramaArrowConnectionStyle arrowStyle,
      core.String panoramaId)
      : this.fromNativePtr(_PanoramaArrowConnection_init(
            mapkit_geometry_direction.Direction.toNative(angularPosition),
            to_native.toNativeString(label),
            PanoramaArrowConnectionStyle.toInt(arrowStyle),
            to_native.toNativeString(panoramaId)));

  /// @nodoc
  @internal
  PanoramaArrowConnection.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaArrowConnection? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static PanoramaArrowConnection? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaArrowConnection.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static PanoramaArrowConnection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = PanoramaArrowConnection.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
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

/// Player arrow styles
@bindings_annotations.ContainerData(
    toNative: 'PanoramaArrowConnectionStyle.toPointer',
    toPlatform:
        '(val) => PanoramaArrowConnectionStyle.fromPointer(val, needFree: false)')
enum PanoramaArrowConnectionStyle {
  /// connection from street to street
  Street,

  /// connection from indor to indoor
  Indoor,

  /// connection from street to indoor or from indoor to street
  Entry,
  ;

  /// @nodoc
  @internal
  static PanoramaArrowConnectionStyle fromInt(core.int val) {
    return PanoramaArrowConnectionStyle.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(PanoramaArrowConnectionStyle e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static PanoramaArrowConnectionStyle? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(PanoramaArrowConnectionStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
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
    toNative: 'PanoramaAngularBoundingBox.toPointer',
    toPlatform:
        '(val) => PanoramaAngularBoundingBox.fromPointer(val, needFree: false)')
class PanoramaAngularBoundingBox {
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

  /// @nodoc
  @internal
  PanoramaAngularBoundingBox.fromNative(PanoramaAngularBoundingBoxNative native)
      : this(
            left: native.left,
            top: native.top,
            right: native.right,
            bottom: native.bottom);

  /// @nodoc
  @internal
  static PanoramaAngularBoundingBoxNative toNative(
      PanoramaAngularBoundingBox c) {
    return _PanoramaAngularBoundingBoxNativeInit(
        c.left, c.top, c.right, c.bottom);
  }

  /// @nodoc
  @internal
  static PanoramaAngularBoundingBox? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = PanoramaAngularBoundingBox.fromNative(
        ptr.cast<PanoramaAngularBoundingBoxNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(PanoramaAngularBoundingBox? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<PanoramaAngularBoundingBoxNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'PanoramaDescription.toPointer',
    toPlatform:
        '(val) => PanoramaDescription.fromPointer(val, needFree: false)')
class PanoramaDescription implements ffi.Finalizable {
  late final panoramaId =
      to_platform.toPlatformString(_PanoramaDescription_get_panoramaId(_ptr));
  late final position =
      PanoramaPosition.fromPointer(_PanoramaDescription_get_position(_ptr));
  late final angularBBox = PanoramaAngularBoundingBox.fromNative(
      _PanoramaDescription_get_angularBBox(_ptr));
  late final tileSize =
      PanoramaImageSize.fromNative(_PanoramaDescription_get_tileSize(_ptr));
  late final tileLevels = PanoramaTileLevelContainerExtension.toPlatformVector(
      _PanoramaDescription_get_tileLevels(_ptr));
  late final iconMarkers =
      PanoramaIconMarkerContainerExtension.toPlatformVector(
          _PanoramaDescription_get_iconMarkers(_ptr));
  late final textMarkers =
      PanoramaTextMarkerContainerExtension.toPlatformVector(
          _PanoramaDescription_get_textMarkers(_ptr));
  late final companyMarkers =
      PanoramaCompanyMarkerContainerExtension.toPlatformVector(
          _PanoramaDescription_get_companyMarkers(_ptr));
  late final iconConnections =
      PanoramaIconConnectionContainerExtension.toPlatformVector(
          _PanoramaDescription_get_iconConnections(_ptr));
  late final arrowConnections =
      PanoramaArrowConnectionContainerExtension.toPlatformVector(
          _PanoramaDescription_get_arrowConnections(_ptr));
  late final direction = mapkit_geometry_direction.Direction.fromNative(
      _PanoramaDescription_get_direction(_ptr));
  late final span =
      mapkit_geometry_span.Span.fromNative(_PanoramaDescription_get_span(_ptr));
  late final attribution = mapkit_attribution.Attribution.fromPointer(
      _PanoramaDescription_get_attribution(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaDescription_free.cast());

  PanoramaDescription(
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
            PanoramaPosition.toPointer(position),
            PanoramaAngularBoundingBox.toNative(angularBBox),
            PanoramaImageSize.toNative(tileSize),
            PanoramaTileLevelContainerExtension.toNativeVector(tileLevels),
            PanoramaIconMarkerContainerExtension.toNativeVector(iconMarkers),
            PanoramaTextMarkerContainerExtension.toNativeVector(textMarkers),
            PanoramaCompanyMarkerContainerExtension.toNativeVector(
                companyMarkers),
            PanoramaIconConnectionContainerExtension.toNativeVector(
                iconConnections),
            PanoramaArrowConnectionContainerExtension.toNativeVector(
                arrowConnections),
            mapkit_geometry_direction.Direction.toNative(direction),
            mapkit_geometry_span.Span.toNative(span),
            mapkit_attribution.Attribution.toPointer(attribution)));

  /// @nodoc
  @internal
  PanoramaDescription.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaDescription? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static PanoramaDescription? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaDescription.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static PanoramaDescription? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = PanoramaDescription.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
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

/// @nodoc
class _PanoramaUserPanoramaEventListenerWrapper implements ffi.Finalizable {
  _PanoramaUserPanoramaEventListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaUserPanoramaEventListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

/// Listener to handle event from user panoramas
abstract class PanoramaUserPanoramaEventListener {
  static final _pointerToListener = <ffi.Pointer<ffi.Void>,
      core.WeakReference<PanoramaUserPanoramaEventListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<
      PanoramaUserPanoramaEventListener,
      _PanoramaUserPanoramaEventListenerWrapper?>();

  /// Called when user presses to the arrow or icon connection. It's a good
  /// place to handle panoramaId and call openPanorama...
  ///
  /// [panoramaId] The clicked connection panoramaId
  void onPanoramaChangeIntent(core.String panoramaId);

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

  /// @nodoc
  @internal
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
                            ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, native_types.NativeString)>>)>>(
            'yandex_flutter_places_panorama_PanoramaUserPanoramaEventListener_new')
        .asFunction(isLeaf: true);

final _PanoramaUserPanoramaEventListener_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_places_panorama_PanoramaUserPanoramaEventListener_free');
void _PanoramaUserPanoramaEventListener_onPanoramaChangeIntent(
    ffi.Pointer<ffi.Void> _ptr, native_types.NativeString panoramaId) {
  final listener =
      PanoramaUserPanoramaEventListener._pointerToListener[_ptr]?.target;
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

abstract class PanoramaTileImageFactory {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, PanoramaTileImageFactory>{};
  static final _listenerToPointer =
      <PanoramaTileImageFactory, ffi.Pointer<ffi.Void>>{};

  /// Called once the tile is within the view frustum. If tile can't be
  /// loaded, empty value must be returned.
  ///
  /// This method will be called on a background thread.
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

  /// @nodoc
  @internal
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
  final listener = PanoramaTileImageFactory._pointerToListener[_ptr];
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

abstract class PanoramaIconImageFactory {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, PanoramaIconImageFactory>{};
  static final _listenerToPointer =
      <PanoramaIconImageFactory, ffi.Pointer<ffi.Void>>{};

  /// Called once the icon is visible in view frustum If the icon can't be
  /// loaded, empty value must be returned. Scale - scale factor. mdpi: 1.0
  /// , xhdpi: 2.0, etc. If you have image resources for different pixel
  /// densities, just ignore this parameter.
  ///
  /// This method will be called on a background thread.
  core.Future<image_provider.ImageProvider?> load(
      core.String iconId, core.double scale);

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

  /// @nodoc
  @internal
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
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, native_types.NativeString, ffi.Double)>>)>>(
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
  final listener = PanoramaIconImageFactory._pointerToListener[_ptr];
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

abstract class PanoramaTileUrlProvider {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, PanoramaTileUrlProvider>{};
  static final _listenerToPointer =
      <PanoramaTileUrlProvider, ffi.Pointer<ffi.Void>>{};

  /// Called once the tile within the view frustum.
  ///
  /// This method may be called on any thread. Its implementation must be thread-safe.
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

  /// @nodoc
  @internal
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
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.NativeFunction<native_types.NativeString Function(ffi.Pointer<ffi.Void>, native_types.NativeString, ffi.Uint32, ffi.Uint32, ffi.Uint32)>>)>>(
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
  final listener = PanoramaTileUrlProvider._pointerToListener[_ptr];
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

abstract class PanoramaIconUrlProvider {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, PanoramaIconUrlProvider>{};
  static final _listenerToPointer =
      <PanoramaIconUrlProvider, ffi.Pointer<ffi.Void>>{};

  /// Called once the icon is visible in view frustum Scale - scale factor.
  /// mdpi: 1.0 , xhdpi: 2.0 etc.
  ///
  /// This method may be called on any thread. Its implementation must be thread-safe.
  core.String formatUrl(core.String iconId, core.double scale);

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

  /// @nodoc
  @internal
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
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.NativeFunction<native_types.NativeString Function(ffi.Pointer<ffi.Void>, native_types.NativeString, ffi.Double)>>)>>(
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
  final listener = PanoramaIconUrlProvider._pointerToListener[_ptr];
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
