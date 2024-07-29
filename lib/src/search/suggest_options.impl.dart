part of 'suggest_options.dart';

@bindings_annotations.ContainerData(
    toNative: 'SuggestTypeImpl.toPointer',
    toPlatform: '(val) => SuggestTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'SuggestType')
extension SuggestTypeImpl on SuggestType {
  static core.int toInt(SuggestType e) {
    return e.value;
  }

  static SuggestType fromInt(core.int val) {
    return SuggestType(val);
  }

  static SuggestType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(SuggestType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

final class SuggestOptionsNative extends ffi.Struct {
  @ffi.Int64()
  external core.int suggestTypes;
  external ffi.Pointer<ffi.Void> userPosition;
  @ffi.Bool()
  external core.bool suggestWords;
  @ffi.Bool()
  external core.bool strictBounds;
}

final SuggestOptionsNative Function(
        core.int, ffi.Pointer<ffi.Void>, core.bool, core.bool)
    _SuggestOptionsNativeInit = lib.library
        .lookup<
            ffi.NativeFunction<
                SuggestOptionsNative Function(
                    ffi.Int64,
                    ffi.Pointer<ffi.Void>,
                    ffi.Bool,
                    ffi.Bool)>>('yandex_flutter_search_SuggestOptions_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SuggestOptionsImpl.toPointer',
    toPlatform: '(val) => SuggestOptionsImpl.fromPointer(val, needFree: false)',
    platformType: 'SuggestOptions')
extension SuggestOptionsImpl on SuggestOptions {
  static SuggestOptions fromNative(SuggestOptionsNative native) {
    return SuggestOptions(
        suggestTypes: SuggestTypeImpl.fromInt(native.suggestTypes),
        userPosition:
            mapkit_geometry_point.PointImpl.fromPointer(native.userPosition),
        suggestWords: native.suggestWords,
        strictBounds: native.strictBounds);
  }

  static SuggestOptionsNative toNative(SuggestOptions obj) {
    return _SuggestOptionsNativeInit(
        SuggestTypeImpl.toInt(obj.suggestTypes),
        mapkit_geometry_point.PointImpl.toPointer(obj.userPosition),
        obj.suggestWords,
        obj.strictBounds);
  }

  static SuggestOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        SuggestOptionsImpl.fromNative(ptr.cast<SuggestOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SuggestOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SuggestOptionsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
