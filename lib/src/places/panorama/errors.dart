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

part 'errors.containers.dart';

/// The panorama was not found.
@bindings_annotations.WeakInterface('places.panorama.NotFoundError')
@bindings_annotations.ContainerData(
    toNative: 'PanoramaNotFoundError.getNativePtr',
    toPlatform:
        '(val) => PanoramaNotFoundError.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class PanoramaNotFoundError extends runtime_error.Error
    implements ffi.Finalizable {
  static final _finalizer =
      ffi.NativeFinalizer(_PanoramaNotFoundError_free.cast());

  /// @nodoc
  PanoramaNotFoundError.fromExternalPtr(ffi.Pointer<ffi.Void> ptr)
      : super.fromExternalPtr(ptr);

  /// @nodoc
  @internal
  PanoramaNotFoundError.fromNativePtrImpl(ffi.Pointer<ffi.Void> ptr)
      : super.fromExternalPtr(ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory PanoramaNotFoundError.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PanoramaNotFoundError? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _PanoramaNotFoundError_check(ptr);
  }

  @internal

  /// @nodoc
  static PanoramaNotFoundError? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PanoramaNotFoundError.fromNativePtr(ptr);
  }
}

final _PanoramaNotFoundError_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_places_panorama_PanoramaNotFoundError_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _PanoramaNotFoundError_check =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_places_panorama_PanoramaNotFoundError_check')
        .asFunction(isLeaf: true);
