// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_filter.dart';

// **************************************************************************
// ContainerGenerator
// **************************************************************************

extension SearchBusinessFilterContainerExtension on SearchBusinessFilter {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, SearchBusinessFilter?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, SearchBusinessFilterImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String, core.List<SearchBusinessFilter?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<core.String, core.Map<core.String, SearchBusinessFilter?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(
      core.List<SearchBusinessFilter?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, SearchBusinessFilterImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<SearchBusinessFilter?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<core.Map<core.String, SearchBusinessFilter?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<SearchBusinessFilter> toPlatformMap(
      ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(ptr,
        (val) => SearchBusinessFilterImpl.fromPointer(val, needFree: false));
  }

  static string_map.StringMap<vector.Vector<SearchBusinessFilter>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map.StringMap<string_map.StringMap<SearchBusinessFilter>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<SearchBusinessFilter> toPlatformVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(ptr,
        (val) => SearchBusinessFilterImpl.fromPointer(val, needFree: false)!);
  }

  static vector.Vector<SearchBusinessFilter?> toPlatformVectorOptional(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(ptr,
        (val) => SearchBusinessFilterImpl.fromPointer(val, needFree: false));
  }

  static vector.Vector<vector.Vector<SearchBusinessFilter>>
      toPlatformVectorVector(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<vector.Vector<SearchBusinessFilter>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<string_map.StringMap<SearchBusinessFilter>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<string_map.StringMap<SearchBusinessFilter>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}

extension SearchBusinessFilterEnumValueContainerExtension
    on SearchBusinessFilterEnumValue {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, SearchBusinessFilterEnumValue?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(
        obj, SearchBusinessFilterEnumValueImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String, core.List<SearchBusinessFilterEnumValue?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<core.String,
              core.Map<core.String, SearchBusinessFilterEnumValue?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(
      core.List<SearchBusinessFilterEnumValue?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(
        obj, SearchBusinessFilterEnumValueImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<SearchBusinessFilterEnumValue?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<core.Map<core.String, SearchBusinessFilterEnumValue?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<SearchBusinessFilterEnumValue> toPlatformMap(
      ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => SearchBusinessFilterEnumValueImpl.fromPointer(val,
            needFree: false));
  }

  static string_map.StringMap<vector.Vector<SearchBusinessFilterEnumValue>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map
      .StringMap<string_map.StringMap<SearchBusinessFilterEnumValue>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<SearchBusinessFilterEnumValue> toPlatformVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => SearchBusinessFilterEnumValueImpl.fromPointer(val,
            needFree: false)!);
  }

  static vector.Vector<SearchBusinessFilterEnumValue?> toPlatformVectorOptional(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => SearchBusinessFilterEnumValueImpl.fromPointer(val,
            needFree: false));
  }

  static vector.Vector<vector.Vector<SearchBusinessFilterEnumValue>>
      toPlatformVectorVector(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<vector.Vector<SearchBusinessFilterEnumValue>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<string_map.StringMap<SearchBusinessFilterEnumValue>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<string_map.StringMap<SearchBusinessFilterEnumValue>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}

extension SearchFilterSetContainerExtension on SearchFilterSet {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, SearchFilterSet?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, SearchFilterSetImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String, core.List<SearchFilterSet?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<core.String, core.Map<core.String, SearchFilterSet?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(
      core.List<SearchFilterSet?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, SearchFilterSetImpl.getNativePtr);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<SearchFilterSet?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<core.Map<core.String, SearchFilterSet?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<SearchFilterSet> toPlatformMap(
      ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr, (val) => SearchFilterSetImpl.fromPointer(val, needFree: false));
  }

  static string_map.StringMap<vector.Vector<SearchFilterSet>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map.StringMap<string_map.StringMap<SearchFilterSet>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<SearchFilterSet> toPlatformVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr, (val) => SearchFilterSetImpl.fromPointer(val, needFree: false)!);
  }

  static vector.Vector<SearchFilterSet?> toPlatformVectorOptional(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr, (val) => SearchFilterSetImpl.fromPointer(val, needFree: false));
  }

  static vector.Vector<vector.Vector<SearchFilterSet>> toPlatformVectorVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<vector.Vector<SearchFilterSet>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<string_map.StringMap<SearchFilterSet>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<string_map.StringMap<SearchFilterSet>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}

