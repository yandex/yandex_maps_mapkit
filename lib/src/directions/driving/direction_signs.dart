import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:ui' as ui;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;

part 'direction_signs.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'DrivingDirectionSignImage.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignImage.fromPointer(val, needFree: false)')
enum DrivingDirectionSignImage {
  /// Freeway image
  FreewayImage,

  /// Bridge image
  BridgeImage,

  /// Tunnel image
  TunnelImage,

  /// Ferry image
  FerryImage,

  /// Subway station image
  SubwayStationImage,

  /// Railway station image
  RailwayStationImage,

  /// Airport image
  AirportImage,

  /// Hospital image
  HospitalImage,

  /// Railway crossing image
  RailwayCrossingImage,

  /// Ski slope image
  SkiSlopeImage,

  /// Stadium image
  StadiumImage,

  /// Bridge image for Turkey
  BridgeTrImage,

  /// Subway Station Image for Turkey
  SubwayStationTrImage,

  /// Hospital image as H
  HospitalHImage,
  ;

  /// @nodoc
  @internal
  static DrivingDirectionSignImage fromInt(core.int val) {
    return DrivingDirectionSignImage.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(DrivingDirectionSignImage e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static DrivingDirectionSignImage? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignImage? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// The direction of the manoeuvre on the direction sign.
@bindings_annotations.ContainerData(
    toNative: 'DrivingDirectionSignDirection.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignDirection.fromPointer(val, needFree: false)')
enum DrivingDirectionSignDirection {
  /// 180 degree turn to the left.
  Left180,

  /// 135 degree turn to the left.
  Left135,

  /// 90 degree turn to the left.
  Left90,

  /// 45 degree turn to the left.
  Left45,

  /// Lane going straight ahead.
  StraightAhead,

  /// 45 degree turn to the right.
  Right45,

  /// 90 degree turn to the right.
  Right90,

  /// 135 degree turn to the right.
  Right135,

  /// 180 degree turn to the right.
  Right180,

  /// Right turn followed by smooth left turn
  LeftFromRight,

  /// Left turn followed by smooth right turn
  RightFromLeft,

  /// A shift to the left in the lane.
  LeftShift,

  /// A shift to the right in the lane.
  RightShift,
  ;

  /// @nodoc
  @internal
  static DrivingDirectionSignDirection fromInt(core.int val) {
    return DrivingDirectionSignDirection.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(DrivingDirectionSignDirection e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static DrivingDirectionSignDirection? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignDirection? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class DrivingDirectionSignStyleNative extends ffi.Struct {
  external native_types.NativeColor textColor;
  external native_types.NativeColor bgColor;
}

final DrivingDirectionSignStyleNative Function(
        native_types.NativeColor, native_types.NativeColor)
    _DrivingDirectionSignStyleNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingDirectionSignStyleNative Function(
                        native_types.NativeColor, native_types.NativeColor)>>(
            'yandex_flutter_directions_driving_DrivingDirectionSignStyle_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingDirectionSignStyle.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignStyle.fromPointer(val, needFree: false)')
class DrivingDirectionSignStyle {
  final ui.Color textColor;
  final ui.Color bgColor;

  const DrivingDirectionSignStyle(this.textColor, this.bgColor);

  /// @nodoc
  @internal
  DrivingDirectionSignStyle.fromNative(DrivingDirectionSignStyleNative native)
      : this(to_platform.toPlatformColor(native.textColor),
            to_platform.toPlatformColor(native.bgColor));

  /// @nodoc
  @internal
  static DrivingDirectionSignStyleNative toNative(DrivingDirectionSignStyle c) {
    return _DrivingDirectionSignStyleNativeInit(
        to_native.toNativeColor(c.textColor),
        to_native.toNativeColor(c.bgColor));
  }

  /// @nodoc
  @internal
  static DrivingDirectionSignStyle? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingDirectionSignStyle.fromNative(
        ptr.cast<DrivingDirectionSignStyleNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingDirectionSignStyleNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class DrivingDirectionSignToponymNative extends ffi.Struct {
  external native_types.NativeString text;
  external DrivingDirectionSignStyleNative style;
}

final DrivingDirectionSignToponymNative Function(
  native_types.NativeString,
  DrivingDirectionSignStyleNative,
) _DrivingDirectionSignToponymNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                DrivingDirectionSignToponymNative Function(
                  native_types.NativeString,
                  DrivingDirectionSignStyleNative,
                )>>(
        'yandex_flutter_directions_driving_DrivingDirectionSignToponym_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingDirectionSignToponym.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignToponym.fromPointer(val, needFree: false)')
class DrivingDirectionSignToponym {
  final core.String text;
  final DrivingDirectionSignStyle style;

  const DrivingDirectionSignToponym(
    this.style, {
    required this.text,
  });

  /// @nodoc
  @internal
  DrivingDirectionSignToponym.fromNative(
      DrivingDirectionSignToponymNative native)
      : this(
          text: to_platform.toPlatformString(native.text),
          DrivingDirectionSignStyle.fromNative(native.style),
        );

  /// @nodoc
  @internal
  static DrivingDirectionSignToponymNative toNative(
      DrivingDirectionSignToponym c) {
    return _DrivingDirectionSignToponymNativeInit(
      to_native.toNativeString(c.text),
      DrivingDirectionSignStyle.toNative(c.style),
    );
  }

  /// @nodoc
  @internal
  static DrivingDirectionSignToponym? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingDirectionSignToponym.fromNative(
        ptr.cast<DrivingDirectionSignToponymNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignToponym? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingDirectionSignToponymNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class DrivingDirectionSignRoadNative extends ffi.Struct {
  external native_types.NativeString name;
  external DrivingDirectionSignStyleNative style;
}

final DrivingDirectionSignRoadNative Function(
  native_types.NativeString,
  DrivingDirectionSignStyleNative,
) _DrivingDirectionSignRoadNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                DrivingDirectionSignRoadNative Function(
                  native_types.NativeString,
                  DrivingDirectionSignStyleNative,
                )>>(
        'yandex_flutter_directions_driving_DrivingDirectionSignRoad_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingDirectionSignRoad.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignRoad.fromPointer(val, needFree: false)')
class DrivingDirectionSignRoad {
  final core.String name;
  final DrivingDirectionSignStyle style;

  const DrivingDirectionSignRoad(
    this.style, {
    required this.name,
  });

  /// @nodoc
  @internal
  DrivingDirectionSignRoad.fromNative(DrivingDirectionSignRoadNative native)
      : this(
          name: to_platform.toPlatformString(native.name),
          DrivingDirectionSignStyle.fromNative(native.style),
        );

  /// @nodoc
  @internal
  static DrivingDirectionSignRoadNative toNative(DrivingDirectionSignRoad c) {
    return _DrivingDirectionSignRoadNativeInit(
      to_native.toNativeString(c.name),
      DrivingDirectionSignStyle.toNative(c.style),
    );
  }

  /// @nodoc
  @internal
  static DrivingDirectionSignRoad? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingDirectionSignRoad.fromNative(
        ptr.cast<DrivingDirectionSignRoadNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignRoad? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingDirectionSignRoadNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class DrivingDirectionSignExitNative extends ffi.Struct {
  external native_types.NativeString name;
  external DrivingDirectionSignStyleNative style;
}

final DrivingDirectionSignExitNative Function(
  native_types.NativeString,
  DrivingDirectionSignStyleNative,
) _DrivingDirectionSignExitNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                DrivingDirectionSignExitNative Function(
                  native_types.NativeString,
                  DrivingDirectionSignStyleNative,
                )>>(
        'yandex_flutter_directions_driving_DrivingDirectionSignExit_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingDirectionSignExit.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignExit.fromPointer(val, needFree: false)')
class DrivingDirectionSignExit {
  final core.String name;
  final DrivingDirectionSignStyle style;

  const DrivingDirectionSignExit(
    this.style, {
    required this.name,
  });

  /// @nodoc
  @internal
  DrivingDirectionSignExit.fromNative(DrivingDirectionSignExitNative native)
      : this(
          name: to_platform.toPlatformString(native.name),
          DrivingDirectionSignStyle.fromNative(native.style),
        );

  /// @nodoc
  @internal
  static DrivingDirectionSignExitNative toNative(DrivingDirectionSignExit c) {
    return _DrivingDirectionSignExitNativeInit(
      to_native.toNativeString(c.name),
      DrivingDirectionSignStyle.toNative(c.style),
    );
  }

  /// @nodoc
  @internal
  static DrivingDirectionSignExit? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingDirectionSignExit.fromNative(
        ptr.cast<DrivingDirectionSignExitNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignExit? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingDirectionSignExitNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class DrivingDirectionSignIconNative extends ffi.Struct {
  @ffi.Int64()
  external core.int image;
  external DrivingDirectionSignStyleNative style;
}

final DrivingDirectionSignIconNative Function(
        core.int, DrivingDirectionSignStyleNative)
    _DrivingDirectionSignIconNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingDirectionSignIconNative Function(
                        ffi.Int64, DrivingDirectionSignStyleNative)>>(
            'yandex_flutter_directions_driving_DrivingDirectionSignIcon_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingDirectionSignIcon.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignIcon.fromPointer(val, needFree: false)')
class DrivingDirectionSignIcon {
  final DrivingDirectionSignImage image;
  final DrivingDirectionSignStyle style;

  const DrivingDirectionSignIcon(this.image, this.style);

  /// @nodoc
  @internal
  DrivingDirectionSignIcon.fromNative(DrivingDirectionSignIconNative native)
      : this(DrivingDirectionSignImage.fromInt(native.image),
            DrivingDirectionSignStyle.fromNative(native.style));

  /// @nodoc
  @internal
  static DrivingDirectionSignIconNative toNative(DrivingDirectionSignIcon c) {
    return _DrivingDirectionSignIconNativeInit(
        DrivingDirectionSignImage.toInt(c.image),
        DrivingDirectionSignStyle.toNative(c.style));
  }

  /// @nodoc
  @internal
  static DrivingDirectionSignIcon? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingDirectionSignIcon.fromNative(
        ptr.cast<DrivingDirectionSignIconNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignIcon? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingDirectionSignIconNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
@internal
final class DrivingDirectionSignItemNativeData extends ffi.Union {
  external DrivingDirectionSignToponymNative toponym;
  external DrivingDirectionSignRoadNative road;
  external DrivingDirectionSignExitNative exit;
  external DrivingDirectionSignIconNative icon;
}

/// @nodoc
@internal
final class DrivingDirectionSignItemNative extends ffi.Struct {
  @ffi.Int()
  external core.int tag;
  external DrivingDirectionSignItemNativeData data;
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingDirectionSignItem.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignItem.fromPointer(val, needFree: false)')
class DrivingDirectionSignItem {
  const DrivingDirectionSignItem.fromDirectionSignToponym(
      DrivingDirectionSignToponym toponym)
      : _value = toponym;

  const DrivingDirectionSignItem.fromDirectionSignRoad(
      DrivingDirectionSignRoad road)
      : _value = road;

  const DrivingDirectionSignItem.fromDirectionSignExit(
      DrivingDirectionSignExit exit)
      : _value = exit;

  const DrivingDirectionSignItem.fromDirectionSignIcon(
      DrivingDirectionSignIcon icon)
      : _value = icon;

  /// @nodoc
  @internal
  static DrivingDirectionSignItem toPlatform(
      DrivingDirectionSignItemNative obj) {
    switch (obj.tag) {
      case 0:
        return DrivingDirectionSignItem.fromDirectionSignToponym(
            DrivingDirectionSignToponym.fromNative(obj.data.toponym));
      case 1:
        return DrivingDirectionSignItem.fromDirectionSignRoad(
            DrivingDirectionSignRoad.fromNative(obj.data.road));
      case 2:
        return DrivingDirectionSignItem.fromDirectionSignExit(
            DrivingDirectionSignExit.fromNative(obj.data.exit));
      case 3:
        return DrivingDirectionSignItem.fromDirectionSignIcon(
            DrivingDirectionSignIcon.fromNative(obj.data.icon));
    }
    throw core.TypeError();
  }

  /// @nodoc
  @internal
  static DrivingDirectionSignItemNative toNative(DrivingDirectionSignItem obj) {
    if (obj._value is DrivingDirectionSignToponym) {
      return _DirectionSignItemNative_DirectionSignToponymNative_init(
          DrivingDirectionSignToponym.toNative(obj._value));
    }
    if (obj._value is DrivingDirectionSignRoad) {
      return _DirectionSignItemNative_DirectionSignRoadNative_init(
          DrivingDirectionSignRoad.toNative(obj._value));
    }
    if (obj._value is DrivingDirectionSignExit) {
      return _DirectionSignItemNative_DirectionSignExitNative_init(
          DrivingDirectionSignExit.toNative(obj._value));
    }
    if (obj._value is DrivingDirectionSignIcon) {
      return _DirectionSignItemNative_DirectionSignIconNative_init(
          DrivingDirectionSignIcon.toNative(obj._value));
    }
    throw core.TypeError();
  }

  DrivingDirectionSignToponym? asDirectionSignToponym() {
    if (_value is DrivingDirectionSignToponym) {
      return _value;
    }
    return null;
  }

  DrivingDirectionSignRoad? asDirectionSignRoad() {
    if (_value is DrivingDirectionSignRoad) {
      return _value;
    }
    return null;
  }

  DrivingDirectionSignExit? asDirectionSignExit() {
    if (_value is DrivingDirectionSignExit) {
      return _value;
    }
    return null;
  }

  DrivingDirectionSignIcon? asDirectionSignIcon() {
    if (_value is DrivingDirectionSignIcon) {
      return _value;
    }
    return null;
  }

  /// Applies the passed function to the variant value.
  void when({
    required void Function(DrivingDirectionSignToponym value)
        onDirectionSignToponym,
    required void Function(DrivingDirectionSignRoad value) onDirectionSignRoad,
    required void Function(DrivingDirectionSignExit value) onDirectionSignExit,
    required void Function(DrivingDirectionSignIcon value) onDirectionSignIcon,
  }) {
    if (_value is DrivingDirectionSignToponym) {
      return onDirectionSignToponym(_value as DrivingDirectionSignToponym);
    }
    if (_value is DrivingDirectionSignRoad) {
      return onDirectionSignRoad(_value as DrivingDirectionSignRoad);
    }
    if (_value is DrivingDirectionSignExit) {
      return onDirectionSignExit(_value as DrivingDirectionSignExit);
    }
    if (_value is DrivingDirectionSignIcon) {
      return onDirectionSignIcon(_value as DrivingDirectionSignIcon);
    }
    assert(false);
  }

  /// @nodoc
  @internal
  static DrivingDirectionSignItem? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = toPlatform(ptr.cast<DrivingDirectionSignItemNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignItem? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<DrivingDirectionSignItemNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }

  final core.dynamic _value;
}

final DrivingDirectionSignItemNative Function(DrivingDirectionSignToponymNative)
    _DirectionSignItemNative_DirectionSignToponymNative_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingDirectionSignItemNative Function(
                        DrivingDirectionSignToponymNative)>>(
            'yandex_flutter_directions_driving_DrivingDirectionSignItem_DirectionSignToponymNative_init')
        .asFunction(isLeaf: true);
final DrivingDirectionSignItemNative Function(DrivingDirectionSignRoadNative)
    _DirectionSignItemNative_DirectionSignRoadNative_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingDirectionSignItemNative Function(
                        DrivingDirectionSignRoadNative)>>(
            'yandex_flutter_directions_driving_DrivingDirectionSignItem_DirectionSignRoadNative_init')
        .asFunction(isLeaf: true);
final DrivingDirectionSignItemNative Function(DrivingDirectionSignExitNative)
    _DirectionSignItemNative_DirectionSignExitNative_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingDirectionSignItemNative Function(
                        DrivingDirectionSignExitNative)>>(
            'yandex_flutter_directions_driving_DrivingDirectionSignItem_DirectionSignExitNative_init')
        .asFunction(isLeaf: true);
final DrivingDirectionSignItemNative Function(DrivingDirectionSignIconNative)
    _DirectionSignItemNative_DirectionSignIconNative_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingDirectionSignItemNative Function(
                        DrivingDirectionSignIconNative)>>(
            'yandex_flutter_directions_driving_DrivingDirectionSignItem_DirectionSignIconNative_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingDirectionSign.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSign.fromPointer(val, needFree: false)')
class DrivingDirectionSign implements ffi.Finalizable {
  late final position = mapkit_geometry_geometry.PolylinePosition.fromNative(
      _DrivingDirectionSign_get_position(_ptr));
  late final direction = DrivingDirectionSignDirection.fromPointer(
      _DrivingDirectionSign_get_direction(_ptr));
  late final items =
      DrivingDirectionSignItemContainerExtension.toPlatformVector(
          _DrivingDirectionSign_get_items(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_DrivingDirectionSign_free.cast());

  DrivingDirectionSign(
      mapkit_geometry_geometry.PolylinePosition position,
      DrivingDirectionSignDirection? direction,
      core.List<DrivingDirectionSignItem> items)
      : this.fromNativePtr(_DrivingDirectionSign_init(
            mapkit_geometry_geometry.PolylinePosition.toNative(position),
            DrivingDirectionSignDirection.toPointer(direction),
            DrivingDirectionSignItemContainerExtension.toNativeVector(items)));

  /// @nodoc
  @internal
  DrivingDirectionSign.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(DrivingDirectionSign? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static DrivingDirectionSign? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return DrivingDirectionSign.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static DrivingDirectionSign? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = DrivingDirectionSign.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSign? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _DrivingDirectionSign_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingDirectionSign_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingDirectionSign_clone')
        .asFunction(isLeaf: true);

final _DrivingDirectionSign_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_directions_driving_DrivingDirectionSign_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_geometry_geometry.PolylinePositionNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _DrivingDirectionSign_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        mapkit_geometry_geometry.PolylinePositionNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingDirectionSign_init')
        .asFunction(isLeaf: true);

final mapkit_geometry_geometry.PolylinePositionNative Function(
    ffi
        .Pointer<ffi.Void>) _DrivingDirectionSign_get_position = lib.library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_geometry.PolylinePositionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingDirectionSign_get_position')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _DrivingDirectionSign_get_direction = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_directions_driving_DrivingDirectionSign_get_direction')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _DrivingDirectionSign_get_items = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_directions_driving_DrivingDirectionSign_get_items')
        .asFunction(isLeaf: true);
