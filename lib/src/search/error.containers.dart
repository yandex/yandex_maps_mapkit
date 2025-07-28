// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// ContainerGenerator
// **************************************************************************

extension SearchCacheUnavailableErrorContainerExtension
    on SearchCacheUnavailableError {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, SearchCacheUnavailableError?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(
        obj, SearchCacheUnavailableErrorImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String, core.List<SearchCacheUnavailableError?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<core.String,
              core.Map<core.String, SearchCacheUnavailableError?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(
      core.List<SearchCacheUnavailableError?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(
        obj, SearchCacheUnavailableErrorImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<SearchCacheUnavailableError?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<core.Map<core.String, SearchCacheUnavailableError?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<SearchCacheUnavailableError> toPlatformMap(
      ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => SearchCacheUnavailableErrorImpl.fromOptionalPtr(
            val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map.StringMap<vector.Vector<SearchCacheUnavailableError>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map.StringMap<string_map.StringMap<SearchCacheUnavailableError>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<SearchCacheUnavailableError> toPlatformVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => SearchCacheUnavailableErrorImpl.fromOptionalPtr(
            val.cast<ffi.Pointer<ffi.Void>>().value)!);
  }

  static vector.Vector<SearchCacheUnavailableError?> toPlatformVectorOptional(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => SearchCacheUnavailableErrorImpl.fromOptionalPtr(
            val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<vector.Vector<SearchCacheUnavailableError>>
      toPlatformVectorVector(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<vector.Vector<SearchCacheUnavailableError>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<string_map.StringMap<SearchCacheUnavailableError>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<string_map.StringMap<SearchCacheUnavailableError>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}
