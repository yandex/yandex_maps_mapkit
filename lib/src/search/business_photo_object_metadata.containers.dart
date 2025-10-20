// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_photo_object_metadata.dart';

// **************************************************************************
// ContainerGenerator
// **************************************************************************

extension SearchBusinessPhotoObjectMetadataContainerExtension
    on SearchBusinessPhotoObjectMetadata {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, SearchBusinessPhotoObjectMetadata?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(
        obj, SearchBusinessPhotoObjectMetadataImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String, core.List<SearchBusinessPhotoObjectMetadata?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<core.String,
              core.Map<core.String, SearchBusinessPhotoObjectMetadata?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(
      core.List<SearchBusinessPhotoObjectMetadata?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(
        obj, SearchBusinessPhotoObjectMetadataImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<SearchBusinessPhotoObjectMetadata?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<core.Map<core.String, SearchBusinessPhotoObjectMetadata?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<SearchBusinessPhotoObjectMetadata> toPlatformMap(
      ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => SearchBusinessPhotoObjectMetadataImpl.fromPointer(val,
            needFree: false));
  }

  static string_map.StringMap<vector.Vector<SearchBusinessPhotoObjectMetadata>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map
      .StringMap<string_map.StringMap<SearchBusinessPhotoObjectMetadata>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<SearchBusinessPhotoObjectMetadata> toPlatformVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => SearchBusinessPhotoObjectMetadataImpl.fromPointer(val,
            needFree: false)!);
  }

  static vector.Vector<SearchBusinessPhotoObjectMetadata?>
      toPlatformVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => SearchBusinessPhotoObjectMetadataImpl.fromPointer(val,
            needFree: false));
  }

  static vector.Vector<vector.Vector<SearchBusinessPhotoObjectMetadata>>
      toPlatformVectorVector(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<vector.Vector<SearchBusinessPhotoObjectMetadata>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<string_map.StringMap<SearchBusinessPhotoObjectMetadata>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<string_map.StringMap<SearchBusinessPhotoObjectMetadata>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}

extension SearchBusinessPhotoObjectMetadataPhotoContainerExtension
    on SearchBusinessPhotoObjectMetadataPhoto {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, SearchBusinessPhotoObjectMetadataPhoto?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(
        obj, SearchBusinessPhotoObjectMetadataPhotoImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String,
              core.List<SearchBusinessPhotoObjectMetadataPhoto?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<core.String,
              core.Map<core.String, SearchBusinessPhotoObjectMetadataPhoto?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(
      core.List<SearchBusinessPhotoObjectMetadataPhoto?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(
        obj, SearchBusinessPhotoObjectMetadataPhotoImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<SearchBusinessPhotoObjectMetadataPhoto?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<
              core.Map<core.String, SearchBusinessPhotoObjectMetadataPhoto?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<SearchBusinessPhotoObjectMetadataPhoto>
      toPlatformMap(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => SearchBusinessPhotoObjectMetadataPhotoImpl.fromPointer(val,
            needFree: false));
  }

  static string_map
      .StringMap<vector.Vector<SearchBusinessPhotoObjectMetadataPhoto>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map
      .StringMap<string_map.StringMap<SearchBusinessPhotoObjectMetadataPhoto>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<SearchBusinessPhotoObjectMetadataPhoto> toPlatformVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => SearchBusinessPhotoObjectMetadataPhotoImpl.fromPointer(val,
            needFree: false)!);
  }

  static vector.Vector<SearchBusinessPhotoObjectMetadataPhoto?>
      toPlatformVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => SearchBusinessPhotoObjectMetadataPhotoImpl.fromPointer(val,
            needFree: false));
  }

  static vector.Vector<vector.Vector<SearchBusinessPhotoObjectMetadataPhoto>>
      toPlatformVectorVector(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<vector.Vector<SearchBusinessPhotoObjectMetadataPhoto>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector
      .Vector<string_map.StringMap<SearchBusinessPhotoObjectMetadataPhoto>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector
      .Vector<string_map.StringMap<SearchBusinessPhotoObjectMetadataPhoto>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}

extension SearchBusinessPhotoObjectMetadataPhotoPhotoLinkContainerExtension
    on SearchBusinessPhotoObjectMetadataPhotoPhotoLink {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, SearchBusinessPhotoObjectMetadataPhotoPhotoLink?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(
        obj, SearchBusinessPhotoObjectMetadataPhotoPhotoLinkImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String,
              core.List<SearchBusinessPhotoObjectMetadataPhotoPhotoLink?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<
              core.String,
              core.Map<core.String,
                  SearchBusinessPhotoObjectMetadataPhotoPhotoLink?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(
      core.List<SearchBusinessPhotoObjectMetadataPhotoPhotoLink?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(
        obj, SearchBusinessPhotoObjectMetadataPhotoPhotoLinkImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<SearchBusinessPhotoObjectMetadataPhotoPhotoLink?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<
              core.Map<core.String,
                  SearchBusinessPhotoObjectMetadataPhotoPhotoLink?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<SearchBusinessPhotoObjectMetadataPhotoPhotoLink>
      toPlatformMap(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) =>
            SearchBusinessPhotoObjectMetadataPhotoPhotoLinkImpl.fromPointer(val,
                needFree: false));
  }

  static string_map
      .StringMap<vector.Vector<SearchBusinessPhotoObjectMetadataPhotoPhotoLink>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map.StringMap<
          string_map.StringMap<SearchBusinessPhotoObjectMetadataPhotoPhotoLink>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<SearchBusinessPhotoObjectMetadataPhotoPhotoLink>
      toPlatformVector(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) =>
            SearchBusinessPhotoObjectMetadataPhotoPhotoLinkImpl.fromPointer(val,
                needFree: false)!);
  }

  static vector.Vector<SearchBusinessPhotoObjectMetadataPhotoPhotoLink?>
      toPlatformVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) =>
            SearchBusinessPhotoObjectMetadataPhotoPhotoLinkImpl.fromPointer(val,
                needFree: false));
  }

  static vector
      .Vector<vector.Vector<SearchBusinessPhotoObjectMetadataPhotoPhotoLink>>
      toPlatformVectorVector(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector
      .Vector<vector.Vector<SearchBusinessPhotoObjectMetadataPhotoPhotoLink>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<
          string_map.StringMap<SearchBusinessPhotoObjectMetadataPhotoPhotoLink>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<
          string_map
          .StringMap<SearchBusinessPhotoObjectMetadataPhotoPhotoLink>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}
