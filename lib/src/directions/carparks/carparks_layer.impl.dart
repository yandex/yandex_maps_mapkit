part of 'carparks_layer.dart';

@bindings_annotations.WeakInterface('directions.carparks.CarparksLayer')
@bindings_annotations.ContainerData(
    toNative: 'CarparksLayerImpl.getNativePtr',
    toPlatform:
        '(val) => CarparksLayerImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'CarparksLayer')
class CarparksLayerImpl implements CarparksLayer, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_CarparksLayer_free.cast());

  /// @nodoc
  CarparksLayerImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  CarparksLayerImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory CarparksLayerImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(CarparksLayer? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as CarparksLayerImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _CarparksLayer_check(ptr);
  }

  @internal

  /// @nodoc
  static CarparksLayer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return CarparksLayerImpl.fromNativePtr(ptr);
  }

  core.bool isVisible() {
    final result = _CarparksLayer_isVisible(ptr);
    exception.checkCallResult();
    return result;
  }

  void setVisible(core.bool on) {
    _CarparksLayer_setVisible(ptr, on);
    exception.checkCallResult();
  }

  core.bool setCarparksStyle(core.String style) {
    final result =
        _CarparksLayer_setCarparksStyle(ptr, to_native.toNativeString(style));
    exception.checkCallResult();
    return result;
  }

  core.bool setCarparksStyleWithId({
    required core.int id,
    required core.String style,
  }) {
    final result = _CarparksLayer_setCarparksStyleWithId(
        ptr, id, to_native.toNativeString(style));
    exception.checkCallResult();
    return result;
  }

  void resetCarparksStyles() {
    _CarparksLayer_resetCarparksStyles(ptr);
    exception.checkCallResult();
  }
}

final _CarparksLayer_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_carparks_CarparksLayer_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _CarparksLayer_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_carparks_CarparksLayer_check')
    .asFunction(isLeaf: true);

final core.bool Function(ffi.Pointer<ffi.Void>) _CarparksLayer_isVisible = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_carparks_CarparksLayer_isVisible')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.bool)
    _CarparksLayer_setVisible = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
            'yandex_flutter_directions_carparks_CarparksLayer_setVisible')
        .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>, native_types.NativeString)
    _CarparksLayer_setCarparksStyle = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Bool Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeString)>>(
            'yandex_flutter_directions_carparks_CarparksLayer_setCarparksStyle')
        .asFunction();
final core.bool Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    native_types
        .NativeString) _CarparksLayer_setCarparksStyleWithId = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Bool Function(ffi.Pointer<ffi.Void>, ffi.Int,
                    native_types.NativeString)>>(
        'yandex_flutter_directions_carparks_CarparksLayer_setCarparksStyleWithId')
    .asFunction();
final void Function(
    ffi
        .Pointer<ffi.Void>) _CarparksLayer_resetCarparksStyles = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_carparks_CarparksLayer_resetCarparksStyles')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _CarparksLayer_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_directions_carparks_CarparksLayer_set_')
    .asFunction(isLeaf: true);
