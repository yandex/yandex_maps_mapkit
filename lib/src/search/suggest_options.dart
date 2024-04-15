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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;

part 'suggest_options.containers.dart';

/// Bitmask for requested suggest types.
@bindings_annotations.ContainerData(
    toNative: 'SuggestType.toPointer',
    toPlatform: '(val) => SuggestType.fromPointer(val, needFree: false)')
class SuggestType {
  /// Default value: server-defined types are returned.
  static const Unspecified = SuggestType(0);

  /// Toponyms.
  static const Geo = SuggestType(1);

  /// Companies.
  static const Biz = SuggestType(1 << 1);

  /// Mass transit routes.
  static const Transit = SuggestType(1 << 2);

  const SuggestType(this.value);
  final core.int value;

  SuggestType operator |(SuggestType other) {
    return SuggestType(value | other.value);
  }

  SuggestType operator &(SuggestType other) {
    return SuggestType(value & other.value);
  }

  SuggestType operator ~() {
    return SuggestType(~value);
  }

  /// @nodoc
  @internal
  static SuggestType fromInt(core.int val) {
    return SuggestType(val);
  }

  /// @nodoc
  @internal
  static core.int toInt(SuggestType e) {
    return e.value;
  }

  /// @nodoc
  @internal
  static SuggestType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SuggestType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class SuggestOptionsNative extends ffi.Struct {
  @ffi.Int64()
  external core.int suggestTypes;
  external ffi.Pointer<ffi.Void> userPosition;
  @ffi.Bool()
  external core.bool suggestWords;
}

final SuggestOptionsNative Function(core.int, ffi.Pointer<ffi.Void>, core.bool)
    _SuggestOptionsNativeInit = lib.library
        .lookup<
            ffi.NativeFunction<
                SuggestOptionsNative Function(ffi.Int64, ffi.Pointer<ffi.Void>,
                    ffi.Bool)>>('yandex_flutter_search_SuggestOptions_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SuggestOptions.toPointer',
    toPlatform: '(val) => SuggestOptions.fromPointer(val, needFree: false)')
class SuggestOptions {
  final SuggestType suggestTypes;
  final mapkit_geometry_point.Point? userPosition;
  final core.bool suggestWords;

  const SuggestOptions({
    this.suggestTypes = SuggestType.Unspecified,
    this.userPosition,
    this.suggestWords = false,
  });

  /// @nodoc
  @internal
  SuggestOptions.fromNative(SuggestOptionsNative native)
      : this(
            suggestTypes: SuggestType.fromInt(native.suggestTypes),
            userPosition:
                mapkit_geometry_point.Point.fromPointer(native.userPosition),
            suggestWords: native.suggestWords);

  /// @nodoc
  @internal
  static SuggestOptionsNative toNative(SuggestOptions c) {
    return _SuggestOptionsNativeInit(SuggestType.toInt(c.suggestTypes),
        mapkit_geometry_point.Point.toPointer(c.userPosition), c.suggestWords);
  }

  /// @nodoc
  @internal
  static SuggestOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SuggestOptions.fromNative(ptr.cast<SuggestOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SuggestOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SuggestOptionsNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
