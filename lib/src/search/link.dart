import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/attribution.dart'
    as mapkit_attribution;

part 'link.containers.dart';

/// @nodoc
final class SearchLinkNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> aref;
  external mapkit_attribution.AttributionLinkNative link;
  external ffi.Pointer<ffi.Void> tag;
}

final SearchLinkNative Function(ffi.Pointer<ffi.Void>,
        mapkit_attribution.AttributionLinkNative, ffi.Pointer<ffi.Void>)
    _SearchLinkNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchLinkNative Function(
                        ffi.Pointer<ffi.Void>,
                        mapkit_attribution.AttributionLinkNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchLink_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchLink.toPointer',
    toPlatform: '(val) => SearchLink.fromPointer(val, needFree: false)')
class SearchLink {
  final core.String? aref;
  final mapkit_attribution.AttributionLink link;
  final core.String? tag;

  const SearchLink(
    this.link, {
    this.aref,
    this.tag,
  });

  /// @nodoc
  @internal
  SearchLink.fromNative(SearchLinkNative native)
      : this(
            aref: to_platform.toPlatformFromPointerString(native.aref),
            mapkit_attribution.AttributionLink.fromNative(native.link),
            tag: to_platform.toPlatformFromPointerString(native.tag));

  /// @nodoc
  @internal
  static SearchLinkNative toNative(SearchLink c) {
    return _SearchLinkNativeInit(
        to_native.toNativePtrString(c.aref),
        mapkit_attribution.AttributionLink.toNative(c.link),
        to_native.toNativePtrString(c.tag));
  }

  /// @nodoc
  @internal
  static SearchLink? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchLink.fromNative(ptr.cast<SearchLinkNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchLink? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchLinkNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
