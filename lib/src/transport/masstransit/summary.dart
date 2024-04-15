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
import 'package:yandex_maps_mapkit/src/transport/masstransit/flags.dart'
    as transport_masstransit_flags;
import 'package:yandex_maps_mapkit/src/transport/masstransit/travel_estimation.dart'
    as transport_masstransit_travel_estimation;
import 'package:yandex_maps_mapkit/src/transport/masstransit/weight.dart'
    as transport_masstransit_weight;

part 'summary.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'MasstransitSummary.toPointer',
    toPlatform: '(val) => MasstransitSummary.fromPointer(val, needFree: false)')
class MasstransitSummary implements ffi.Finalizable {
  late final weight = transport_masstransit_weight.MasstransitWeight.fromNative(
      _MasstransitSummary_get_weight(_ptr));
  late final estimation =
      transport_masstransit_travel_estimation.MasstransitTravelEstimation
          .fromPointer(_MasstransitSummary_get_estimation(_ptr));
  late final flags = transport_masstransit_flags.MasstransitFlags.fromPointer(
      _MasstransitSummary_get_flags(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitSummary_free.cast());

  MasstransitSummary(
      transport_masstransit_weight.MasstransitWeight weight,
      transport_masstransit_travel_estimation.MasstransitTravelEstimation?
          estimation,
      transport_masstransit_flags.MasstransitFlags? flags)
      : this.fromNativePtr(_MasstransitSummary_init(
            transport_masstransit_weight.MasstransitWeight.toNative(weight),
            transport_masstransit_travel_estimation.MasstransitTravelEstimation
                .toPointer(estimation),
            transport_masstransit_flags.MasstransitFlags.toPointer(flags)));

  /// @nodoc
  @internal
  MasstransitSummary.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitSummary? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitSummary? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitSummary.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitSummary? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitSummary.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitSummary? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitSummary_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitSummary_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitSummary_clone')
        .asFunction(isLeaf: true);

final _MasstransitSummary_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitSummary_free');

final ffi.Pointer<ffi.Void> Function(
        transport_masstransit_weight.MasstransitWeightNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _MasstransitSummary_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        transport_masstransit_weight.MasstransitWeightNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitSummary_init')
        .asFunction(isLeaf: true);

final transport_masstransit_weight.MasstransitWeightNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitSummary_get_weight = lib.library
    .lookup<
            ffi.NativeFunction<
                transport_masstransit_weight.MasstransitWeightNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSummary_get_weight')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitSummary_get_estimation = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSummary_get_estimation')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitSummary_get_flags = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitSummary_get_flags')
        .asFunction(isLeaf: true);