extension SearchBusinessFilterBooleanValueContainerExtension
    on SearchBusinessFilterBooleanValue {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, SearchBusinessFilterBooleanValue?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(
        obj, SearchBusinessFilterBooleanValueImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String, core.List<SearchBusinessFilterBooleanValue?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<core.String,
              core.Map<core.String, SearchBusinessFilterBooleanValue?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(
      core.List<SearchBusinessFilterBooleanValue?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(
        obj, SearchBusinessFilterBooleanValueImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<SearchBusinessFilterBooleanValue?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<core.Map<core.String, SearchBusinessFilterBooleanValue?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<SearchBusinessFilterBooleanValue> toPlatformMap(
      ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => SearchBusinessFilterBooleanValueImpl.fromPointer(val,
            needFree: false));
  }

  static string_map.StringMap<vector.Vector<SearchBusinessFilterBooleanValue>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map
      .StringMap<string_map.StringMap<SearchBusinessFilterBooleanValue>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<SearchBusinessFilterBooleanValue> toPlatformVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => SearchBusinessFilterBooleanValueImpl.fromPointer(val,
            needFree: false)!);
  }

  static vector.Vector<SearchBusinessFilterBooleanValue?>
      toPlatformVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => SearchBusinessFilterBooleanValueImpl.fromPointer(val,
            needFree: false));
  }

  static vector.Vector<vector.Vector<SearchBusinessFilterBooleanValue>>
      toPlatformVectorVector(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<vector.Vector<SearchBusinessFilterBooleanValue>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<string_map.StringMap<SearchBusinessFilterBooleanValue>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<string_map.StringMap<SearchBusinessFilterBooleanValue>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}

extension SearchBusinessFilterRangeValueContainerExtension
    on SearchBusinessFilterRangeValue {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, SearchBusinessFilterRangeValue?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(
        obj, SearchBusinessFilterRangeValueImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String, core.List<SearchBusinessFilterRangeValue?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<core.String,
              core.Map<core.String, SearchBusinessFilterRangeValue?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(
      core.List<SearchBusinessFilterRangeValue?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(
        obj, SearchBusinessFilterRangeValueImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<SearchBusinessFilterRangeValue?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<core.Map<core.String, SearchBusinessFilterRangeValue?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<SearchBusinessFilterRangeValue> toPlatformMap(
      ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => SearchBusinessFilterRangeValueImpl.fromPointer(val,
            needFree: false));
  }

  static string_map.StringMap<vector.Vector<SearchBusinessFilterRangeValue>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map
      .StringMap<string_map.StringMap<SearchBusinessFilterRangeValue>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<SearchBusinessFilterRangeValue> toPlatformVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => SearchBusinessFilterRangeValueImpl.fromPointer(val,
            needFree: false)!);
  }

  static vector.Vector<SearchBusinessFilterRangeValue?>
      toPlatformVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => SearchBusinessFilterRangeValueImpl.fromPointer(val,
            needFree: false));
  }

  static vector.Vector<vector.Vector<SearchBusinessFilterRangeValue>>
      toPlatformVectorVector(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<vector.Vector<SearchBusinessFilterRangeValue>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<string_map.StringMap<SearchBusinessFilterRangeValue>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<string_map.StringMap<SearchBusinessFilterRangeValue>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}

