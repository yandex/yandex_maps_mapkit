// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mrc_photo_track_player.dart';

// **************************************************************************
// ContainerGenerator
// **************************************************************************

extension MrcPhotoTrackPlayerContainerExtension on MrcPhotoTrackPlayer {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, MrcPhotoTrackPlayer?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, MrcPhotoTrackPlayerImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String, core.List<MrcPhotoTrackPlayer?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<core.String, core.Map<core.String, MrcPhotoTrackPlayer?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(
      core.List<MrcPhotoTrackPlayer?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, MrcPhotoTrackPlayerImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<MrcPhotoTrackPlayer?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<core.Map<core.String, MrcPhotoTrackPlayer?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<MrcPhotoTrackPlayer> toPlatformMap(
      ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => MrcPhotoTrackPlayerImpl.fromOptionalPtr(
            val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map.StringMap<vector.Vector<MrcPhotoTrackPlayer>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map.StringMap<string_map.StringMap<MrcPhotoTrackPlayer>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<MrcPhotoTrackPlayer> toPlatformVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => MrcPhotoTrackPlayerImpl.fromOptionalPtr(
            val.cast<ffi.Pointer<ffi.Void>>().value)!);
  }

  static vector.Vector<MrcPhotoTrackPlayer?> toPlatformVectorOptional(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => MrcPhotoTrackPlayerImpl.fromOptionalPtr(
            val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<vector.Vector<MrcPhotoTrackPlayer>>
      toPlatformVectorVector(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<vector.Vector<MrcPhotoTrackPlayer>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<string_map.StringMap<MrcPhotoTrackPlayer>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<string_map.StringMap<MrcPhotoTrackPlayer>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}
