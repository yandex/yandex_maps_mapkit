part of 'direction_signs.dart';

@bindings_annotations.ContainerData(
    toNative: 'DrivingDirectionSignImageImpl.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignImageImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingDirectionSignImage')
extension DrivingDirectionSignImageImpl on DrivingDirectionSignImage {
  static core.int toInt(DrivingDirectionSignImage e) {
    return e.index;
  }

  static DrivingDirectionSignImage fromInt(core.int val) {
    return DrivingDirectionSignImage.values[val];
  }

  static DrivingDirectionSignImage? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignImage? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingDirectionSignDirectionImpl.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignDirectionImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingDirectionSignDirection')
extension DrivingDirectionSignDirectionImpl on DrivingDirectionSignDirection {
  static core.int toInt(DrivingDirectionSignDirection e) {
    return e.index;
  }

  static DrivingDirectionSignDirection fromInt(core.int val) {
    return DrivingDirectionSignDirection.values[val];
  }

  static DrivingDirectionSignDirection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignDirection? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

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
    toNative: 'DrivingDirectionSignStyleImpl.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignStyleImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingDirectionSignStyle')
extension DrivingDirectionSignStyleImpl on DrivingDirectionSignStyle {
  static DrivingDirectionSignStyle fromNative(
      DrivingDirectionSignStyleNative native) {
    return DrivingDirectionSignStyle(
        to_platform.toPlatformColor(native.textColor),
        to_platform.toPlatformColor(native.bgColor));
  }

  static DrivingDirectionSignStyleNative toNative(
      DrivingDirectionSignStyle obj) {
    return _DrivingDirectionSignStyleNativeInit(
        to_native.toNativeColor(obj.textColor),
        to_native.toNativeColor(obj.bgColor));
  }

  static DrivingDirectionSignStyle? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingDirectionSignStyleImpl.fromNative(
        ptr.cast<DrivingDirectionSignStyleNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingDirectionSignStyleNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

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
    toNative: 'DrivingDirectionSignToponymImpl.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignToponymImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingDirectionSignToponym')
extension DrivingDirectionSignToponymImpl on DrivingDirectionSignToponym {
  static DrivingDirectionSignToponym fromNative(
      DrivingDirectionSignToponymNative native) {
    return DrivingDirectionSignToponym(
      text: to_platform.toPlatformString(native.text),
      DrivingDirectionSignStyleImpl.fromNative(native.style),
    );
  }

  static DrivingDirectionSignToponymNative toNative(
      DrivingDirectionSignToponym obj) {
    return _DrivingDirectionSignToponymNativeInit(
      to_native.toNativeString(obj.text),
      DrivingDirectionSignStyleImpl.toNative(obj.style),
    );
  }

  static DrivingDirectionSignToponym? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingDirectionSignToponymImpl.fromNative(
        ptr.cast<DrivingDirectionSignToponymNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignToponym? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingDirectionSignToponymNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

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
    toNative: 'DrivingDirectionSignRoadImpl.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignRoadImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingDirectionSignRoad')
extension DrivingDirectionSignRoadImpl on DrivingDirectionSignRoad {
  static DrivingDirectionSignRoad fromNative(
      DrivingDirectionSignRoadNative native) {
    return DrivingDirectionSignRoad(
      name: to_platform.toPlatformString(native.name),
      DrivingDirectionSignStyleImpl.fromNative(native.style),
    );
  }

  static DrivingDirectionSignRoadNative toNative(DrivingDirectionSignRoad obj) {
    return _DrivingDirectionSignRoadNativeInit(
      to_native.toNativeString(obj.name),
      DrivingDirectionSignStyleImpl.toNative(obj.style),
    );
  }

  static DrivingDirectionSignRoad? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingDirectionSignRoadImpl.fromNative(
        ptr.cast<DrivingDirectionSignRoadNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignRoad? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingDirectionSignRoadNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

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
    toNative: 'DrivingDirectionSignExitImpl.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignExitImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingDirectionSignExit')
extension DrivingDirectionSignExitImpl on DrivingDirectionSignExit {
  static DrivingDirectionSignExit fromNative(
      DrivingDirectionSignExitNative native) {
    return DrivingDirectionSignExit(
      name: to_platform.toPlatformString(native.name),
      DrivingDirectionSignStyleImpl.fromNative(native.style),
    );
  }

  static DrivingDirectionSignExitNative toNative(DrivingDirectionSignExit obj) {
    return _DrivingDirectionSignExitNativeInit(
      to_native.toNativeString(obj.name),
      DrivingDirectionSignStyleImpl.toNative(obj.style),
    );
  }

  static DrivingDirectionSignExit? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingDirectionSignExitImpl.fromNative(
        ptr.cast<DrivingDirectionSignExitNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignExit? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingDirectionSignExitNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

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
    toNative: 'DrivingDirectionSignIconImpl.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignIconImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingDirectionSignIcon')
extension DrivingDirectionSignIconImpl on DrivingDirectionSignIcon {
  static DrivingDirectionSignIcon fromNative(
      DrivingDirectionSignIconNative native) {
    return DrivingDirectionSignIcon(
        DrivingDirectionSignImageImpl.fromInt(native.image),
        DrivingDirectionSignStyleImpl.fromNative(native.style));
  }

