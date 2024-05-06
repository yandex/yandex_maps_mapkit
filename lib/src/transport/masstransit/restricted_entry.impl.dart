part of 'restricted_entry.dart';

@bindings_annotations.ContainerData(
    toNative: 'MasstransitRestrictedEntryImpl.toPointer',
    toPlatform:
        '(val) => MasstransitRestrictedEntryImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitRestrictedEntry')
final class MasstransitRestrictedEntryImpl
    implements MasstransitRestrictedEntry {
  MasstransitRestrictedEntryImpl(core.int position)
      : this.fromNativePtr(_MasstransitRestrictedEntry_init(position));

  @core.override
  late final position = _MasstransitRestrictedEntry_get_position(_ptr);

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitRestrictedEntry_free.cast());

  MasstransitRestrictedEntryImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRestrictedEntry? obj) {
    return (obj as MasstransitRestrictedEntryImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitRestrictedEntry? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitRestrictedEntryImpl.fromNativePtr(ptr);
  }

  static MasstransitRestrictedEntry? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitRestrictedEntryImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitRestrictedEntry? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitRestrictedEntry_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRestrictedEntry_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRestrictedEntry_clone')
    .asFunction(isLeaf: true);

final _MasstransitRestrictedEntry_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitRestrictedEntry_free');

final ffi.Pointer<ffi.Void> Function(
    core
        .int) _MasstransitRestrictedEntry_init = lib.library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Uint32)>>(
        'yandex_flutter_transport_masstransit_MasstransitRestrictedEntry_init')
    .asFunction(isLeaf: true);

final core.int Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRestrictedEntry_get_position = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRestrictedEntry_get_position')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'RestrictedEntriesContainerImpl.toPointer',
    toPlatform:
        '(val) => RestrictedEntriesContainerImpl.fromPointer(val, needFree: false)',
    platformType: 'RestrictedEntriesContainer')
final class RestrictedEntriesContainerImpl
    implements RestrictedEntriesContainer {
  RestrictedEntriesContainerImpl(core.List<MasstransitRestrictedEntry> entries)
      : this.fromNativePtr(_RestrictedEntriesContainer_init(
            MasstransitRestrictedEntryContainerExtension.toNativeVector(
                entries)));

  @core.override
  late final entries =
      MasstransitRestrictedEntryContainerExtension.toPlatformVector(
          _RestrictedEntriesContainer_get_entries(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_RestrictedEntriesContainer_free.cast());

  RestrictedEntriesContainerImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(RestrictedEntriesContainer? obj) {
    return (obj as RestrictedEntriesContainerImpl?)?._ptr ?? ffi.nullptr;
  }

  static RestrictedEntriesContainer? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : RestrictedEntriesContainerImpl.fromNativePtr(ptr);
  }

  static RestrictedEntriesContainer? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = RestrictedEntriesContainerImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(RestrictedEntriesContainer? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _RestrictedEntriesContainer_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RestrictedEntriesContainer_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_RestrictedEntriesContainer_clone')
    .asFunction(isLeaf: true);

final _RestrictedEntriesContainer_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_RestrictedEntriesContainer_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RestrictedEntriesContainer_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_RestrictedEntriesContainer_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RestrictedEntriesContainer_get_entries = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_RestrictedEntriesContainer_get_entries')
    .asFunction(isLeaf: true);
