part of 'phrase_token.dart';

@bindings_annotations.ContainerData(
    toNative: 'SpeakerPhraseTokenImpl.toPointer',
    toPlatform:
        '(val) => SpeakerPhraseTokenImpl.fromPointer(val, needFree: false)',
    platformType: 'SpeakerPhraseToken')
extension SpeakerPhraseTokenImpl on SpeakerPhraseToken {
  static core.int toInt(SpeakerPhraseToken e) {
    return e.index;
  }

  static SpeakerPhraseToken fromInt(core.int val) {
    return SpeakerPhraseToken.values[val];
  }

  static SpeakerPhraseToken? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(SpeakerPhraseToken? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
