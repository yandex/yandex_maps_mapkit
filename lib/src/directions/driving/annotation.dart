import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/directions/driving/action.dart'
    as directions_driving_action;
import 'package:yandex_maps_mapkit/src/directions/driving/landmark.dart'
    as directions_driving_landmark;

part 'annotation.containers.dart';

/// @nodoc
final class DrivingUturnMetadataNative extends ffi.Struct {
  @ffi.Double()
  external core.double length;
}

final DrivingUturnMetadataNative Function(
    core
        .double) _DrivingUturnMetadataNativeInit = lib.library
    .lookup<
            ffi
            .NativeFunction<DrivingUturnMetadataNative Function(ffi.Double)>>(
        'yandex_flutter_directions_driving_DrivingUturnMetadata_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingUturnMetadata.toPointer',
    toPlatform:
        '(val) => DrivingUturnMetadata.fromPointer(val, needFree: false)')
class DrivingUturnMetadata {
  final core.double length;

  const DrivingUturnMetadata({
    required this.length,
  });

  /// @nodoc
  @internal
  DrivingUturnMetadata.fromNative(DrivingUturnMetadataNative native)
      : this(length: native.length);

  /// @nodoc
  @internal
  static DrivingUturnMetadataNative toNative(DrivingUturnMetadata c) {
    return _DrivingUturnMetadataNativeInit(c.length);
  }

