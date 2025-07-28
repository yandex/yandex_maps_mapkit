// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight.dart';

// **************************************************************************
// ContainerGenerator
// **************************************************************************

extension MasstransitWeightContainerExtension on MasstransitWeight {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, MasstransitWeight?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, MasstransitWeightImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String, core.List<MasstransitWeight?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<core.String, core.Map<core.String, MasstransitWeight?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(
      core.List<MasstransitWeight?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, MasstransitWeightImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<MasstransitWeight?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<core.Map<core.String, MasstransitWeight?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<MasstransitWeight> toPlatformMap(
      ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr, (val) => MasstransitWeightImpl.fromPointer(val, needFree: false));
  }

  static string_map.StringMap<vector.Vector<MasstransitWeight>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map.StringMap<string_map.StringMap<MasstransitWeight>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<MasstransitWeight> toPlatformVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr, (val) => MasstransitWeightImpl.fromPointer(val, needFree: false)!);
  }

  static vector.Vector<MasstransitWeight?> toPlatformVectorOptional(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr, (val) => MasstransitWeightImpl.fromPointer(val, needFree: false));
  }

  static vector.Vector<vector.Vector<MasstransitWeight>> toPlatformVectorVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<vector.Vector<MasstransitWeight>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<string_map.StringMap<MasstransitWeight>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<string_map.StringMap<MasstransitWeight>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}
