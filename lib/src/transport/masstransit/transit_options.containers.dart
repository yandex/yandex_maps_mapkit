// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_options.dart';

// **************************************************************************
// ContainerGenerator
// **************************************************************************

extension FilterVehicleTypesContainerExtension on FilterVehicleTypes {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, FilterVehicleTypes?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, FilterVehicleTypesImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String, core.List<FilterVehicleTypes?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<core.String, core.Map<core.String, FilterVehicleTypes?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(
      core.List<FilterVehicleTypes?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, FilterVehicleTypesImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<FilterVehicleTypes?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<core.Map<core.String, FilterVehicleTypes?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<FilterVehicleTypes> toPlatformMap(
      ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr, (val) => FilterVehicleTypesImpl.fromPointer(val, needFree: false));
  }

  static string_map.StringMap<vector.Vector<FilterVehicleTypes>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map.StringMap<string_map.StringMap<FilterVehicleTypes>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<FilterVehicleTypes> toPlatformVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(ptr,
        (val) => FilterVehicleTypesImpl.fromPointer(val, needFree: false)!);
  }

  static vector.Vector<FilterVehicleTypes?> toPlatformVectorOptional(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr, (val) => FilterVehicleTypesImpl.fromPointer(val, needFree: false));
  }

  static vector.Vector<vector.Vector<FilterVehicleTypes>>
      toPlatformVectorVector(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<vector.Vector<FilterVehicleTypes>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<string_map.StringMap<FilterVehicleTypes>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<string_map.StringMap<FilterVehicleTypes>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}

extension TransitOptionsContainerExtension on TransitOptions {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, TransitOptions?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, TransitOptionsImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String, core.List<TransitOptions?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<core.String, core.Map<core.String, TransitOptions?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(core.List<TransitOptions?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, TransitOptionsImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<TransitOptions?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<core.Map<core.String, TransitOptions?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<TransitOptions> toPlatformMap(
      ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr, (val) => TransitOptionsImpl.fromPointer(val, needFree: false));
  }

  static string_map.StringMap<vector.Vector<TransitOptions>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map.StringMap<string_map.StringMap<TransitOptions>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<TransitOptions> toPlatformVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr, (val) => TransitOptionsImpl.fromPointer(val, needFree: false)!);
  }

  static vector.Vector<TransitOptions?> toPlatformVectorOptional(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr, (val) => TransitOptionsImpl.fromPointer(val, needFree: false));
  }

  static vector.Vector<vector.Vector<TransitOptions>> toPlatformVectorVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<vector.Vector<TransitOptions>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<string_map.StringMap<TransitOptions>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<string_map.StringMap<TransitOptions>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}
