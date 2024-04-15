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
import 'package:yandex_maps_mapkit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_mapkit/src/mapkit/annotations/annotation_lang.dart'
    as mapkit_annotations_annotation_lang;
import 'package:yandex_maps_mapkit/src/mapkit/annotations/phrase_token.dart'
    as mapkit_annotations_phrase_token;

part 'speaker.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'LocalizedPhrase.toPointer',
    toPlatform: '(val) => LocalizedPhrase.fromPointer(val, needFree: false)')
class LocalizedPhrase implements ffi.Finalizable {
  late final tokens =
      mapkit_annotations_phrase_token.SpeakerPhraseTokenContainerExtension
          .toPlatformVector(_LocalizedPhrase_get_tokens(_ptr));
  late final text =
      to_platform.toPlatformString(_LocalizedPhrase_get_text(_ptr));
  late final language =
      mapkit_annotations_annotation_lang.AnnotationLanguage.fromInt(
          _LocalizedPhrase_get_language(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_LocalizedPhrase_free.cast());

  LocalizedPhrase(
      core.List<mapkit_annotations_phrase_token.SpeakerPhraseToken> tokens,
      core.String text,
      mapkit_annotations_annotation_lang.AnnotationLanguage language)
      : this.fromNativePtr(_LocalizedPhrase_init(
            mapkit_annotations_phrase_token.SpeakerPhraseTokenContainerExtension
                .toNativeVector(tokens),
            to_native.toNativeString(text),
            mapkit_annotations_annotation_lang.AnnotationLanguage.toInt(
                language)));

  /// @nodoc
  @internal
  LocalizedPhrase.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(LocalizedPhrase? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static LocalizedPhrase? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return LocalizedPhrase.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static LocalizedPhrase? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        LocalizedPhrase.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(LocalizedPhrase? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _LocalizedPhrase_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _LocalizedPhrase_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_annotations_LocalizedPhrase_clone')
        .asFunction(isLeaf: true);

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

/// @nodoc
class _SpeakerWrapper implements ffi.Finalizable {
  _SpeakerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer = ffi.NativeFinalizer(_Speaker_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

abstract class Speaker {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<Speaker>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<Speaker, _SpeakerWrapper?>();

  /// Stops all speech and forgets all previously scheduled phrases.
  void reset();

  /// Pronounces the phrase, interrupting the one being spoken now, if
  /// neccessary.
  void say(LocalizedPhrase phrase);

  /// Returns the phrase duration (how many seconds it takes to pronounce
  /// it).
  core.double duration(LocalizedPhrase phrase);

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

  /// @nodoc
  @internal
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
  final listener = Speaker._pointerToListener[_ptr]?.target;
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
  final listener = Speaker._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.say(LocalizedPhrase.fromNativePtr(phrase));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

core.double _Speaker_duration(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> phrase) {
  final listener = Speaker._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return listener.duration(LocalizedPhrase.fromNativePtr(phrase));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}
