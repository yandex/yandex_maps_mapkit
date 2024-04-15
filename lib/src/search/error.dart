import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as runtime_error;

part 'error.containers.dart';

/// No cache available for offline search for the given request.
@bindings_annotations.WeakInterface('search.CacheUnavailableError')
@bindings_annotations.ContainerData(
    toNative: 'SearchCacheUnavailableError.getNativePtr',
    toPlatform:
        '(val) => SearchCacheUnavailableError.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class SearchCacheUnavailableError extends runtime_error.Error
    implements ffi.Finalizable {
  static final _finalizer =
      ffi.NativeFinalizer(_SearchCacheUnavailableError_free.cast());

  /// @nodoc
  SearchCacheUnavailableError.fromExternalPtr(ffi.Pointer<ffi.Void> ptr)
      : super.fromExternalPtr(ptr);

  /// @nodoc
  @internal
  SearchCacheUnavailableError.fromNativePtrImpl(ffi.Pointer<ffi.Void> ptr)
      : super.fromExternalPtr(ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory SearchCacheUnavailableError.fromNativePtr(
          ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SearchCacheUnavailableError? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _SearchCacheUnavailableError_check(ptr);
  }

  @internal

  /// @nodoc
  static SearchCacheUnavailableError? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchCacheUnavailableError.fromNativePtr(ptr);
  }
}

final _SearchCacheUnavailableError_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchCacheUnavailableError_free');
final core.bool Function(ffi.Pointer<ffi.Void>)
    _SearchCacheUnavailableError_check = lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCacheUnavailableError_check')
        .asFunction(isLeaf: true);
