import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'display_type.containers.dart';

/// Result display type.
@bindings_annotations.ContainerData(
    toNative: 'SearchDisplayType.toPointer',
    toPlatform: '(val) => SearchDisplayType.fromPointer(val, needFree: false)')
enum SearchDisplayType {
  /// Each result makes sense without the others (that is toponyms), they
  /// probably shouldn'be displayed as a group, and probably there's no
  /// need to make additional requests after user moves the map or zooms in
  /// or out.
  Single,

  /// Results are meaningful as a group (that is category query), they
  /// should be displayed all together, and it makes sense to send
  /// additional requests after user changes visible map region.
  Multiple,
  ;

  /// @nodoc
  @internal
  static SearchDisplayType fromInt(core.int val) {
    return SearchDisplayType.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(SearchDisplayType e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static SearchDisplayType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(SearchDisplayType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}
