part of 'section_metadata_internal.dart';

@bindings_annotations.ContainerData(
    toNative: 'SectionMetadataInternalImpl.getNativePtr',
    toPlatform:
        '(val) => SectionMetadataInternalImpl.fromPointer(val, needFree: false)',
    platformType: 'SectionMetadataInternal')
final class SectionMetadataInternalImpl implements SectionMetadataInternal {
  SectionMetadataInternalImpl(
      transport_masstransit_route.MasstransitSectionMetadata metadata,
      core.bool isPassThroughTransportSection)
      : this.fromNativePtr(_SectionMetadataInternal_init(
            transport_masstransit_route.MasstransitSectionMetadataImpl
                .getNativePtr(metadata),
            isPassThroughTransportSection));

  @core.override
  late final metadata =
      transport_masstransit_route.MasstransitSectionMetadataImpl.fromNativePtr(
          _SectionMetadataInternal_get_metadata(_ptr));
  @core.override
  late final isPassThroughTransportSection =
      _SectionMetadataInternal_get_isPassThroughTransportSection(_ptr);

  @core.override
  final _SectionMetadataInternalFactory runtimeFactory =
      const _SectionMetadataInternalFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SectionMetadataInternal_free.cast());

  SectionMetadataInternalImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SectionMetadataInternal? obj) {
    return (obj as SectionMetadataInternalImpl?)?._ptr ?? ffi.nullptr;
  }

  static SectionMetadataInternal? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SectionMetadataInternalImpl.fromNativePtr(ptr);
  }

  static SectionMetadataInternal? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SectionMetadataInternalImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _SectionMetadataInternalFactory
    extends struct_factory.StructFactory<SectionMetadataInternal> {
  const _SectionMetadataInternalFactory();

  @core.override
  SectionMetadataInternal create(ffi.Pointer<ffi.Void> ptr) {
    return SectionMetadataInternalImpl.fromNativePtr(ptr);
  }

  @core.override
  SectionMetadataInternal fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SectionMetadataInternalImpl.fromNativePtr(
        _SectionMetadataInternal_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SectionMetadataInternal obj) {
    return _SectionMetadataInternal_upcast(
        SectionMetadataInternalImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SectionMetadataInternal_name();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SectionMetadataInternal_downcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_SectionMetadataInternal_downcast')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SectionMetadataInternal_upcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_SectionMetadataInternal_upcast')
    .asFunction(isLeaf: true);

final native_types.NativeString Function() _SectionMetadataInternal_name = lib
    .library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_transport_masstransit_internal_SectionMetadataInternal_name')
    .asFunction(isLeaf: true);

final _SectionMetadataInternal_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_transport_masstransit_internal_SectionMetadataInternal_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _SectionMetadataInternal_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_transport_masstransit_internal_SectionMetadataInternal_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SectionMetadataInternal_get_metadata = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_SectionMetadataInternal_get_metadata')
    .asFunction(isLeaf: true);
final core.bool Function(
    ffi.Pointer<
        ffi
        .Void>) _SectionMetadataInternal_get_isPassThroughTransportSection = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_internal_SectionMetadataInternal_get_isPassThroughTransportSection')
    .asFunction(isLeaf: true);
