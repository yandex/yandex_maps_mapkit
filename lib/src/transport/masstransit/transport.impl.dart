part of 'transport.dart';

final class MasstransitTransportThreadAlertNative extends ffi.Struct {
  external native_types.NativeString text;
  external ffi.Pointer<ffi.Void> closed;
  external ffi.Pointer<ffi.Void> closedUntil;
  external ffi.Pointer<ffi.Void> lastTrip;
}

final MasstransitTransportThreadAlertNative Function(
    native_types.NativeString,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _MasstransitTransportThreadAlertNativeInit = lib
    .library
    .lookup<
            ffi.NativeFunction<
                MasstransitTransportThreadAlertNative Function(
                    native_types.NativeString,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransportThreadAlert_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTransportThreadAlertImpl.toPointer',
    toPlatform:
        '(val) => MasstransitTransportThreadAlertImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTransportThreadAlert')
extension MasstransitTransportThreadAlertImpl
    on MasstransitTransportThreadAlert {
  static MasstransitTransportThreadAlert fromNative(
      MasstransitTransportThreadAlertNative native) {
    return MasstransitTransportThreadAlert(
        text: to_platform.toPlatformString(native.text),
        closed: MasstransitTransportThreadAlertClosedImpl.fromPointer(
            native.closed),
        closedUntil: MasstransitTransportThreadAlertClosedUntilImpl.fromPointer(
            native.closedUntil),
        lastTrip: MasstransitTransportThreadAlertLastTripImpl.fromPointer(
            native.lastTrip));
  }

  static MasstransitTransportThreadAlertNative toNative(
      MasstransitTransportThreadAlert obj) {
    return _MasstransitTransportThreadAlertNativeInit(
        to_native.toNativeString(obj.text),
        MasstransitTransportThreadAlertClosedImpl.toPointer(obj.closed),
        MasstransitTransportThreadAlertClosedUntilImpl.toPointer(
            obj.closedUntil),
        MasstransitTransportThreadAlertLastTripImpl.toPointer(obj.lastTrip));
  }

  static MasstransitTransportThreadAlert? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitTransportThreadAlertImpl.fromNative(
        ptr.cast<MasstransitTransportThreadAlertNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitTransportThreadAlert? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitTransportThreadAlertNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class MasstransitTransportThreadAlertClosedNative extends ffi.Struct {
  @ffi.Bool()
  external core.bool dummy;
}

final MasstransitTransportThreadAlertClosedNative Function(
    core
        .bool) _MasstransitTransportThreadAlertClosedNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                MasstransitTransportThreadAlertClosedNative Function(
                    ffi.Bool)>>(
        'yandex_flutter_transport_masstransit_TransportThreadAlert_MasstransitTransportThreadAlertClosed_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTransportThreadAlertClosedImpl.toPointer',
    toPlatform:
        '(val) => MasstransitTransportThreadAlertClosedImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTransportThreadAlertClosed')
extension MasstransitTransportThreadAlertClosedImpl
    on MasstransitTransportThreadAlertClosed {
  static MasstransitTransportThreadAlertClosed fromNative(
      MasstransitTransportThreadAlertClosedNative native) {
    return MasstransitTransportThreadAlertClosed(dummy: native.dummy);
  }

  static MasstransitTransportThreadAlertClosedNative toNative(
      MasstransitTransportThreadAlertClosed obj) {
    return _MasstransitTransportThreadAlertClosedNativeInit(obj.dummy);
  }

  static MasstransitTransportThreadAlertClosed? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitTransportThreadAlertClosedImpl.fromNative(
        ptr.cast<MasstransitTransportThreadAlertClosedNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitTransportThreadAlertClosed? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitTransportThreadAlertClosedNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class MasstransitTransportThreadAlertClosedUntilNative
    extends ffi.Struct {
  external mapkit_time.TimeNative time;
}

final MasstransitTransportThreadAlertClosedUntilNative Function(
    mapkit_time
        .TimeNative) _MasstransitTransportThreadAlertClosedUntilNativeInit = lib
    .library
    .lookup<
            ffi.NativeFunction<
                MasstransitTransportThreadAlertClosedUntilNative Function(
                    mapkit_time.TimeNative)>>(
        'yandex_flutter_transport_masstransit_TransportThreadAlert_MasstransitTransportThreadAlertClosedUntil_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTransportThreadAlertClosedUntilImpl.toPointer',
    toPlatform:
        '(val) => MasstransitTransportThreadAlertClosedUntilImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTransportThreadAlertClosedUntil')
extension MasstransitTransportThreadAlertClosedUntilImpl
    on MasstransitTransportThreadAlertClosedUntil {
  static MasstransitTransportThreadAlertClosedUntil fromNative(
      MasstransitTransportThreadAlertClosedUntilNative native) {
    return MasstransitTransportThreadAlertClosedUntil(
        mapkit_time.TimeImpl.fromNative(native.time));
  }

  static MasstransitTransportThreadAlertClosedUntilNative toNative(
      MasstransitTransportThreadAlertClosedUntil obj) {
    return _MasstransitTransportThreadAlertClosedUntilNativeInit(
        mapkit_time.TimeImpl.toNative(obj.time));
  }

  static MasstransitTransportThreadAlertClosedUntil? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitTransportThreadAlertClosedUntilImpl.fromNative(
        ptr.cast<MasstransitTransportThreadAlertClosedUntilNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitTransportThreadAlertClosedUntil? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result =
        malloc.call<MasstransitTransportThreadAlertClosedUntilNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class MasstransitTransportThreadAlertLastTripNative extends ffi.Struct {
  external mapkit_time.TimeNative time;
}

final MasstransitTransportThreadAlertLastTripNative Function(
    mapkit_time
        .TimeNative) _MasstransitTransportThreadAlertLastTripNativeInit = lib
    .library
    .lookup<
            ffi.NativeFunction<
                MasstransitTransportThreadAlertLastTripNative Function(
                    mapkit_time.TimeNative)>>(
        'yandex_flutter_transport_masstransit_TransportThreadAlert_MasstransitTransportThreadAlertLastTrip_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTransportThreadAlertLastTripImpl.toPointer',
    toPlatform:
        '(val) => MasstransitTransportThreadAlertLastTripImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTransportThreadAlertLastTrip')
extension MasstransitTransportThreadAlertLastTripImpl
    on MasstransitTransportThreadAlertLastTrip {
  static MasstransitTransportThreadAlertLastTrip fromNative(
      MasstransitTransportThreadAlertLastTripNative native) {
    return MasstransitTransportThreadAlertLastTrip(
        mapkit_time.TimeImpl.fromNative(native.time));
  }

  static MasstransitTransportThreadAlertLastTripNative toNative(
      MasstransitTransportThreadAlertLastTrip obj) {
    return _MasstransitTransportThreadAlertLastTripNativeInit(
        mapkit_time.TimeImpl.toNative(obj.time));
  }

  static MasstransitTransportThreadAlertLastTrip? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitTransportThreadAlertLastTripImpl.fromNative(
        ptr.cast<MasstransitTransportThreadAlertLastTripNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitTransportThreadAlertLastTrip? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitTransportThreadAlertLastTripNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitBoardingOptionsImpl.toPointer',
    toPlatform:
        '(val) => MasstransitBoardingOptionsImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitBoardingOptions')
final class MasstransitBoardingOptionsImpl
    implements MasstransitBoardingOptions {
  MasstransitBoardingOptionsImpl(
      core.List<MasstransitBoardingOptionsBoardingArea> area)
      : this.fromNativePtr(_MasstransitBoardingOptions_init(
            MasstransitBoardingOptionsBoardingAreaContainerExtension
                .toNativeVector(area)));

  @core.override
  late final area =
      MasstransitBoardingOptionsBoardingAreaContainerExtension.toPlatformVector(
          _MasstransitBoardingOptions_get_area(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitBoardingOptions_free.cast());

  MasstransitBoardingOptionsImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitBoardingOptions? obj) {
    return (obj as MasstransitBoardingOptionsImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitBoardingOptions? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitBoardingOptionsImpl.fromNativePtr(ptr);
  }

  static MasstransitBoardingOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitBoardingOptionsImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitBoardingOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitBoardingOptions_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitBoardingOptions_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitBoardingOptions_clone')
    .asFunction(isLeaf: true);

final _MasstransitBoardingOptions_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitBoardingOptions_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitBoardingOptions_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitBoardingOptions_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitBoardingOptions_get_area = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitBoardingOptions_get_area')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitBoardingOptionsBoardingAreaImpl.toPointer',
    toPlatform:
        '(val) => MasstransitBoardingOptionsBoardingAreaImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitBoardingOptionsBoardingArea')
final class MasstransitBoardingOptionsBoardingAreaImpl
    implements MasstransitBoardingOptionsBoardingArea {
  MasstransitBoardingOptionsBoardingAreaImpl(core.String? id)
      : this.fromNativePtr(_MasstransitBoardingOptionsBoardingArea_init(
            to_native.toNativePtrString(id)));

  @core.override
  late final id = to_platform.toPlatformFromPointerString(
      _MasstransitBoardingOptionsBoardingArea_get_id(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitBoardingOptionsBoardingArea_free.cast());

  MasstransitBoardingOptionsBoardingAreaImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      MasstransitBoardingOptionsBoardingArea? obj) {
    return (obj as MasstransitBoardingOptionsBoardingAreaImpl?)?._ptr ??
        ffi.nullptr;
  }

  static MasstransitBoardingOptionsBoardingArea? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitBoardingOptionsBoardingAreaImpl.fromNativePtr(ptr);
  }

  static MasstransitBoardingOptionsBoardingArea? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitBoardingOptionsBoardingAreaImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitBoardingOptionsBoardingArea? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value =
        _MasstransitBoardingOptionsBoardingArea_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitBoardingOptionsBoardingArea_clone = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_BoardingOptions_MasstransitBoardingOptionsBoardingArea_clone')
    .asFunction(isLeaf: true);

final _MasstransitBoardingOptionsBoardingArea_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_transport_masstransit_BoardingOptions_MasstransitBoardingOptionsBoardingArea_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitBoardingOptionsBoardingArea_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_BoardingOptions_MasstransitBoardingOptionsBoardingArea_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitBoardingOptionsBoardingArea_get_id = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_BoardingOptions_MasstransitBoardingOptionsBoardingArea_get_id')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTransportImpl.toPointer',
    toPlatform:
        '(val) => MasstransitTransportImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTransport')
final class MasstransitTransportImpl implements MasstransitTransport {
  MasstransitTransportImpl(
      transport_masstransit_common.MasstransitLine line,
      core.List<MasstransitTransportTransportThread> transports,
      core.List<transport_masstransit_common.MasstransitTransportContour>
          transportContours)
      : this.fromNativePtr(_MasstransitTransport_init(
            transport_masstransit_common.MasstransitLineImpl.getNativePtr(line),
            MasstransitTransportTransportThreadContainerExtension
                .toNativeVector(transports),
            transport_masstransit_common
                    .MasstransitTransportContourContainerExtension
                .toNativeVector(transportContours)));

  @core.override
  late final line =
      transport_masstransit_common.MasstransitLineImpl.fromNativePtr(
          _MasstransitTransport_get_line(_ptr));
  @core.override
  late final transports =
      MasstransitTransportTransportThreadContainerExtension.toPlatformVector(
          _MasstransitTransport_get_transports(_ptr));
  @core.override
  late final transportContours =
      transport_masstransit_common.MasstransitTransportContourContainerExtension
          .toPlatformVector(_MasstransitTransport_get_transportContours(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitTransport_free.cast());

  MasstransitTransportImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitTransport? obj) {
    return (obj as MasstransitTransportImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitTransport? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitTransportImpl.fromNativePtr(ptr);
  }

  static MasstransitTransport? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitTransportImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitTransport? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitTransport_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitTransport_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitTransport_clone')
        .asFunction(isLeaf: true);

final _MasstransitTransport_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransport_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _MasstransitTransport_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitTransport_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitTransport_get_line = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransport_get_line')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitTransport_get_transports = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransport_get_transports')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitTransport_get_transportContours = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransport_get_transportContours')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTransportTransportThreadImpl.toPointer',
    toPlatform:
        '(val) => MasstransitTransportTransportThreadImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTransportTransportThread')
final class MasstransitTransportTransportThreadImpl
    implements MasstransitTransportTransportThread {
  MasstransitTransportTransportThreadImpl(
      transport_masstransit_common.MasstransitThread thread,
      core.bool isRecommended,
      core.List<MasstransitTransportThreadAlert> alerts,
      transport_masstransit_common.MasstransitStop? alternateDepartureStop,
      MasstransitBoardingOptions? boardingOptions)
      : this.fromNativePtr(_MasstransitTransportTransportThread_init(
            transport_masstransit_common.MasstransitThreadImpl.getNativePtr(
                thread),
            isRecommended,
            MasstransitTransportThreadAlertContainerExtension.toNativeVector(
                alerts),
            transport_masstransit_common.MasstransitStopImpl.getNativePtr(
                alternateDepartureStop),
            MasstransitBoardingOptionsImpl.getNativePtr(boardingOptions)));

  @core.override
  late final thread =
      transport_masstransit_common.MasstransitThreadImpl.fromNativePtr(
          _MasstransitTransportTransportThread_get_thread(_ptr));
  @core.override
  late final isRecommended =
      _MasstransitTransportTransportThread_get_isRecommended(_ptr);
  @core.override
  late final alerts =
      MasstransitTransportThreadAlertContainerExtension.toPlatformVector(
          _MasstransitTransportTransportThread_get_alerts(_ptr));
  @core.override
  late final alternateDepartureStop =
      transport_masstransit_common.MasstransitStopImpl.fromOptionalPtr(
          _MasstransitTransportTransportThread_get_alternateDepartureStop(
              _ptr));
  @core.override
  late final boardingOptions = MasstransitBoardingOptionsImpl.fromOptionalPtr(
      _MasstransitTransportTransportThread_get_boardingOptions(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitTransportTransportThread_free.cast());

  MasstransitTransportTransportThreadImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      MasstransitTransportTransportThread? obj) {
    return (obj as MasstransitTransportTransportThreadImpl?)?._ptr ??
        ffi.nullptr;
  }

  static MasstransitTransportTransportThread? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitTransportTransportThreadImpl.fromNativePtr(ptr);
  }

  static MasstransitTransportTransportThread? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitTransportTransportThreadImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitTransportTransportThread? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value =
        _MasstransitTransportTransportThread_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitTransportTransportThread_clone = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_Transport_MasstransitTransportTransportThread_clone')
    .asFunction(isLeaf: true);

final _MasstransitTransportTransportThread_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_transport_masstransit_Transport_MasstransitTransportTransportThread_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    core.bool,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _MasstransitTransportTransportThread_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Bool,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_Transport_MasstransitTransportTransportThread_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _MasstransitTransportTransportThread_get_thread = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_Transport_MasstransitTransportTransportThread_get_thread')
    .asFunction(isLeaf: true);
final core.bool Function(
    ffi.Pointer<
        ffi.Void>) _MasstransitTransportTransportThread_get_isRecommended = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_Transport_MasstransitTransportTransportThread_get_isRecommended')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _MasstransitTransportTransportThread_get_alerts = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_Transport_MasstransitTransportTransportThread_get_alerts')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitTransportTransportThread_get_alternateDepartureStop = lib
        .library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_Transport_MasstransitTransportTransportThread_get_alternateDepartureStop')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi
        .Void>) _MasstransitTransportTransportThread_get_boardingOptions = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_Transport_MasstransitTransportTransportThread_get_boardingOptions')
    .asFunction(isLeaf: true);
