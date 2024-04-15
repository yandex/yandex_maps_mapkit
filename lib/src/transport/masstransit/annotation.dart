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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;

part 'annotation.containers.dart';

/// Action that can be performed
@bindings_annotations.ContainerData(
    toNative: 'MasstransitActionID.toPointer',
    toPlatform:
        '(val) => MasstransitActionID.fromPointer(val, needFree: false)')
enum MasstransitActionID {
  Straight,
  Left,
  Right,
  Dismount,
  ;

  /// @nodoc
  @internal
  static MasstransitActionID fromInt(core.int val) {
    return MasstransitActionID.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(MasstransitActionID e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static MasstransitActionID? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(MasstransitActionID? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// Landmark type
@bindings_annotations.ContainerData(
    toNative: 'MasstransitLandmarkID.toPointer',
    toPlatform:
        '(val) => MasstransitLandmarkID.fromPointer(val, needFree: false)')
enum MasstransitLandmarkID {
  Crosswalk,
  StairsToUnderpass,
  StairsToOverpass,
  Stairs,
  StairsDown,
  StairsUp,
  ;

  /// @nodoc
  @internal
  static MasstransitLandmarkID fromInt(core.int val) {
    return MasstransitLandmarkID.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(MasstransitLandmarkID e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static MasstransitLandmarkID? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(MasstransitLandmarkID? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
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
    toNative: 'MasstransitToponym.toPointer',
    toPlatform: '(val) => MasstransitToponym.fromPointer(val, needFree: false)')
class MasstransitToponym {
  final core.String? toponym;
  final core.String? accusativeToponym;

  const MasstransitToponym({
    this.toponym,
    this.accusativeToponym,
  });

  /// @nodoc
  @internal
  MasstransitToponym.fromNative(MasstransitToponymNative native)
      : this(
            toponym: to_platform.toPlatformFromPointerString(native.toponym),
            accusativeToponym: to_platform
                .toPlatformFromPointerString(native.accusativeToponym));

  /// @nodoc
  @internal
  static MasstransitToponymNative toNative(MasstransitToponym c) {
    return _MasstransitToponymNativeInit(to_native.toNativePtrString(c.toponym),
        to_native.toNativePtrString(c.accusativeToponym));
  }

  /// @nodoc
  @internal
  static MasstransitToponym? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        MasstransitToponym.fromNative(ptr.cast<MasstransitToponymNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitToponym? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitToponymNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitAnnotation.toPointer',
    toPlatform:
        '(val) => MasstransitAnnotation.fromPointer(val, needFree: false)')
class MasstransitAnnotation implements ffi.Finalizable {
  late final position = mapkit_geometry_geometry.PolylinePosition.fromNative(
      _MasstransitAnnotation_get_position(_ptr));
  late final action =
      MasstransitActionID.fromPointer(_MasstransitAnnotation_get_action(_ptr));
  late final landmark = MasstransitLandmarkID.fromPointer(
      _MasstransitAnnotation_get_landmark(_ptr));
  late final toponym =
      MasstransitToponym.fromPointer(_MasstransitAnnotation_get_toponym(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitAnnotation_free.cast());

  MasstransitAnnotation(
      mapkit_geometry_geometry.PolylinePosition position,
      MasstransitActionID? action,
      MasstransitLandmarkID? landmark,
      MasstransitToponym? toponym)
      : this.fromNativePtr(_MasstransitAnnotation_init(
            mapkit_geometry_geometry.PolylinePosition.toNative(position),
            MasstransitActionID.toPointer(action),
            MasstransitLandmarkID.toPointer(landmark),
            MasstransitToponym.toPointer(toponym)));

  /// @nodoc
  @internal
  MasstransitAnnotation.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitAnnotation? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitAnnotation? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitAnnotation.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitAnnotation? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitAnnotation.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitAnnotation? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitAnnotation_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitAnnotation_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitAnnotation_clone')
        .asFunction(isLeaf: true);

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
