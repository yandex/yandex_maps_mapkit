import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
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
part 'speaker.impl.dart';

abstract final class LocalizedPhrase implements ffi.Finalizable {
  factory LocalizedPhrase(
          core.List<mapkit_annotations_phrase_token.SpeakerPhraseToken> tokens,
          core.String text,
          mapkit_annotations_annotation_lang.AnnotationLanguage language) =>
      LocalizedPhraseImpl(tokens, text, language);

  LocalizedPhrase._();

  core.List<mapkit_annotations_phrase_token.SpeakerPhraseToken> get tokens;
  core.String get text;
  mapkit_annotations_annotation_lang.AnnotationLanguage get language;

  @core.override
  core.int get hashCode => core.Object.hashAll([tokens, text, language]);

  @core.override
  core.bool operator ==(covariant LocalizedPhrase other) {
    if (core.identical(this, other)) {
      return true;
    }
    return tokens == other.tokens &&
        text == other.text &&
        language == other.language;
  }

  @core.override
  core.String toString() {
    return "LocalizedPhrase(tokens: $tokens, text: $text, language: $language)";
  }
}

abstract class Speaker {
  /// Stops all speech and forgets all previously scheduled phrases.
  void reset();

  /// Pronounces the phrase, interrupting the one being spoken now, if
  /// neccessary.
  void say(LocalizedPhrase phrase);

  /// Returns the phrase duration (how many seconds it takes to pronounce
  /// it).
  core.double duration(LocalizedPhrase phrase);
}
