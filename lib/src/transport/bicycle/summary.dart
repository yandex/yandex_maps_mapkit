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
import 'package:yandex_maps_mapkit/src/transport/bicycle/flags.dart'
    as transport_bicycle_flags;
import 'package:yandex_maps_mapkit/src/transport/bicycle/weight.dart'
    as transport_bicycle_weight;

part 'summary.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'BicycleSummary.toPointer',
    toPlatform: '(val) => BicycleSummary.fromPointer(val, needFree: false)')
class BicycleSummary implements ffi.Finalizable {
  late final weight = transport_bicycle_weight.BicycleWeight.fromNative(
      _BicycleSummary_get_weight(_ptr));
  late final flags = transport_bicycle_flags.BicycleFlags.fromPointer(
      _BicycleSummary_get_flags(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_BicycleSummary_free.cast());

  BicycleSummary(transport_bicycle_weight.BicycleWeight weight,
      transport_bicycle_flags.BicycleFlags? flags)
      : this.fromNativePtr(_BicycleSummary_init(
            transport_bicycle_weight.BicycleWeight.toNative(weight),
            transport_bicycle_flags.BicycleFlags.toPointer(flags)));

  /// @nodoc
  @internal
  BicycleSummary.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(BicycleSummary? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static BicycleSummary? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BicycleSummary.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static BicycleSummary? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        BicycleSummary.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(BicycleSummary? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _BicycleSummary_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _BicycleSummary_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleSummary_clone')
        .asFunction(isLeaf: true);

final _BicycleSummary_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_bicycle_BicycleSummary_free');

final ffi.Pointer<ffi.Void> Function(
        transport_bicycle_weight.BicycleWeightNative, ffi.Pointer<ffi.Void>)
    _BicycleSummary_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        transport_bicycle_weight.BicycleWeightNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleSummary_init')
        .asFunction(isLeaf: true);

final transport_bicycle_weight.BicycleWeightNative Function(
        ffi.Pointer<ffi.Void>) _BicycleSummary_get_weight =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    transport_bicycle_weight.BicycleWeightNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleSummary_get_weight')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _BicycleSummary_get_flags = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_bicycle_BicycleSummary_get_flags')
        .asFunction(isLeaf: true);
