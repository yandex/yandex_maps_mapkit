part of 'directions.dart';

@bindings_annotations.WeakInterface('directions.Directions')
@bindings_annotations.ContainerData(
    toNative: 'DirectionsImpl.getNativePtr',
    toPlatform:
        '(val) => DirectionsImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'Directions')
class DirectionsImpl implements Directions, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Directions_free.cast());

  /// @nodoc
  DirectionsImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  DirectionsImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory DirectionsImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Directions? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as DirectionsImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _Directions_check(ptr);
  }

  @internal

  /// @nodoc
  static Directions? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DirectionsImpl.fromNativePtr(ptr);
  }

  directions_driving_driving_router.DrivingRouter createDrivingRouter(
      directions_driving_driving_router.DrivingRouterType type) {
    final result = _Directions_createDrivingRouter(ptr,
        directions_driving_driving_router.DrivingRouterTypeImpl.toInt(type));
    exception.checkCallResult();
    return directions_driving_driving_router.DrivingRouterImpl.fromNativePtr(
        result);
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
final void Function(ffi.Pointer<ffi.Void>, core.int) _Directions_set = lib
    .library
    .lookup<
        ffi.NativeFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Int64)>>('yandex_flutter_directions_Directions_set_')
    .asFunction(isLeaf: true);

Directions get _instance {
  return DirectionsImpl.fromNativePtr(_DirectionsFactory_get_instance());
}

final ffi.Pointer<ffi.Void> Function() _DirectionsFactory_get_instance = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
        'yandex_flutter_directions_DirectionsFactory_get_instance')
    .asFunction(isLeaf: true);
