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
    toNative: 'DrivingActionMetadataImpl.toPointer',
    toPlatform:
        '(val) => DrivingActionMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingActionMetadata')
extension DrivingActionMetadataImpl on DrivingActionMetadata {
  static DrivingActionMetadata fromNative(DrivingActionMetadataNative native) {
    return DrivingActionMetadata(
        uturnMetadata:
            DrivingUturnMetadataImpl.fromPointer(native.uturnMetadata),
        leaveRoundaboutMetadada: DrivingLeaveRoundaboutMetadataImpl.fromPointer(
            native.leaveRoundaboutMetadada));
  }

  static DrivingActionMetadataNative toNative(DrivingActionMetadata obj) {
    return _DrivingActionMetadataNativeInit(
        DrivingUturnMetadataImpl.toPointer(obj.uturnMetadata),
        DrivingLeaveRoundaboutMetadataImpl.toPointer(
            obj.leaveRoundaboutMetadada));
  }

  static DrivingActionMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingActionMetadataImpl.fromNative(
        ptr.cast<DrivingActionMetadataNative>().ref);

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
final class DrivingToponymPhraseImpl implements DrivingToponymPhrase {
  DrivingToponymPhraseImpl(core.String text)
      : this.fromNativePtr(
            _DrivingToponymPhrase_init(to_native.toNativeString(text)));

  @core.override
  late final text =
      to_platform.toPlatformString(_DrivingToponymPhrase_get_text(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_DrivingToponymPhrase_free.cast());

  DrivingToponymPhraseImpl.fromNativePtr(this._ptr) {
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
    toNative: 'DrivingAnnotationImpl.getNativePtr',
    toPlatform:
        '(val) => DrivingAnnotationImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingAnnotation')
final class DrivingAnnotationImpl implements DrivingAnnotation {
  DrivingAnnotationImpl(
      directions_driving_action.DrivingAction? action,
      core.String? toponym,
      core.String descriptionText,
      DrivingActionMetadata actionMetadata,
      core.List<directions_driving_landmark.DrivingLandmark> landmarks,
      DrivingToponymPhrase? toponymPhrase)
      : this.fromNativePtr(_DrivingAnnotation_init(
            directions_driving_action.DrivingActionImpl.toPointer(action),
            to_native.toNativePtrString(toponym),
            to_native.toNativeString(descriptionText),
            DrivingActionMetadataImpl.toNative(actionMetadata),
            directions_driving_landmark.DrivingLandmarkContainerExtension
                .toNativeVector(landmarks),
            DrivingToponymPhraseImpl.getNativePtr(toponymPhrase)));

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
  late final actionMetadata = DrivingActionMetadataImpl.fromNative(
      _DrivingAnnotation_get_actionMetadata(_ptr));
  @core.override
  late final landmarks =
      directions_driving_landmark.DrivingLandmarkContainerExtension
          .toPlatformVector(_DrivingAnnotation_get_landmarks(_ptr));
  @core.override
  late final toponymPhrase = DrivingToponymPhraseImpl.fromOptionalPtr(
      _DrivingAnnotation_get_toponymPhrase(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_DrivingAnnotation_free.cast());

  DrivingAnnotationImpl.fromNativePtr(this._ptr) {
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
