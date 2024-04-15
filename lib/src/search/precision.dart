import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'precision.containers.dart';

/// Precision for matching house numbers (response vs. request).
@bindings_annotations.ContainerData(
    toNative: 'SearchPrecision.toPointer',
    toPlatform: '(val) => SearchPrecision.fromPointer(val, needFree: false)')
enum SearchPrecision {
  /// The house number in the response is exactly the same as requested
  /// (3/2 vs. 3/2)
  Exact,

  /// The house number in the response has the same number part as the
  /// requested one (5 vs. 5a).
  Number,

  /// The house number and coordinates are restored from the house range.
  /// This means that there is no information about this specific house,
  /// but there is information about a range of houses to infer house
  /// position from.
  Range,

  /// The house number in the response is close to the requested one (13
  /// vs. 11).
  Nearby,
  ;

  /// @nodoc
  @internal
  static SearchPrecision fromInt(core.int val) {
    return SearchPrecision.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(SearchPrecision e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static SearchPrecision? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(SearchPrecision? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}
