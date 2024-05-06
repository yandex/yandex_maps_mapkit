part of 'annotation_lang.dart';

@bindings_annotations.ContainerData(
    toNative: 'AnnotationLanguageImpl.toPointer',
    toPlatform:
        '(val) => AnnotationLanguageImpl.fromPointer(val, needFree: false)',
    platformType: 'AnnotationLanguage')
extension AnnotationLanguageImpl on AnnotationLanguage {
  static core.int toInt(AnnotationLanguage e) {
    return e.index;
  }

  static AnnotationLanguage fromInt(core.int val) {
    return AnnotationLanguage.values[val];
  }

  static AnnotationLanguage? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(AnnotationLanguage? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