  static DrivingDirectionSignIconNative toNative(DrivingDirectionSignIcon obj) {
    return _DrivingDirectionSignIconNativeInit(
        DrivingDirectionSignImageImpl.toInt(obj.image),
        DrivingDirectionSignStyleImpl.toNative(obj.style));
  }

  static DrivingDirectionSignIcon? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingDirectionSignIconImpl.fromNative(
        ptr.cast<DrivingDirectionSignIconNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignIcon? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingDirectionSignIconNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class _DrivingDirectionSignItemNativeData extends ffi.Union {
  external DrivingDirectionSignToponymNative toponym;
  external DrivingDirectionSignRoadNative road;
  external DrivingDirectionSignExitNative exit;
  external DrivingDirectionSignIconNative icon;
}

final class DrivingDirectionSignItemNative extends ffi.Struct {
  @ffi.Int()
  external core.int tag;
  external _DrivingDirectionSignItemNativeData data;
}

@bindings_annotations.ContainerData(
    toNative: 'DrivingDirectionSignItemImpl.toPointer',
    toPlatform:
        '(val) => DrivingDirectionSignItemImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingDirectionSignItem')
extension DrivingDirectionSignItemImpl on DrivingDirectionSignItem {
  static DrivingDirectionSignItemNative toNative(DrivingDirectionSignItem obj) {
    if (obj._value is DrivingDirectionSignToponym) {
      return _DirectionSignItemNative_DirectionSignToponymNative_init(
          DrivingDirectionSignToponymImpl.toNative(obj._value));
    }
    if (obj._value is DrivingDirectionSignRoad) {
      return _DirectionSignItemNative_DirectionSignRoadNative_init(
          DrivingDirectionSignRoadImpl.toNative(obj._value));
    }
    if (obj._value is DrivingDirectionSignExit) {
      return _DirectionSignItemNative_DirectionSignExitNative_init(
          DrivingDirectionSignExitImpl.toNative(obj._value));
    }
    if (obj._value is DrivingDirectionSignIcon) {
      return _DirectionSignItemNative_DirectionSignIconNative_init(
          DrivingDirectionSignIconImpl.toNative(obj._value));
    }
    throw core.TypeError();
  }

  static DrivingDirectionSignItem toPlatform(
      DrivingDirectionSignItemNative obj) {
    switch (obj.tag) {
      case 0:
        return DrivingDirectionSignItem.fromDirectionSignToponym(
            DrivingDirectionSignToponymImpl.fromNative(obj.data.toponym));
      case 1:
        return DrivingDirectionSignItem.fromDirectionSignRoad(
            DrivingDirectionSignRoadImpl.fromNative(obj.data.road));
      case 2:
        return DrivingDirectionSignItem.fromDirectionSignExit(
            DrivingDirectionSignExitImpl.fromNative(obj.data.exit));
      case 3:
        return DrivingDirectionSignItem.fromDirectionSignIcon(
            DrivingDirectionSignIconImpl.fromNative(obj.data.icon));
    }
    throw core.TypeError();
  }

  static DrivingDirectionSignItem? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = toPlatform(ptr.cast<DrivingDirectionSignItemNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingDirectionSignItem? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<DrivingDirectionSignItemNative>();
    result.ref = toNative(val);

    return result.cast();
  }
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
    toNative: 'DrivingDirectionSignImpl.getNativePtr',
    toPlatform:
        '(val) => DrivingDirectionSignImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingDirectionSign')
final class DrivingDirectionSignImpl extends DrivingDirectionSign {
  DrivingDirectionSignImpl(
      mapkit_geometry_geometry.PolylinePosition position,
      DrivingDirectionSignDirection? direction,
      core.List<DrivingDirectionSignItem> items)
      : this.fromNativePtr(_DrivingDirectionSign_init(
            mapkit_geometry_geometry.PolylinePositionImpl.toNative(position),
            DrivingDirectionSignDirectionImpl.toPointer(direction),
            DrivingDirectionSignItemContainerExtension.toNativeVector(items)));

  @core.override
  late final position =
      mapkit_geometry_geometry.PolylinePositionImpl.fromNative(
          _DrivingDirectionSign_get_position(_ptr));
  @core.override
  late final direction = DrivingDirectionSignDirectionImpl.fromPointer(
      _DrivingDirectionSign_get_direction(_ptr));
  @core.override
  late final items =
      DrivingDirectionSignItemContainerExtension.toPlatformVector(
          _DrivingDirectionSign_get_items(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_DrivingDirectionSign_free.cast());

  DrivingDirectionSignImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(DrivingDirectionSign? obj) {
    return (obj as DrivingDirectionSignImpl?)?._ptr ?? ffi.nullptr;
  }

  static DrivingDirectionSign? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : DrivingDirectionSignImpl.fromNativePtr(ptr);
  }

  static DrivingDirectionSign? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingDirectionSignImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
