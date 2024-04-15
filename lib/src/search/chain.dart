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

part 'chain.containers.dart';

/// @nodoc
final class SearchChainNative extends ffi.Struct {
  external native_types.NativeString id;
  external native_types.NativeString name;
}

final SearchChainNative Function(
        native_types.NativeString, native_types.NativeString)
    _SearchChainNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchChainNative Function(
                        native_types.NativeString, native_types.NativeString)>>(
            'yandex_flutter_search_SearchChain_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchChain.toPointer',
    toPlatform: '(val) => SearchChain.fromPointer(val, needFree: false)')
class SearchChain {
  final core.String id;
  final core.String name;

  const SearchChain({
    required this.id,
    required this.name,
  });

  /// @nodoc
  @internal
  SearchChain.fromNative(SearchChainNative native)
      : this(
            id: to_platform.toPlatformString(native.id),
            name: to_platform.toPlatformString(native.name));

  /// @nodoc
  @internal
  static SearchChainNative toNative(SearchChain c) {
    return _SearchChainNativeInit(
        to_native.toNativeString(c.id), to_native.toNativeString(c.name));
  }

  /// @nodoc
  @internal
  static SearchChain? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchChain.fromNative(ptr.cast<SearchChainNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchChain? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchChainNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
