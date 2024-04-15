import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/struct_factory.dart'
    as struct_factory;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;

part 'common.containers.dart';

/// @nodoc
final class MasstransitStopFeatureMaskNative extends ffi.Struct {
  @ffi.Bool()
  external core.bool cooled;
  @ffi.Bool()
  external core.bool heated;
}

final MasstransitStopFeatureMaskNative Function(
    core.bool,
    core
        .bool) _MasstransitStopFeatureMaskNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                MasstransitStopFeatureMaskNative Function(ffi.Bool, ffi.Bool)>>(
        'yandex_flutter_transport_masstransit_MasstransitStopFeatureMask_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitStopFeatureMask.toPointer',
    toPlatform:
        '(val) => MasstransitStopFeatureMask.fromPointer(val, needFree: false)')
class MasstransitStopFeatureMask {
  final core.bool cooled;
  final core.bool heated;

  const MasstransitStopFeatureMask({
    required this.cooled,
    required this.heated,
  });

  /// @nodoc
  @internal
  MasstransitStopFeatureMask.fromNative(MasstransitStopFeatureMaskNative native)
      : this(cooled: native.cooled, heated: native.heated);

  /// @nodoc
  @internal
  static MasstransitStopFeatureMaskNative toNative(
      MasstransitStopFeatureMask c) {
    return _MasstransitStopFeatureMaskNativeInit(c.cooled, c.heated);
  }

  /// @nodoc
  @internal
  static MasstransitStopFeatureMask? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitStopFeatureMask.fromNative(
        ptr.cast<MasstransitStopFeatureMaskNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitStopFeatureMask? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitStopFeatureMaskNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTransportContour.toPointer',
    toPlatform:
        '(val) => MasstransitTransportContour.fromPointer(val, needFree: false)')
class MasstransitTransportContour implements ffi.Finalizable {
  late final name =
      to_platform.toPlatformString(_MasstransitTransportContour_get_name(_ptr));
  late final style = MasstransitTransportContourStyle.fromPointer(
      _MasstransitTransportContour_get_style(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitTransportContour_free.cast());

  MasstransitTransportContour(
      core.String name, MasstransitTransportContourStyle? style)
      : this.fromNativePtr(_MasstransitTransportContour_init(
            to_native.toNativeString(name),
            MasstransitTransportContourStyle.toPointer(style)));

  /// @nodoc
  @internal
  MasstransitTransportContour.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitTransportContour? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitTransportContour? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitTransportContour.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitTransportContour? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitTransportContour.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitTransportContour? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitTransportContour_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitTransportContour_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransportContour_clone')
    .asFunction(isLeaf: true);

final _MasstransitTransportContour_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_transport_masstransit_MasstransitTransportContour_free');

final ffi.Pointer<ffi.Void> Function(
    native_types.NativeString,
    ffi
        .Pointer<ffi.Void>) _MasstransitTransportContour_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    native_types.NativeString, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransportContour_init')
    .asFunction(isLeaf: true);

final native_types.NativeString Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitTransportContour_get_name = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransportContour_get_name')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitTransportContour_get_style = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransportContour_get_style')
    .asFunction(isLeaf: true);

/// @nodoc
final class MasstransitTransportContourStyleNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> mainColor;
  external ffi.Pointer<ffi.Void> mainColorNight;
}

final MasstransitTransportContourStyleNative Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _MasstransitTransportContourStyleNativeInit = lib
    .library
    .lookup<
            ffi.NativeFunction<
                MasstransitTransportContourStyleNative Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_TransportContour_MasstransitTransportContourStyle_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTransportContourStyle.toPointer',
    toPlatform:
        '(val) => MasstransitTransportContourStyle.fromPointer(val, needFree: false)')
class MasstransitTransportContourStyle {
  final core.int? mainColor;
  final core.int? mainColorNight;

  const MasstransitTransportContourStyle({
    this.mainColor,
    this.mainColorNight,
  });

  /// @nodoc
  @internal
  MasstransitTransportContourStyle.fromNative(
      MasstransitTransportContourStyleNative native)
      : this(
            mainColor:
                to_platform.toPlatformFromPointerUint32(native.mainColor),
            mainColorNight:
                to_platform.toPlatformFromPointerUint32(native.mainColorNight));

  /// @nodoc
  @internal
  static MasstransitTransportContourStyleNative toNative(
      MasstransitTransportContourStyle c) {
    return _MasstransitTransportContourStyleNativeInit(
        to_native.toNativePtrUint32(c.mainColor),
        to_native.toNativePtrUint32(c.mainColorNight));
  }

