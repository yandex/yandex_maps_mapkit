part of 'speaker.dart';

@bindings_annotations.ContainerData(
    toNative: 'LocalizedPhraseImpl.getNativePtr',
    toPlatform:
        '(val) => LocalizedPhraseImpl.fromPointer(val, needFree: false)',
    platformType: 'LocalizedPhrase')
final class LocalizedPhraseImpl implements LocalizedPhrase {
  LocalizedPhraseImpl(
      core.List<mapkit_annotations_phrase_token.SpeakerPhraseToken> tokens,
      core.String text,
      mapkit_annotations_annotation_lang.AnnotationLanguage language)
      : this.fromNativePtr(_LocalizedPhrase_init(
            mapkit_annotations_phrase_token.SpeakerPhraseTokenContainerExtension
                .toNativeVector(tokens),
            to_native.toNativeString(text),
            mapkit_annotations_annotation_lang.AnnotationLanguageImpl.toInt(
                language)));

  @core.override
  late final tokens =
      mapkit_annotations_phrase_token.SpeakerPhraseTokenContainerExtension
          .toPlatformVector(_LocalizedPhrase_get_tokens(_ptr));
  @core.override
  late final text =
      to_platform.toPlatformString(_LocalizedPhrase_get_text(_ptr));
  @core.override
  late final language =
      mapkit_annotations_annotation_lang.AnnotationLanguageImpl.fromInt(
          _LocalizedPhrase_get_language(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_LocalizedPhrase_free.cast());

  LocalizedPhraseImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(LocalizedPhrase? obj) {
    return (obj as LocalizedPhraseImpl?)?._ptr ?? ffi.nullptr;
  }

  static LocalizedPhrase? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : LocalizedPhraseImpl.fromNativePtr(ptr);
  }

  static LocalizedPhrase? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = LocalizedPhraseImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _LocalizedPhrase_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_mapkit_annotations_LocalizedPhrase_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, native_types.NativeString, core.int)
    _LocalizedPhrase_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        native_types.NativeString, ffi.Int64)>>(
            'yandex_flutter_mapkit_annotations_LocalizedPhrase_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _LocalizedPhrase_get_tokens = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_annotations_LocalizedPhrase_get_tokens')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _LocalizedPhrase_get_text = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_annotations_LocalizedPhrase_get_text')
        .asFunction(isLeaf: true);
final core.int Function(ffi.Pointer<ffi.Void>) _LocalizedPhrase_get_language =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_annotations_LocalizedPhrase_get_language')
        .asFunction(isLeaf: true);

final class _SpeakerWrapper implements ffi.Finalizable {
  _SpeakerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer = ffi.NativeFinalizer(_Speaker_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension SpeakerImpl on Speaker {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<Speaker>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<Speaker, _SpeakerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(Speaker obj) {
    final ptr = _Speaker_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _Speaker_reset),
        ffi.Pointer.fromFunction<
            ffi.Void Function(
                ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(_Speaker_say),
        ffi.Pointer.fromFunction<
            ffi.Double Function(ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>)>(_Speaker_duration, 0.0));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _SpeakerWrapper(ptr);
    _SpeakersetSendPort(ptr, nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(Speaker? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(ffi.Pointer<ffi.Void>, core.int, core.int)
    _SpeakersetSendPort = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
            'yandex_flutter_mapkit_annotations_Speaker_setSendPort')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Double Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _Speaker_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Double Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_mapkit_annotations_Speaker_new')
        .asFunction(isLeaf: true);

final _Speaker_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_annotations_Speaker_free');
void _Speaker_reset(ffi.Pointer<ffi.Void> _ptr) {
  final listener = SpeakerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.reset();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _Speaker_say(ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> phrase) {
  final listener = SpeakerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.say(LocalizedPhraseImpl.fromNativePtr(phrase));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

core.double _Speaker_duration(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> phrase) {
  final listener = SpeakerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return listener.duration(LocalizedPhraseImpl.fromNativePtr(phrase));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}
