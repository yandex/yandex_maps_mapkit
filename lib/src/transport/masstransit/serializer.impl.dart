part of 'serializer.dart';

@bindings_annotations.ContainerData(
    toNative: 'MasstransitRouteSerializerImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitRouteSerializerImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'MasstransitRouteSerializer')
class MasstransitRouteSerializerImpl
    implements MasstransitRouteSerializer, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitRouteSerializer_free.cast());

  /// @nodoc
  MasstransitRouteSerializerImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  MasstransitRouteSerializerImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRouteSerializer? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as MasstransitRouteSerializerImpl).ptr;
  }

  @internal

  /// @nodoc
  static MasstransitRouteSerializer? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitRouteSerializerImpl.fromNativePtr(ptr);
  }

  typed_data.ByteBuffer save(
      transport_masstransit_route.MasstransitRoute route) {
    return to_platform.toPlatformBytes(_MasstransitRouteSerializer_save(ptr,
        transport_masstransit_route.MasstransitRouteImpl.getNativePtr(route)));
  }

  transport_masstransit_route.MasstransitRoute? load(
      typed_data.ByteBuffer data) {
    return transport_masstransit_route.MasstransitRouteImpl.fromOptionalPtr(
        _MasstransitRouteSerializer_load(ptr, to_native.toNativeBytes(data)));
  }
}

final _MasstransitRouteSerializer_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteSerializer_free');

final native_types.NativeBytes Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteSerializer_save = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeBytes Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteSerializer_save')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    native_types
        .NativeBytes) _MasstransitRouteSerializer_load = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, native_types.NativeBytes)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteSerializer_load')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _MasstransitRouteSerializer_set = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteSerializer_set_')
    .asFunction(isLeaf: true);