  /// @nodoc
  @internal
  static MasstransitTransportContourStyle? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitTransportContourStyle.fromNative(
        ptr.cast<MasstransitTransportContourStyleNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitTransportContourStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitTransportContourStyleNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitStop.toPointer',
    toPlatform: '(val) => MasstransitStop.fromPointer(val, needFree: false)')
class MasstransitStop extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final id = to_platform.toPlatformString(_MasstransitStop_get_id(_ptr));
  late final name =
      to_platform.toPlatformString(_MasstransitStop_get_name(_ptr));
  late final additionalName = to_platform
      .toPlatformFromPointerString(_MasstransitStop_get_additionalName(_ptr));
  late final features = MasstransitStopFeatureMask.fromPointer(
      _MasstransitStop_get_features(_ptr));
  late final transportContours =
      MasstransitTransportContourContainerExtension.toPlatformVector(
          _MasstransitStop_get_transportContours(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_MasstransitStop_free.cast());

  MasstransitStop(
      core.String id,
      core.String name,
      core.String? additionalName,
      MasstransitStopFeatureMask? features,
      core.List<MasstransitTransportContour> transportContours)
      : this.fromNativePtr(_MasstransitStop_init(
            to_native.toNativeString(id),
            to_native.toNativeString(name),
            to_native.toNativePtrString(additionalName),
            MasstransitStopFeatureMask.toPointer(features),
            MasstransitTransportContourContainerExtension.toNativeVector(
                transportContours)));

  /// @nodoc
  @internal
  MasstransitStop.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitStop? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitStop? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitStop.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitStop? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        MasstransitStop.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitStop? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitStop_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _MasstransitStopFactory get factory => const _MasstransitStopFactory();

  /// @nodoc
  @core.override
  _MasstransitStopFactory get runtimeFactory => const _MasstransitStopFactory();
}

/// @nodoc
class _MasstransitStopFactory
    extends struct_factory.StructFactory<MasstransitStop> {
  const _MasstransitStopFactory();

  @core.override
  MasstransitStop create(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitStop.fromNativePtr(ptr);
  }

  @core.override
  MasstransitStop fromParent(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitStop.fromNativePtr(_MasstransitStop_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(MasstransitStop obj) {
    return _MasstransitStop_upcast(MasstransitStop.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _MasstransitStop_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitStop_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitStop_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitStop_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitStop_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _MasstransitStop_name = lib.library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_transport_masstransit_MasstransitStop_name')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitStop_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitStop_clone')
        .asFunction(isLeaf: true);

final _MasstransitStop_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitStop_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString,
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _MasstransitStop_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString,
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitStop_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _MasstransitStop_get_id = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitStop_get_id')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _MasstransitStop_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitStop_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitStop_get_additionalName = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitStop_get_additionalName')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitStop_get_features = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitStop_get_features')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitStop_get_transportContours = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitStop_get_transportContours')
    .asFunction(isLeaf: true);

/// Transport types
@bindings_annotations.ContainerData(
    toNative: 'MasstransitTransportType.toPointer',
    toPlatform:
        '(val) => MasstransitTransportType.fromPointer(val, needFree: false)')
enum MasstransitTransportType {
  Unknown,
  Bus,
  Minibus,
  Railway,
  Suburban,
  Tram,
  Trolleybus,
  Underground,
  Water,
  ;

  /// @nodoc
  @internal
  static MasstransitTransportType fromInt(core.int val) {
    return MasstransitTransportType.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(MasstransitTransportType e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static MasstransitTransportType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(MasstransitTransportType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitLine.toPointer',
    toPlatform: '(val) => MasstransitLine.fromPointer(val, needFree: false)')
class MasstransitLine extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final id = to_platform.toPlatformString(_MasstransitLine_get_id(_ptr));
  late final name =
      to_platform.toPlatformString(_MasstransitLine_get_name(_ptr));
  late final vehicleTypes =
      to_platform.toVectorString(_MasstransitLine_get_vehicleTypes(_ptr));
  late final style =
      MasstransitLineStyle.fromPointer(_MasstransitLine_get_style(_ptr));
  late final isNight = _MasstransitLine_get_isNight(_ptr);
  late final uri =
      to_platform.toPlatformFromPointerString(_MasstransitLine_get_uri(_ptr));
  late final shortName = to_platform
      .toPlatformFromPointerString(_MasstransitLine_get_shortName(_ptr));
  late final transportSystemId = to_platform.toPlatformFromPointerString(
      _MasstransitLine_get_transportSystemId(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_MasstransitLine_free.cast());

  MasstransitLine(
      core.String id,
      core.String name,
      core.List<core.String> vehicleTypes,
      MasstransitLineStyle? style,
      core.bool isNight,
      core.String? uri,
      core.String? shortName,
      core.String? transportSystemId)
      : this.fromNativePtr(_MasstransitLine_init(
            to_native.toNativeString(id),
            to_native.toNativeString(name),
            to_native.toNativeVectorString(vehicleTypes),
            MasstransitLineStyle.toPointer(style),
            isNight,
            to_native.toNativePtrString(uri),
            to_native.toNativePtrString(shortName),
            to_native.toNativePtrString(transportSystemId)));

  /// @nodoc
  @internal
  MasstransitLine.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitLine? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitLine? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitLine.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitLine? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        MasstransitLine.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitLine? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitLine_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _MasstransitLineFactory get factory => const _MasstransitLineFactory();

  /// @nodoc
  @core.override
  _MasstransitLineFactory get runtimeFactory => const _MasstransitLineFactory();
}

/// @nodoc
class _MasstransitLineFactory
    extends struct_factory.StructFactory<MasstransitLine> {
  const _MasstransitLineFactory();

  @core.override
  MasstransitLine create(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitLine.fromNativePtr(ptr);
  }

  @core.override
  MasstransitLine fromParent(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitLine.fromNativePtr(_MasstransitLine_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(MasstransitLine obj) {
    return _MasstransitLine_upcast(MasstransitLine.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _MasstransitLine_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitLine_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitLine_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitLine_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitLine_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _MasstransitLine_name = lib.library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_transport_masstransit_MasstransitLine_name')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitLine_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitLine_clone')
        .asFunction(isLeaf: true);

final _MasstransitLine_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitLine_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString,
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        core.bool,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _MasstransitLine_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString,
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Bool,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitLine_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _MasstransitLine_get_id = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitLine_get_id')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _MasstransitLine_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitLine_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitLine_get_vehicleTypes = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitLine_get_vehicleTypes')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitLine_get_style = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitLine_get_style')
        .asFunction(isLeaf: true);
final core.bool Function(ffi.Pointer<ffi.Void>) _MasstransitLine_get_isNight =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitLine_get_isNight')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitLine_get_uri = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitLine_get_uri')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitLine_get_shortName = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitLine_get_shortName')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitLine_get_transportSystemId = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitLine_get_transportSystemId')
    .asFunction(isLeaf: true);

/// @nodoc
final class MasstransitLineStyleNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> color;
}

final MasstransitLineStyleNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitLineStyleNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                MasstransitLineStyleNative Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_Line_MasstransitLineStyle_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitLineStyle.toPointer',
    toPlatform:
        '(val) => MasstransitLineStyle.fromPointer(val, needFree: false)')
class MasstransitLineStyle {
  final core.int? color;

  const MasstransitLineStyle({
    this.color,
  });

  /// @nodoc
  @internal
  MasstransitLineStyle.fromNative(MasstransitLineStyleNative native)
      : this(color: to_platform.toPlatformFromPointerUint32(native.color));

  /// @nodoc
  @internal
  static MasstransitLineStyleNative toNative(MasstransitLineStyle c) {
    return _MasstransitLineStyleNativeInit(
        to_native.toNativePtrUint32(c.color));
  }

  /// @nodoc
  @internal
  static MasstransitLineStyle? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitLineStyle.fromNative(
        ptr.cast<MasstransitLineStyleNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitLineStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitLineStyleNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitThread.toPointer',
    toPlatform: '(val) => MasstransitThread.fromPointer(val, needFree: false)')
class MasstransitThread extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final id = to_platform.toPlatformString(_MasstransitThread_get_id(_ptr));
  late final essentialStops =
      MasstransitStopContainerExtension.toPlatformVector(
          _MasstransitThread_get_essentialStops(_ptr));
  late final description = to_platform
      .toPlatformFromPointerString(_MasstransitThread_get_description(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_MasstransitThread_free.cast());

  MasstransitThread(core.String id, core.List<MasstransitStop> essentialStops,
      core.String? description)
      : this.fromNativePtr(_MasstransitThread_init(
            to_native.toNativeString(id),
            MasstransitStopContainerExtension.toNativeVector(essentialStops),
            to_native.toNativePtrString(description)));

  /// @nodoc
  @internal
  MasstransitThread.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitThread? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitThread? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitThread.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitThread? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitThread.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitThread? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitThread_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _MasstransitThreadFactory get factory =>
      const _MasstransitThreadFactory();

  /// @nodoc
  @core.override
  _MasstransitThreadFactory get runtimeFactory =>
      const _MasstransitThreadFactory();
}

/// @nodoc
class _MasstransitThreadFactory
    extends struct_factory.StructFactory<MasstransitThread> {
  const _MasstransitThreadFactory();

  @core.override
  MasstransitThread create(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitThread.fromNativePtr(ptr);
  }

  @core.override
  MasstransitThread fromParent(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitThread.fromNativePtr(_MasstransitThread_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(MasstransitThread obj) {
    return _MasstransitThread_upcast(MasstransitThread.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _MasstransitThread_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitThread_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitThread_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitThread_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitThread_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _MasstransitThread_name = lib.library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_transport_masstransit_MasstransitThread_name')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitThread_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitThread_clone')
        .asFunction(isLeaf: true);

final _MasstransitThread_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitThread_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _MasstransitThread_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(native_types.NativeString,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitThread_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _MasstransitThread_get_id = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitThread_get_id')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitThread_get_essentialStops = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitThread_get_essentialStops')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitThread_get_description = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitThread_get_description')
    .asFunction(isLeaf: true);