  /// @nodoc
  @internal
  static DrivingUturnMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingUturnMetadata.fromNative(
        ptr.cast<DrivingUturnMetadataNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingUturnMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingUturnMetadataNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class DrivingLeaveRoundaboutMetadataNative extends ffi.Struct {
  @ffi.Uint32()
  external core.int exitNumber;
}

final DrivingLeaveRoundaboutMetadataNative Function(
    core
        .int) _DrivingLeaveRoundaboutMetadataNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                DrivingLeaveRoundaboutMetadataNative Function(ffi.Uint32)>>(
        'yandex_flutter_directions_driving_DrivingLeaveRoundaboutMetadata_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingLeaveRoundaboutMetadata.toPointer',
    toPlatform:
        '(val) => DrivingLeaveRoundaboutMetadata.fromPointer(val, needFree: false)')
class DrivingLeaveRoundaboutMetadata {
  final core.int exitNumber;

  const DrivingLeaveRoundaboutMetadata({
    required this.exitNumber,
  });

  /// @nodoc
  @internal
  DrivingLeaveRoundaboutMetadata.fromNative(
      DrivingLeaveRoundaboutMetadataNative native)
      : this(exitNumber: native.exitNumber);

  /// @nodoc
  @internal
  static DrivingLeaveRoundaboutMetadataNative toNative(
      DrivingLeaveRoundaboutMetadata c) {
    return _DrivingLeaveRoundaboutMetadataNativeInit(c.exitNumber);
  }

  /// @nodoc
  @internal
  static DrivingLeaveRoundaboutMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingLeaveRoundaboutMetadata.fromNative(
        ptr.cast<DrivingLeaveRoundaboutMetadataNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingLeaveRoundaboutMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingLeaveRoundaboutMetadataNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class DrivingActionMetadataNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> uturnMetadata;
  external ffi.Pointer<ffi.Void> leaveRoundaboutMetadada;
}

final DrivingActionMetadataNative Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _DrivingActionMetadataNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingActionMetadataNative Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingActionMetadata_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingActionMetadata.toPointer',
    toPlatform:
        '(val) => DrivingActionMetadata.fromPointer(val, needFree: false)')
class DrivingActionMetadata {
  final DrivingUturnMetadata? uturnMetadata;
  final DrivingLeaveRoundaboutMetadata? leaveRoundaboutMetadada;

  const DrivingActionMetadata({
    this.uturnMetadata,
    this.leaveRoundaboutMetadada,
  });

  /// @nodoc
  @internal
  DrivingActionMetadata.fromNative(DrivingActionMetadataNative native)
      : this(
            uturnMetadata:
                DrivingUturnMetadata.fromPointer(native.uturnMetadata),
            leaveRoundaboutMetadada: DrivingLeaveRoundaboutMetadata.fromPointer(
                native.leaveRoundaboutMetadada));

  /// @nodoc
  @internal
  static DrivingActionMetadataNative toNative(DrivingActionMetadata c) {
    return _DrivingActionMetadataNativeInit(
        DrivingUturnMetadata.toPointer(c.uturnMetadata),
        DrivingLeaveRoundaboutMetadata.toPointer(c.leaveRoundaboutMetadada));
  }

  /// @nodoc
  @internal
  static DrivingActionMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingActionMetadata.fromNative(
        ptr.cast<DrivingActionMetadataNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingActionMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingActionMetadataNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// The identifier of the annotation scheme.
@bindings_annotations.ContainerData(
    toNative: 'DrivingAnnotationSchemeID.toPointer',
    toPlatform:
        '(val) => DrivingAnnotationSchemeID.fromPointer(val, needFree: false)')
enum DrivingAnnotationSchemeID {
  /// Small annotation.
  Small,

  /// Medium annotation.
  Medium,

  /// Large annotation.
  Large,

  /// Highway annotation.
  Highway,
  ;

  /// @nodoc
  @internal
  static DrivingAnnotationSchemeID fromInt(core.int val) {
    return DrivingAnnotationSchemeID.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(DrivingAnnotationSchemeID e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static DrivingAnnotationSchemeID? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(DrivingAnnotationSchemeID? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingToponymPhrase.toPointer',
    toPlatform:
        '(val) => DrivingToponymPhrase.fromPointer(val, needFree: false)')
class DrivingToponymPhrase implements ffi.Finalizable {
  late final text =
      to_platform.toPlatformString(_DrivingToponymPhrase_get_text(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_DrivingToponymPhrase_free.cast());

  DrivingToponymPhrase(core.String text)
      : this.fromNativePtr(
            _DrivingToponymPhrase_init(to_native.toNativeString(text)));

  /// @nodoc
  @internal
  DrivingToponymPhrase.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingToponymPhrase? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static DrivingToponymPhrase? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingToponymPhrase.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static DrivingToponymPhrase? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingToponymPhrase.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingToponymPhrase? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _DrivingToponymPhrase_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingToponymPhrase_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingToponymPhrase_clone')
        .asFunction(isLeaf: true);

final _DrivingToponymPhrase_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingToponymPhrase_free');

final ffi.Pointer<ffi.Void> Function(native_types.NativeString)
    _DrivingToponymPhrase_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(native_types.NativeString)>>(
            'yandex_flutter_directions_driving_DrivingToponymPhrase_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _DrivingToponymPhrase_get_text = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingToponymPhrase_get_text')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingAnnotation.toPointer',
    toPlatform: '(val) => DrivingAnnotation.fromPointer(val, needFree: false)')
class DrivingAnnotation implements ffi.Finalizable {
  late final action = directions_driving_action.DrivingAction.fromPointer(
      _DrivingAnnotation_get_action(_ptr));
  late final toponym = to_platform
      .toPlatformFromPointerString(_DrivingAnnotation_get_toponym(_ptr));
  late final descriptionText = to_platform
      .toPlatformString(_DrivingAnnotation_get_descriptionText(_ptr));
  late final actionMetadata = DrivingActionMetadata.fromNative(
      _DrivingAnnotation_get_actionMetadata(_ptr));
  late final landmarks =
      directions_driving_landmark.DrivingLandmarkContainerExtension
          .toPlatformVector(_DrivingAnnotation_get_landmarks(_ptr));
  late final toponymPhrase = DrivingToponymPhrase.fromOptionalPtr(
      _DrivingAnnotation_get_toponymPhrase(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingAnnotation_free.cast());

  DrivingAnnotation(
      directions_driving_action.DrivingAction? action,
      core.String? toponym,
      core.String descriptionText,
      DrivingActionMetadata actionMetadata,
      core.List<directions_driving_landmark.DrivingLandmark> landmarks,
      DrivingToponymPhrase? toponymPhrase)
      : this.fromNativePtr(_DrivingAnnotation_init(
            directions_driving_action.DrivingAction.toPointer(action),
            to_native.toNativePtrString(toponym),
            to_native.toNativeString(descriptionText),
            DrivingActionMetadata.toNative(actionMetadata),
            directions_driving_landmark.DrivingLandmarkContainerExtension
                .toNativeVector(landmarks),
            DrivingToponymPhrase.getNativePtr(toponymPhrase)));

  /// @nodoc
  @internal
  DrivingAnnotation.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingAnnotation? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static DrivingAnnotation? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingAnnotation.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static DrivingAnnotation? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingAnnotation.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingAnnotation? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _DrivingAnnotation_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingAnnotation_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingAnnotation_clone')
        .asFunction(isLeaf: true);

final _DrivingAnnotation_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingAnnotation_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        native_types.NativeString,
        DrivingActionMetadataNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingAnnotation_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        DrivingActionMetadataNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingAnnotation_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingAnnotation_get_action = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingAnnotation_get_action')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingAnnotation_get_toponym = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingAnnotation_get_toponym')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(
    ffi
        .Pointer<ffi.Void>) _DrivingAnnotation_get_descriptionText = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingAnnotation_get_descriptionText')
    .asFunction(isLeaf: true);
final DrivingActionMetadataNative Function(
    ffi
        .Pointer<ffi.Void>) _DrivingAnnotation_get_actionMetadata = lib.library
    .lookup<
            ffi.NativeFunction<
                DrivingActionMetadataNative Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingAnnotation_get_actionMetadata')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingAnnotation_get_landmarks = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingAnnotation_get_landmarks')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingAnnotation_get_toponymPhrase = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingAnnotation_get_toponymPhrase')
    .asFunction(isLeaf: true);
