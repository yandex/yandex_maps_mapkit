part of 'vehicle_raw_data.dart';

@bindings_annotations.ContainerData(
    toNative: 'VehicleRawDataImpl.getNativePtr',
    toPlatform: '(val) => VehicleRawDataImpl.fromPointer(val, needFree: false)',
    platformType: 'VehicleRawData')
final class VehicleRawDataImpl implements VehicleRawData {
  VehicleRawDataImpl(core.String id, core.String threadId,
      transport_masstransit_common.MasstransitLine line)
      : this.fromNativePtr(_VehicleRawData_init(
            to_native.toNativeString(id),
            to_native.toNativeString(threadId),
            transport_masstransit_common.MasstransitLineImpl.getNativePtr(
                line)));

  @core.override
  late final id = to_platform.toPlatformString(_VehicleRawData_get_id(_ptr));
  @core.override
  late final threadId =
      to_platform.toPlatformString(_VehicleRawData_get_threadId(_ptr));
  @core.override
  late final line =
      transport_masstransit_common.MasstransitLineImpl.fromNativePtr(
          _VehicleRawData_get_line(_ptr));

  @core.override
  final _VehicleRawDataFactory runtimeFactory = const _VehicleRawDataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_VehicleRawData_free.cast());

  VehicleRawDataImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(VehicleRawData? obj) {
    return (obj as VehicleRawDataImpl?)?._ptr ?? ffi.nullptr;
  }

  static VehicleRawData? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : VehicleRawDataImpl.fromNativePtr(ptr);
  }

  static VehicleRawData? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = VehicleRawDataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _VehicleRawDataFactory
    extends struct_factory.StructFactory<VehicleRawData> {
  const _VehicleRawDataFactory();

  @core.override
  VehicleRawData create(ffi.Pointer<ffi.Void> ptr) {
    return VehicleRawDataImpl.fromNativePtr(ptr);
  }

  @core.override
  VehicleRawData fromParent(ffi.Pointer<ffi.Void> ptr) {
    return VehicleRawDataImpl.fromNativePtr(_VehicleRawData_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(VehicleRawData obj) {
    return _VehicleRawData_upcast(VehicleRawDataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _VehicleRawData_name();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _VehicleRawData_downcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_VehicleRawData_downcast')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _VehicleRawData_upcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_VehicleRawData_upcast')
    .asFunction(isLeaf: true);

final native_types.NativeString Function() _VehicleRawData_name = lib.library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_transport_masstransit_internal_VehicleRawData_name')
    .asFunction(isLeaf: true);

final _VehicleRawData_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_internal_VehicleRawData_free');

final ffi.Pointer<ffi.Void> Function(native_types.NativeString,
        native_types.NativeString, ffi.Pointer<ffi.Void>) _VehicleRawData_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(native_types.NativeString,
                        native_types.NativeString, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_internal_VehicleRawData_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(
    ffi
        .Pointer<ffi.Void>) _VehicleRawData_get_id = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_VehicleRawData_get_id')
    .asFunction(isLeaf: true);
final native_types.NativeString Function(
    ffi
        .Pointer<ffi.Void>) _VehicleRawData_get_threadId = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_VehicleRawData_get_threadId')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _VehicleRawData_get_line = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_VehicleRawData_get_line')
    .asFunction(isLeaf: true);
