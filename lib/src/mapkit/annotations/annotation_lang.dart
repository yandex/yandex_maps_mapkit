import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'annotation_lang.containers.dart';

/// The language of the annotations.
@bindings_annotations.ContainerData(
    toNative: 'AnnotationLanguage.toPointer',
    toPlatform: '(val) => AnnotationLanguage.fromPointer(val, needFree: false)')
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

  /// @nodoc
  @internal
  static AnnotationLanguage fromInt(core.int val) {
    return AnnotationLanguage.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(AnnotationLanguage e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static AnnotationLanguage? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(AnnotationLanguage? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}
