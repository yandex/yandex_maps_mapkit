import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'restricted_entry.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'MasstransitRestrictedEntry.toPointer',
    toPlatform:
        '(val) => MasstransitRestrictedEntry.fromPointer(val, needFree: false)')
class MasstransitRestrictedEntry implements ffi.Finalizable {
  late final position = _MasstransitRestrictedEntry_get_position(_ptr);

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitRestrictedEntry_free.cast());

  MasstransitRestrictedEntry(core.int position)
      : this.fromNativePtr(_MasstransitRestrictedEntry_init(position));

  /// @nodoc
  @internal
  MasstransitRestrictedEntry.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRestrictedEntry? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitRestrictedEntry? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitRestrictedEntry.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitRestrictedEntry? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitRestrictedEntry.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
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
    toNative: 'RestrictedEntriesContainer.toPointer',
    toPlatform:
        '(val) => RestrictedEntriesContainer.fromPointer(val, needFree: false)')
class RestrictedEntriesContainer implements ffi.Finalizable {
  late final entries =
      MasstransitRestrictedEntryContainerExtension.toPlatformVector(
          _RestrictedEntriesContainer_get_entries(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_RestrictedEntriesContainer_free.cast());

  RestrictedEntriesContainer(core.List<MasstransitRestrictedEntry> entries)
      : this.fromNativePtr(_RestrictedEntriesContainer_init(
            MasstransitRestrictedEntryContainerExtension.toNativeVector(
                entries)));

  /// @nodoc
  @internal
  RestrictedEntriesContainer.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(RestrictedEntriesContainer? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static RestrictedEntriesContainer? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return RestrictedEntriesContainer.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static RestrictedEntriesContainer? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = RestrictedEntriesContainer.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
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
