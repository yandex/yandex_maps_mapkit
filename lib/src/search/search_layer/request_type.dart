import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'request_type.containers.dart';

/// Type of search layer's search requests.
@bindings_annotations.ContainerData(
    toNative: 'RequestType.toPointer',
    toPlatform: '(val) => RequestType.fromPointer(val, needFree: false)')
enum RequestType {
  /// Primary request initiated via new query methods.
  NewQuery,

  /// Manual resubmit on search layer.
  ManualResubmit,

  /// Request to fetch next page of results.
  FetchNextPage,

  /// Request was initiated by map moved via API call.
  MapMoveByApp,

  /// Request was initiated by map moved via user gesture.
  MapMoveByGesture,
  ;

  /// @nodoc
  @internal
  static RequestType fromInt(core.int val) {
    return RequestType.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(RequestType e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static RequestType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(RequestType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}
