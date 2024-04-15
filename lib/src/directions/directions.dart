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
import 'package:yandex_maps_mapkit/src/directions/driving/driving_router.dart'
    as directions_driving_driving_router;

part 'directions.containers.dart';

@bindings_annotations.WeakInterface('directions.Directions')
@bindings_annotations.ContainerData(
    toNative: 'Directions.getNativePtr',
    toPlatform:
        '(val) => Directions.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class Directions implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Directions_free.cast());

  /// @nodoc
  Directions.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  Directions.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory Directions.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Directions? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _Directions_check(ptr);
  }

  @internal

  /// @nodoc
  static Directions? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return Directions.fromNativePtr(ptr);
  }

  /// Creates a manager that builds driving routes.
  directions_driving_driving_router.DrivingRouter createDrivingRouter(
      directions_driving_driving_router.DrivingRouterType type) {
    return directions_driving_driving_router.DrivingRouter.fromNativePtr(
        _Directions_createDrivingRouter(ptr,
            directions_driving_driving_router.DrivingRouterType.toInt(type)));
  }
}

final _Directions_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_Directions_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _Directions_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_Directions_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>, core.int)
    _Directions_createDrivingRouter = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Int64)>>(
            'yandex_flutter_directions_Directions_createDrivingRouter')
        .asFunction();

class DirectionsFactory {
  DirectionsFactory._();

  static Directions get instance {
    return Directions.fromNativePtr(_DirectionsFactory_get_instance());
  }
}

final ffi.Pointer<ffi.Void> Function() _DirectionsFactory_get_instance = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
        'yandex_flutter_directions_DirectionsFactory_get_instance')
    .asFunction(isLeaf: true);