extension SearchBusinessFilterDateValueContainerExtension
    on SearchBusinessFilterDateValue {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, SearchBusinessFilterDateValue?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(
        obj, SearchBusinessFilterDateValueImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String, core.List<SearchBusinessFilterDateValue?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<core.String,
              core.Map<core.String, SearchBusinessFilterDateValue?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(
      core.List<SearchBusinessFilterDateValue?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(
        obj, SearchBusinessFilterDateValueImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<SearchBusinessFilterDateValue?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<core.Map<core.String, SearchBusinessFilterDateValue?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<SearchBusinessFilterDateValue> toPlatformMap(
      ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => SearchBusinessFilterDateValueImpl.fromPointer(val,
            needFree: false));
  }

  static string_map.StringMap<vector.Vector<SearchBusinessFilterDateValue>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map
      .StringMap<string_map.StringMap<SearchBusinessFilterDateValue>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<SearchBusinessFilterDateValue> toPlatformVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => SearchBusinessFilterDateValueImpl.fromPointer(val,
            needFree: false)!);
  }

  static vector.Vector<SearchBusinessFilterDateValue?> toPlatformVectorOptional(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => SearchBusinessFilterDateValueImpl.fromPointer(val,
            needFree: false));
  }

  static vector.Vector<vector.Vector<SearchBusinessFilterDateValue>>
      toPlatformVectorVector(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<vector.Vector<SearchBusinessFilterDateValue>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<string_map.StringMap<SearchBusinessFilterDateValue>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<string_map.StringMap<SearchBusinessFilterDateValue>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}

extension SearchBusinessFilterValuesContainerExtension
    on SearchBusinessFilterValues {
  static ffi.Pointer<ffi.Void> toNativeMap(
      core.Map<core.String, SearchBusinessFilterValues?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(
        obj, SearchBusinessFilterValuesImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeMapVector(
      core.Map<core.String, core.List<SearchBusinessFilterValues?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeMapDictionary(
      core.Map<core.String,
              core.Map<core.String, SearchBusinessFilterValues?>?>?
          obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return string_map.toNativeMap(obj, toNativeMap);
  }

  static ffi.Pointer<ffi.Void> toNativeVector(
      core.List<SearchBusinessFilterValues?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, SearchBusinessFilterValuesImpl.toPointer);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorVector(
      core.List<core.List<SearchBusinessFilterValues?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeVector);
  }

  static ffi.Pointer<ffi.Void> toNativeVectorDictionary(
      core.List<core.Map<core.String, SearchBusinessFilterValues?>?>? obj) {
    if (obj == null) {
      return ffi.nullptr;
    }

    return vector.toNativeVector(obj, toNativeMap);
  }

  static string_map.StringMap<SearchBusinessFilterValues> toPlatformMap(
      ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) =>
            SearchBusinessFilterValuesImpl.fromPointer(val, needFree: false));
  }

  static string_map.StringMap<vector.Vector<SearchBusinessFilterValues>>
      toPlatformMapVector(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static string_map.StringMap<string_map.StringMap<SearchBusinessFilterValues>>
      toPlatformMapDictionary(ffi.Pointer<ffi.Void> ptr) {
    return string_map.StringMap(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<SearchBusinessFilterValues> toPlatformVector(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) =>
            SearchBusinessFilterValuesImpl.fromPointer(val, needFree: false)!);
  }

  static vector.Vector<SearchBusinessFilterValues?> toPlatformVectorOptional(
      ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) =>
            SearchBusinessFilterValuesImpl.fromPointer(val, needFree: false));
  }

  static vector.Vector<vector.Vector<SearchBusinessFilterValues>>
      toPlatformVectorVector(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<vector.Vector<SearchBusinessFilterValues>?>
      toPlatformVectorVectorOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformVector(val.cast<ffi.Pointer<ffi.Void>>().value));
  }

  static vector.Vector<string_map.StringMap<SearchBusinessFilterValues>>
      toPlatformVectorDictionary(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
      ptr,
      (val) {
        assert(val != ffi.nullptr);
        return toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value);
      },
    );
  }

  static vector.Vector<string_map.StringMap<SearchBusinessFilterValues>?>
      toPlatformVectorDictionaryOptional(ffi.Pointer<ffi.Void> ptr) {
    return vector.Vector(
        ptr,
        (val) => val == ffi.nullptr
            ? null
            : toPlatformMap(val.cast<ffi.Pointer<ffi.Void>>().value));
  }
}
