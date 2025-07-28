part of 'common.dart';

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
    toNative: 'MasstransitStopFeatureMaskImpl.toPointer',
    toPlatform:
        '(val) => MasstransitStopFeatureMaskImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitStopFeatureMask')
extension MasstransitStopFeatureMaskImpl on MasstransitStopFeatureMask {
  static MasstransitStopFeatureMask fromNative(
      MasstransitStopFeatureMaskNative native) {
    return MasstransitStopFeatureMask(
        cooled: native.cooled, heated: native.heated);
  }

  static MasstransitStopFeatureMaskNative toNative(
      MasstransitStopFeatureMask obj) {
    return _MasstransitStopFeatureMaskNativeInit(obj.cooled, obj.heated);
  }

  static MasstransitStopFeatureMask? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitStopFeatureMaskImpl.fromNative(
        ptr.cast<MasstransitStopFeatureMaskNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitStopFeatureMask? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitStopFeatureMaskNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTransportContourImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitTransportContourImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTransportContour')
final class MasstransitTransportContourImpl
    extends MasstransitTransportContour {
  MasstransitTransportContourImpl(
      core.String name, MasstransitTransportContourStyle? style)
      : this.fromNativePtr(_MasstransitTransportContour_init(
            to_native.toNativeString(name),
            MasstransitTransportContourStyleImpl.toPointer(style)));

  @core.override
  late final name =
      to_platform.toPlatformString(_MasstransitTransportContour_get_name(_ptr));
  @core.override
  late final style = MasstransitTransportContourStyleImpl.fromPointer(
      _MasstransitTransportContour_get_style(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitTransportContour_free.cast());

  MasstransitTransportContourImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitTransportContour? obj) {
    return (obj as MasstransitTransportContourImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitTransportContour? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitTransportContourImpl.fromNativePtr(ptr);
  }

  static MasstransitTransportContour? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitTransportContourImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'MasstransitTransportContourStyleImpl.toPointer',
    toPlatform:
        '(val) => MasstransitTransportContourStyleImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTransportContourStyle')
extension MasstransitTransportContourStyleImpl
    on MasstransitTransportContourStyle {
  static MasstransitTransportContourStyle fromNative(
      MasstransitTransportContourStyleNative native) {
    return MasstransitTransportContourStyle(
        mainColor: to_platform.toPlatformFromPointerUint32(native.mainColor),
        mainColorNight:
            to_platform.toPlatformFromPointerUint32(native.mainColorNight));
  }

  static MasstransitTransportContourStyleNative toNative(
      MasstransitTransportContourStyle obj) {
    return _MasstransitTransportContourStyleNativeInit(
        to_native.toNativePtrUint32(obj.mainColor),
        to_native.toNativePtrUint32(obj.mainColorNight));
  }

  static MasstransitTransportContourStyle? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitTransportContourStyleImpl.fromNative(
        ptr.cast<MasstransitTransportContourStyleNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitTransportContourStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitTransportContourStyleNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitStopImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitStopImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitStop')
final class MasstransitStopImpl extends MasstransitStop {
  MasstransitStopImpl(
      core.String id,
      core.String name,
      core.String? additionalName,
      MasstransitStopFeatureMask? features,
      core.List<MasstransitTransportContour> transportContours)
      : this.fromNativePtr(_MasstransitStop_init(
            to_native.toNativeString(id),
            to_native.toNativeString(name),
            to_native.toNativePtrString(additionalName),
            MasstransitStopFeatureMaskImpl.toPointer(features),
            MasstransitTransportContourContainerExtension.toNativeVector(
                transportContours)));

  @core.override
  late final id = to_platform.toPlatformString(_MasstransitStop_get_id(_ptr));
  @core.override
  late final name =
      to_platform.toPlatformString(_MasstransitStop_get_name(_ptr));
  @core.override
  late final additionalName = to_platform
      .toPlatformFromPointerString(_MasstransitStop_get_additionalName(_ptr));
  @core.override
  late final features = MasstransitStopFeatureMaskImpl.fromPointer(
      _MasstransitStop_get_features(_ptr));
  @core.override
  late final transportContours =
      MasstransitTransportContourContainerExtension.toPlatformVector(
          _MasstransitStop_get_transportContours(_ptr));

  @core.override
  final _MasstransitStopFactory runtimeFactory =
      const _MasstransitStopFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_MasstransitStop_free.cast());

  MasstransitStopImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitStop? obj) {
    return (obj as MasstransitStopImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitStop? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : MasstransitStopImpl.fromNativePtr(ptr);
  }

  static MasstransitStop? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitStopImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _MasstransitStopFactory
    extends struct_factory.StructFactory<MasstransitStop> {
  const _MasstransitStopFactory();

  @core.override
  MasstransitStop create(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitStopImpl.fromNativePtr(ptr);
  }

  @core.override
  MasstransitStop fromParent(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitStopImpl.fromNativePtr(_MasstransitStop_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(MasstransitStop obj) {
    return _MasstransitStop_upcast(MasstransitStopImpl.getNativePtr(obj));
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

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTransportTypeImpl.toPointer',
    toPlatform:
        '(val) => MasstransitTransportTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTransportType')
extension MasstransitTransportTypeImpl on MasstransitTransportType {
  static core.int toInt(MasstransitTransportType e) {
    return e.index;
  }

  static MasstransitTransportType fromInt(core.int val) {
    return MasstransitTransportType.values[val];
  }

  static MasstransitTransportType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(MasstransitTransportType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitLineImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitLineImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitLine')
final class MasstransitLineImpl extends MasstransitLine {
  MasstransitLineImpl(
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
            MasstransitLineStyleImpl.toPointer(style),
            isNight,
            to_native.toNativePtrString(uri),
            to_native.toNativePtrString(shortName),
            to_native.toNativePtrString(transportSystemId)));

  @core.override
  late final id = to_platform.toPlatformString(_MasstransitLine_get_id(_ptr));
  @core.override
  late final name =
      to_platform.toPlatformString(_MasstransitLine_get_name(_ptr));
  @core.override
  late final vehicleTypes =
      to_platform.toVectorString(_MasstransitLine_get_vehicleTypes(_ptr));
  @core.override
  late final style =
      MasstransitLineStyleImpl.fromPointer(_MasstransitLine_get_style(_ptr));
  @core.override
  late final isNight = _MasstransitLine_get_isNight(_ptr);
  @core.override
  late final uri =
      to_platform.toPlatformFromPointerString(_MasstransitLine_get_uri(_ptr));
  @core.override
  late final shortName = to_platform
      .toPlatformFromPointerString(_MasstransitLine_get_shortName(_ptr));
  @core.override
  late final transportSystemId = to_platform.toPlatformFromPointerString(
      _MasstransitLine_get_transportSystemId(_ptr));

  @core.override
  final _MasstransitLineFactory runtimeFactory =
      const _MasstransitLineFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_MasstransitLine_free.cast());

  MasstransitLineImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitLine? obj) {
    return (obj as MasstransitLineImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitLine? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : MasstransitLineImpl.fromNativePtr(ptr);
  }

  static MasstransitLine? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitLineImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _MasstransitLineFactory
    extends struct_factory.StructFactory<MasstransitLine> {
  const _MasstransitLineFactory();

  @core.override
  MasstransitLine create(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitLineImpl.fromNativePtr(ptr);
  }

  @core.override
  MasstransitLine fromParent(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitLineImpl.fromNativePtr(_MasstransitLine_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(MasstransitLine obj) {
    return _MasstransitLine_upcast(MasstransitLineImpl.getNativePtr(obj));
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
    toNative: 'MasstransitLineStyleImpl.toPointer',
    toPlatform:
        '(val) => MasstransitLineStyleImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitLineStyle')
extension MasstransitLineStyleImpl on MasstransitLineStyle {
  static MasstransitLineStyle fromNative(MasstransitLineStyleNative native) {
    return MasstransitLineStyle(
        color: to_platform.toPlatformFromPointerUint32(native.color));
  }

  static MasstransitLineStyleNative toNative(MasstransitLineStyle obj) {
    return _MasstransitLineStyleNativeInit(
        to_native.toNativePtrUint32(obj.color));
  }

  static MasstransitLineStyle? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitLineStyleImpl.fromNative(
        ptr.cast<MasstransitLineStyleNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitLineStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitLineStyleNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitThreadCategoryImpl.toPointer',
    toPlatform:
        '(val) => MasstransitThreadCategoryImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitThreadCategory')
extension MasstransitThreadCategoryImpl on MasstransitThreadCategory {
  static core.int toInt(MasstransitThreadCategory e) {
    return e.index;
  }

  static MasstransitThreadCategory fromInt(core.int val) {
    return MasstransitThreadCategory.values[val];
  }

  static MasstransitThreadCategory? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(MasstransitThreadCategory? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitThreadImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitThreadImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitThread')
final class MasstransitThreadImpl extends MasstransitThread {
  MasstransitThreadImpl(
      core.String id,
      core.List<MasstransitStop> essentialStops,
      core.String? description,
      core.List<MasstransitThreadCategory> category)
      : this.fromNativePtr(_MasstransitThread_init(
            to_native.toNativeString(id),
            MasstransitStopContainerExtension.toNativeVector(essentialStops),
            to_native.toNativePtrString(description),
            MasstransitThreadCategoryContainerExtension.toNativeVector(
                category)));

  @core.override
  late final id = to_platform.toPlatformString(_MasstransitThread_get_id(_ptr));
  @core.override
  late final essentialStops =
      MasstransitStopContainerExtension.toPlatformVector(
          _MasstransitThread_get_essentialStops(_ptr));
  @core.override
  late final description = to_platform
      .toPlatformFromPointerString(_MasstransitThread_get_description(_ptr));
  @core.override
  late final category =
      MasstransitThreadCategoryContainerExtension.toPlatformVector(
          _MasstransitThread_get_category(_ptr));

  @core.override
  final _MasstransitThreadFactory runtimeFactory =
      const _MasstransitThreadFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_MasstransitThread_free.cast());

  MasstransitThreadImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitThread? obj) {
    return (obj as MasstransitThreadImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitThread? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : MasstransitThreadImpl.fromNativePtr(ptr);
  }

  static MasstransitThread? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitThreadImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _MasstransitThreadFactory
    extends struct_factory.StructFactory<MasstransitThread> {
  const _MasstransitThreadFactory();

  @core.override
  MasstransitThread create(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitThreadImpl.fromNativePtr(ptr);
  }

  @core.override
  MasstransitThread fromParent(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitThreadImpl.fromNativePtr(
        _MasstransitThread_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(MasstransitThread obj) {
    return _MasstransitThread_upcast(MasstransitThreadImpl.getNativePtr(obj));
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

final _MasstransitThread_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitThread_free');

final ffi.Pointer<ffi.Void> Function(native_types.NativeString,
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _MasstransitThread_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
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
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitThread_get_category = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitThread_get_category')
    .asFunction(isLeaf: true);
