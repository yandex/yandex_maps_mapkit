// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rugged_road.dart';

// **************************************************************************
// ContainerGenerator
// **************************************************************************

extension DrivingRuggedRoadContainerExtension on DrivingRuggedRoad {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, DrivingRuggedRoad?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, DrivingRuggedRoadImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String, core.List<DrivingRuggedRoad?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<core.String, core.Map<core.String, DrivingRuggedRoad?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(
      core.List<DrivingRuggedRoad?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, DrivingRuggedRoadImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<DrivingRuggedRoad?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<core.Map<core.String, DrivingRuggedRoad?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<DrivingRuggedRoad> toPlatformMap(
      ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr, (val) => DrivingRuggedRoadImpl.fromPointer(val, needFree: false));
  }

  static string_map.StringMap<vector.Vector<DrivingRuggedRoad>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map.StringMap<string_map.StringMap<DrivingRuggedRoad>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<DrivingRuggedRoad> toPlatformVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr, (val) => DrivingRuggedRoadImpl.fromPointer(val, needFree: false)!);
  }

  static vector.Vector<DrivingRuggedRoad?> toPlatformVectorOptional(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr, (val) => DrivingRuggedRoadImpl.fromPointer(val, needFree: false));
  }

  static vector.Vector<vector.Vector<DrivingRuggedRoad>> toPlatformVectorVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<vector.Vector<DrivingRuggedRoad>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<string_map.StringMap<DrivingRuggedRoad>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<string_map.StringMap<DrivingRuggedRoad>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}
