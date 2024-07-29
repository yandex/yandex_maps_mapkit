part of 'trajectory.dart';

@bindings_annotations.ContainerData(
    toNative: 'TrajectorySegmentMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => TrajectorySegmentMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'TrajectorySegmentMetadata')
final class TrajectorySegmentMetadataImpl implements TrajectorySegmentMetadata {
  TrajectorySegmentMetadataImpl(core.int time, core.int duration)
      : this.fromNativePtr(_TrajectorySegmentMetadata_init(time, duration));

  @core.override
  late final time = _TrajectorySegmentMetadata_get_time(_ptr);
  @core.override
  late final duration = _TrajectorySegmentMetadata_get_duration(_ptr);

  @core.override
  final _TrajectorySegmentMetadataFactory runtimeFactory =
      const _TrajectorySegmentMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_TrajectorySegmentMetadata_free.cast());

  TrajectorySegmentMetadataImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(TrajectorySegmentMetadata? obj) {
    return (obj as TrajectorySegmentMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static TrajectorySegmentMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : TrajectorySegmentMetadataImpl.fromNativePtr(ptr);
  }

  static TrajectorySegmentMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = TrajectorySegmentMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _TrajectorySegmentMetadataFactory
    extends struct_factory.StructFactory<TrajectorySegmentMetadata> {
  const _TrajectorySegmentMetadataFactory();

  @core.override
  TrajectorySegmentMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return TrajectorySegmentMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  TrajectorySegmentMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return TrajectorySegmentMetadataImpl.fromNativePtr(
        _TrajectorySegmentMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(TrajectorySegmentMetadata obj) {
    return _TrajectorySegmentMetadata_upcast(
        TrajectorySegmentMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _TrajectorySegmentMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _TrajectorySegmentMetadata_downcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TrajectorySegmentMetadata_downcast')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _TrajectorySegmentMetadata_upcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TrajectorySegmentMetadata_upcast')
    .asFunction(isLeaf: true);

final native_types.NativeString Function() _TrajectorySegmentMetadata_name = lib
    .library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_transport_masstransit_internal_TrajectorySegmentMetadata_name')
    .asFunction(isLeaf: true);

final _TrajectorySegmentMetadata_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_transport_masstransit_internal_TrajectorySegmentMetadata_free');

final ffi.Pointer<ffi.Void> Function(
    core.int,
    core
        .int) _TrajectorySegmentMetadata_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Int64, ffi.Uint32)>>(
        'yandex_flutter_transport_masstransit_internal_TrajectorySegmentMetadata_init')
    .asFunction(isLeaf: true);

final core.int Function(
    ffi
        .Pointer<ffi.Void>) _TrajectorySegmentMetadata_get_time = lib.library
    .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TrajectorySegmentMetadata_get_time')
    .asFunction(isLeaf: true);
final core.int Function(
    ffi
        .Pointer<ffi.Void>) _TrajectorySegmentMetadata_get_duration = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_TrajectorySegmentMetadata_get_duration')
    .asFunction(isLeaf: true);
