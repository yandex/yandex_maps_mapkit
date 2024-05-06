import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'annotation_lang.containers.dart';
part 'annotation_lang.impl.dart';

/// The language of the annotations.
enum AnnotationLanguage {
  /// Russian language.
  Russian,

  /// English language.
  English,

  /// French language.
  French,

  /// Turkish language.
  Turkish,

  /// Ukrainian language.
  Ukrainian,

  /// Italian language.
  Italian,

  /// Hebrew language
  Hebrew,

  /// Serbian language
  Serbian,

  /// Latvian language
  Latvian,

  /// Finnish language
  Finnish,

  /// Romanian language
  Romanian,

  /// Kyrgyz language
  Kyrgyz,

  /// Kazakh language
  Kazakh,

  /// Lithuanian language
  Lithuanian,

  /// Estonian language
  Estonian,

  /// Georgian language
  Georgian,

  /// Uzbek language
  Uzbek,

  /// Armenian language
  Armenian,

  /// Azerbaijani language
  Azerbaijani,

  /// Tatar language
  Tatar,

  /// Arabic language
  Arabic,

  /// Portuguese language
  Portuguese,

  /// Latin American Spanish language
  LatinAmericanSpanish,

  /// Bashkir language
  Bashkir,
  ;
}
