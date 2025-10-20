part of 'annotation.dart';

final class DrivingUturnMetadataNative extends ffi.Struct {
  @ffi.Double()
  external core.double length;
}

final DrivingUturnMetadataNative Function(core.double)
    _DrivingUturnMetadataNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingUturnMetadataNative Function(ffi.Double)>>(
            'yandex_flutter_directions_driving_DrivingUturnMetadata_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingUturnMetadataImpl.toPointer',
    toPlatform:
        '(val) => DrivingUturnMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingUturnMetadata')
extension DrivingUturnMetadataImpl on DrivingUturnMetadata {
  static DrivingUturnMetadata fromNative(DrivingUturnMetadataNative native) {
    return DrivingUturnMetadata(length: native.length);
  }

  static DrivingUturnMetadataNative toNative(DrivingUturnMetadata obj) {
    return _DrivingUturnMetadataNativeInit(obj.length);
  }

  static DrivingUturnMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingUturnMetadataImpl.fromNative(
        ptr.cast<DrivingUturnMetadataNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingUturnMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingUturnMetadataNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

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
    toNative: 'DrivingLeaveRoundaboutMetadataImpl.toPointer',
    toPlatform:
        '(val) => DrivingLeaveRoundaboutMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingLeaveRoundaboutMetadata')
extension DrivingLeaveRoundaboutMetadataImpl on DrivingLeaveRoundaboutMetadata {
  static DrivingLeaveRoundaboutMetadata fromNative(
      DrivingLeaveRoundaboutMetadataNative native) {
    return DrivingLeaveRoundaboutMetadata(exitNumber: native.exitNumber);
  }

  static DrivingLeaveRoundaboutMetadataNative toNative(
      DrivingLeaveRoundaboutMetadata obj) {
    return _DrivingLeaveRoundaboutMetadataNativeInit(obj.exitNumber);
  }

  static DrivingLeaveRoundaboutMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingLeaveRoundaboutMetadataImpl.fromNative(
        ptr.cast<DrivingLeaveRoundaboutMetadataNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingLeaveRoundaboutMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingLeaveRoundaboutMetadataNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class DrivingTurnMetadataNative extends ffi.Struct {
  @ffi.Uint32()
  external core.int turnNumber;
}

final DrivingTurnMetadataNative Function(
    core
        .int) _DrivingTurnMetadataNativeInit = lib.library
    .lookup<ffi.NativeFunction<DrivingTurnMetadataNative Function(ffi.Uint32)>>(
        'yandex_flutter_directions_driving_DrivingTurnMetadata_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingTurnMetadataImpl.toPointer',
    toPlatform:
        '(val) => DrivingTurnMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingTurnMetadata')
extension DrivingTurnMetadataImpl on DrivingTurnMetadata {
  static DrivingTurnMetadata fromNative(DrivingTurnMetadataNative native) {
    return DrivingTurnMetadata(turnNumber: native.turnNumber);
  }

  static DrivingTurnMetadataNative toNative(DrivingTurnMetadata obj) {
    return _DrivingTurnMetadataNativeInit(obj.turnNumber);
  }

  static DrivingTurnMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingTurnMetadataImpl.fromNative(
        ptr.cast<DrivingTurnMetadataNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingTurnMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingTurnMetadataNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class DrivingExitMetadataNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> sequentialNumber;
  external ffi.Pointer<ffi.Void> numerationProximityMask;
}

final DrivingExitMetadataNative Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _DrivingExitMetadataNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingExitMetadataNative Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingExitMetadata_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingExitMetadataImpl.toPointer',
    toPlatform:
        '(val) => DrivingExitMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingExitMetadata')
extension DrivingExitMetadataImpl on DrivingExitMetadata {
  static DrivingExitMetadata fromNative(DrivingExitMetadataNative native) {
    return DrivingExitMetadata(
        sequentialNumber:
            to_platform.toPlatformFromPointerUint32(native.sequentialNumber),
        numerationProximityMask: to_platform
            .toPlatformFromPointerUint32(native.numerationProximityMask));
  }

  static DrivingExitMetadataNative toNative(DrivingExitMetadata obj) {
    return _DrivingExitMetadataNativeInit(
        to_native.toNativePtrUint32(obj.sequentialNumber),
        to_native.toNativePtrUint32(obj.numerationProximityMask));
  }

  static DrivingExitMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingExitMetadataImpl.fromNative(
        ptr.cast<DrivingExitMetadataNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingExitMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingExitMetadataNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class _DrivingActionMetadataNativeData extends ffi.Union {
  external DrivingUturnMetadataNative uturnMetadata;
  external DrivingLeaveRoundaboutMetadataNative leaveRoundaboutMetadata;
  external DrivingTurnMetadataNative turnMetadata;
  external DrivingExitMetadataNative exitMetadata;
}

final class DrivingActionMetadataNative extends ffi.Struct {
  @ffi.Int()
  external core.int tag;
  external _DrivingActionMetadataNativeData data;
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingActionMetadataImpl.toPointer',
    toPlatform:
        '(val) => DrivingActionMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingActionMetadata')
extension DrivingActionMetadataImpl on DrivingActionMetadata {
  static DrivingActionMetadataNative toNative(DrivingActionMetadata obj) {
    if (obj._value is DrivingUturnMetadata) {
      return _ActionMetadataNative_UturnMetadataNative_init(
          DrivingUturnMetadataImpl.toNative(obj._value));
    }
    if (obj._value is DrivingLeaveRoundaboutMetadata) {
      return _ActionMetadataNative_LeaveRoundaboutMetadataNative_init(
          DrivingLeaveRoundaboutMetadataImpl.toNative(obj._value));
    }
    if (obj._value is DrivingTurnMetadata) {
      return _ActionMetadataNative_TurnMetadataNative_init(
          DrivingTurnMetadataImpl.toNative(obj._value));
    }
    if (obj._value is DrivingExitMetadata) {
      return _ActionMetadataNative_ExitMetadataNative_init(
          DrivingExitMetadataImpl.toNative(obj._value));
    }
    throw core.TypeError();
  }

  static DrivingActionMetadata toPlatform(DrivingActionMetadataNative obj) {
    switch (obj.tag) {
      case 0:
        return DrivingActionMetadata.fromUturnMetadata(
            DrivingUturnMetadataImpl.fromNative(obj.data.uturnMetadata));
      case 1:
        return DrivingActionMetadata.fromLeaveRoundaboutMetadata(
            DrivingLeaveRoundaboutMetadataImpl.fromNative(
                obj.data.leaveRoundaboutMetadata));
      case 2:
        return DrivingActionMetadata.fromTurnMetadata(
            DrivingTurnMetadataImpl.fromNative(obj.data.turnMetadata));
      case 3:
        return DrivingActionMetadata.fromExitMetadata(
            DrivingExitMetadataImpl.fromNative(obj.data.exitMetadata));
    }
    throw core.TypeError();
  }

  static DrivingActionMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = toPlatform(ptr.cast<DrivingActionMetadataNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingActionMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<DrivingActionMetadataNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final DrivingActionMetadataNative Function(DrivingUturnMetadataNative)
    _ActionMetadataNative_UturnMetadataNative_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingActionMetadataNative Function(
                        DrivingUturnMetadataNative)>>(
            'yandex_flutter_directions_driving_DrivingActionMetadata_UturnMetadataNative_init')
        .asFunction(isLeaf: true);
final DrivingActionMetadataNative Function(DrivingLeaveRoundaboutMetadataNative)
    _ActionMetadataNative_LeaveRoundaboutMetadataNative_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingActionMetadataNative Function(
                        DrivingLeaveRoundaboutMetadataNative)>>(
            'yandex_flutter_directions_driving_DrivingActionMetadata_LeaveRoundaboutMetadataNative_init')
        .asFunction(isLeaf: true);
final DrivingActionMetadataNative Function(DrivingTurnMetadataNative)
    _ActionMetadataNative_TurnMetadataNative_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingActionMetadataNative Function(
                        DrivingTurnMetadataNative)>>(
            'yandex_flutter_directions_driving_DrivingActionMetadata_TurnMetadataNative_init')
        .asFunction(isLeaf: true);
final DrivingActionMetadataNative Function(DrivingExitMetadataNative)
    _ActionMetadataNative_ExitMetadataNative_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingActionMetadataNative Function(
                        DrivingExitMetadataNative)>>(
            'yandex_flutter_directions_driving_DrivingActionMetadata_ExitMetadataNative_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingAnnotationSchemeIDImpl.toPointer',
    toPlatform:
        '(val) => DrivingAnnotationSchemeIDImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingAnnotationSchemeID')
extension DrivingAnnotationSchemeIDImpl on DrivingAnnotationSchemeID {
  static core.int toInt(DrivingAnnotationSchemeID e) {
    return e.index;
  }

  static DrivingAnnotationSchemeID fromInt(core.int val) {
    return DrivingAnnotationSchemeID.values[val];
  }

  static DrivingAnnotationSchemeID? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(DrivingAnnotationSchemeID? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingToponymPhraseImpl.getNativePtr',
    toPlatform:
        '(val) => DrivingToponymPhraseImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingToponymPhrase')
final class DrivingToponymPhraseImpl extends DrivingToponymPhrase {
  DrivingToponymPhraseImpl(core.String text, core.int? actionProximity)
      : this.fromNativePtr(_DrivingToponymPhrase_init(
            to_native.toNativeString(text),
            to_native.toNativePtrUint32(actionProximity)));

  @core.override
  late final text =
      to_platform.toPlatformString(_DrivingToponymPhrase_get_text(_ptr));
  @core.override
  late final actionProximity = to_platform.toPlatformFromPointerUint32(
      _DrivingToponymPhrase_get_actionProximity(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_DrivingToponymPhrase_free.cast());

  DrivingToponymPhraseImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(DrivingToponymPhrase? obj) {
    return (obj as DrivingToponymPhraseImpl?)?._ptr ?? ffi.nullptr;
  }

  static DrivingToponymPhrase? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : DrivingToponymPhraseImpl.fromNativePtr(ptr);
  }

  static DrivingToponymPhrase? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingToponymPhraseImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _DrivingToponymPhrase_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingToponymPhrase_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString, ffi.Pointer<ffi.Void>)
    _DrivingToponymPhrase_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingToponymPhrase_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _DrivingToponymPhrase_get_text = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingToponymPhrase_get_text')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingToponymPhrase_get_actionProximity = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingToponymPhrase_get_actionProximity')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingAnnotationImpl.getNativePtr',
    toPlatform:
        '(val) => DrivingAnnotationImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingAnnotation')
final class DrivingAnnotationImpl extends DrivingAnnotation {
  DrivingAnnotationImpl(
      directions_driving_action.DrivingAction? action,
      core.String? toponym,
      core.String descriptionText,
      DrivingActionMetadata? actionMetadata,
      core.List<directions_driving_landmark.DrivingLandmark> landmarks,
      core.List<DrivingToponymPhrase> toponymPhrase)
      : this.fromNativePtr(_DrivingAnnotation_init(
            directions_driving_action.DrivingActionImpl.toPointer(action),
            to_native.toNativePtrString(toponym),
            to_native.toNativeString(descriptionText),
            DrivingActionMetadataImpl.toPointer(actionMetadata),
            directions_driving_landmark.DrivingLandmarkContainerExtension
                .toNativeVector(landmarks),
            DrivingToponymPhraseContainerExtension.toNativeVector(
                toponymPhrase)));

  @core.override
  late final action = directions_driving_action.DrivingActionImpl.fromPointer(
      _DrivingAnnotation_get_action(_ptr));
  @core.override
  late final toponym = to_platform
      .toPlatformFromPointerString(_DrivingAnnotation_get_toponym(_ptr));
  @core.override
  late final descriptionText = to_platform
      .toPlatformString(_DrivingAnnotation_get_descriptionText(_ptr));
  @core.override
  late final actionMetadata = DrivingActionMetadataImpl.fromPointer(
      _DrivingAnnotation_get_actionMetadata(_ptr));
  @core.override
  late final landmarks =
      directions_driving_landmark.DrivingLandmarkContainerExtension
          .toPlatformVector(_DrivingAnnotation_get_landmarks(_ptr));
  @core.override
  late final toponymPhrase =
      DrivingToponymPhraseContainerExtension.toPlatformVector(
          _DrivingAnnotation_get_toponymPhrase(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingAnnotation_free.cast());

  DrivingAnnotationImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(DrivingAnnotation? obj) {
    return (obj as DrivingAnnotationImpl?)?._ptr ?? ffi.nullptr;
  }

  static DrivingAnnotation? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : DrivingAnnotationImpl.fromNativePtr(ptr);
  }

  static DrivingAnnotation? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingAnnotationImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _DrivingAnnotation_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingAnnotation_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingAnnotation_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
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
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingAnnotation_get_actionMetadata = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
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
