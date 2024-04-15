import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'masstransit_1x_object_metadata.containers.dart';

/// @nodoc
final class SearchLineNative extends ffi.Struct {
  external native_types.NativeString name;
}

final SearchLineNative Function(native_types.NativeString)
    _SearchLineNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchLineNative Function(native_types.NativeString)>>(
            'yandex_flutter_search_SearchLine_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchLine.toPointer',
    toPlatform: '(val) => SearchLine.fromPointer(val, needFree: false)')
class SearchLine {
  final core.String name;

  const SearchLine({
    required this.name,
  });

  /// @nodoc
  @internal
  SearchLine.fromNative(SearchLineNative native)
      : this(name: to_platform.toPlatformString(native.name));

  /// @nodoc
  @internal
  static SearchLineNative toNative(SearchLine c) {
    return _SearchLineNativeInit(to_native.toNativeString(c.name));
  }

  /// @nodoc
  @internal
  static SearchLine? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchLine.fromNative(ptr.cast<SearchLineNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchLine? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchLineNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
