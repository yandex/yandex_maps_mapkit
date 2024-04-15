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
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/time.dart' as mapkit_time;
import 'package:yandex_maps_mapkit/src/transport/masstransit/common.dart'
    as transport_masstransit_common;

part 'transport.containers.dart';

/// @nodoc
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
    toNative: 'MasstransitTransportThreadAlert.toPointer',
    toPlatform:
        '(val) => MasstransitTransportThreadAlert.fromPointer(val, needFree: false)')
class MasstransitTransportThreadAlert {
  final core.String text;
  final MasstransitTransportThreadAlertClosed? closed;
  final MasstransitTransportThreadAlertClosedUntil? closedUntil;
  final MasstransitTransportThreadAlertLastTrip? lastTrip;

  const MasstransitTransportThreadAlert({
    required this.text,
    this.closed,
    this.closedUntil,
    this.lastTrip,
  });

  /// @nodoc
  @internal
  MasstransitTransportThreadAlert.fromNative(
      MasstransitTransportThreadAlertNative native)
      : this(
            text: to_platform.toPlatformString(native.text),
            closed: MasstransitTransportThreadAlertClosed.fromPointer(
                native.closed),
            closedUntil: MasstransitTransportThreadAlertClosedUntil.fromPointer(
                native.closedUntil),
            lastTrip: MasstransitTransportThreadAlertLastTrip.fromPointer(
                native.lastTrip));

  /// @nodoc
  @internal
  static MasstransitTransportThreadAlertNative toNative(
      MasstransitTransportThreadAlert c) {
    return _MasstransitTransportThreadAlertNativeInit(
        to_native.toNativeString(c.text),
        MasstransitTransportThreadAlertClosed.toPointer(c.closed),
        MasstransitTransportThreadAlertClosedUntil.toPointer(c.closedUntil),
        MasstransitTransportThreadAlertLastTrip.toPointer(c.lastTrip));
  }

  /// @nodoc
  @internal
  static MasstransitTransportThreadAlert? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitTransportThreadAlert.fromNative(
        ptr.cast<MasstransitTransportThreadAlertNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitTransportThreadAlert? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitTransportThreadAlertNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
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
    toNative: 'MasstransitTransportThreadAlertClosed.toPointer',
    toPlatform:
        '(val) => MasstransitTransportThreadAlertClosed.fromPointer(val, needFree: false)')
class MasstransitTransportThreadAlertClosed {
  final core.bool dummy;

  const MasstransitTransportThreadAlertClosed({
    required this.dummy,
  });

  /// @nodoc
  @internal
  MasstransitTransportThreadAlertClosed.fromNative(
      MasstransitTransportThreadAlertClosedNative native)
      : this(dummy: native.dummy);

  /// @nodoc
  @internal
  static MasstransitTransportThreadAlertClosedNative toNative(
      MasstransitTransportThreadAlertClosed c) {
    return _MasstransitTransportThreadAlertClosedNativeInit(c.dummy);
  }

  /// @nodoc
  @internal
  static MasstransitTransportThreadAlertClosed? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitTransportThreadAlertClosed.fromNative(
        ptr.cast<MasstransitTransportThreadAlertClosedNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitTransportThreadAlertClosed? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitTransportThreadAlertClosedNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
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
    toNative: 'MasstransitTransportThreadAlertClosedUntil.toPointer',
    toPlatform:
        '(val) => MasstransitTransportThreadAlertClosedUntil.fromPointer(val, needFree: false)')
class MasstransitTransportThreadAlertClosedUntil {
  final mapkit_time.Time time;

  const MasstransitTransportThreadAlertClosedUntil(this.time);

  /// @nodoc
  @internal
  MasstransitTransportThreadAlertClosedUntil.fromNative(
      MasstransitTransportThreadAlertClosedUntilNative native)
      : this(mapkit_time.Time.fromNative(native.time));

  /// @nodoc
  @internal
  static MasstransitTransportThreadAlertClosedUntilNative toNative(
      MasstransitTransportThreadAlertClosedUntil c) {
    return _MasstransitTransportThreadAlertClosedUntilNativeInit(
        mapkit_time.Time.toNative(c.time));
  }

  /// @nodoc
  @internal
  static MasstransitTransportThreadAlertClosedUntil? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitTransportThreadAlertClosedUntil.fromNative(
        ptr.cast<MasstransitTransportThreadAlertClosedUntilNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitTransportThreadAlertClosedUntil? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result =
        malloc.call<MasstransitTransportThreadAlertClosedUntilNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
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
    toNative: 'MasstransitTransportThreadAlertLastTrip.toPointer',
    toPlatform:
        '(val) => MasstransitTransportThreadAlertLastTrip.fromPointer(val, needFree: false)')
class MasstransitTransportThreadAlertLastTrip {
  final mapkit_time.Time time;

  const MasstransitTransportThreadAlertLastTrip(this.time);

  /// @nodoc
  @internal
  MasstransitTransportThreadAlertLastTrip.fromNative(
      MasstransitTransportThreadAlertLastTripNative native)
      : this(mapkit_time.Time.fromNative(native.time));

  /// @nodoc
  @internal
  static MasstransitTransportThreadAlertLastTripNative toNative(
      MasstransitTransportThreadAlertLastTrip c) {
    return _MasstransitTransportThreadAlertLastTripNativeInit(
        mapkit_time.Time.toNative(c.time));
  }

  /// @nodoc
  @internal
  static MasstransitTransportThreadAlertLastTrip? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitTransportThreadAlertLastTrip.fromNative(
        ptr.cast<MasstransitTransportThreadAlertLastTripNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitTransportThreadAlertLastTrip? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitTransportThreadAlertLastTripNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitBoardingOptions.toPointer',
    toPlatform:
        '(val) => MasstransitBoardingOptions.fromPointer(val, needFree: false)')
class MasstransitBoardingOptions implements ffi.Finalizable {
  late final area =
      MasstransitBoardingOptionsBoardingAreaContainerExtension.toPlatformVector(
          _MasstransitBoardingOptions_get_area(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitBoardingOptions_free.cast());

  MasstransitBoardingOptions(
      core.List<MasstransitBoardingOptionsBoardingArea> area)
      : this.fromNativePtr(_MasstransitBoardingOptions_init(
            MasstransitBoardingOptionsBoardingAreaContainerExtension
                .toNativeVector(area)));

  /// @nodoc
  @internal
  MasstransitBoardingOptions.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitBoardingOptions? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitBoardingOptions? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitBoardingOptions.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitBoardingOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitBoardingOptions.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
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
    toNative: 'MasstransitBoardingOptionsBoardingArea.toPointer',
    toPlatform:
        '(val) => MasstransitBoardingOptionsBoardingArea.fromPointer(val, needFree: false)')
class MasstransitBoardingOptionsBoardingArea implements ffi.Finalizable {
  late final id = to_platform.toPlatformFromPointerString(
      _MasstransitBoardingOptionsBoardingArea_get_id(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitBoardingOptionsBoardingArea_free.cast());

  MasstransitBoardingOptionsBoardingArea(core.String? id)
      : this.fromNativePtr(_MasstransitBoardingOptionsBoardingArea_init(
            to_native.toNativePtrString(id)));

  /// @nodoc
  @internal
  MasstransitBoardingOptionsBoardingArea.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      MasstransitBoardingOptionsBoardingArea? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitBoardingOptionsBoardingArea? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitBoardingOptionsBoardingArea.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitBoardingOptionsBoardingArea? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitBoardingOptionsBoardingArea.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
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
    toNative: 'MasstransitTransport.toPointer',
    toPlatform:
        '(val) => MasstransitTransport.fromPointer(val, needFree: false)')
class MasstransitTransport implements ffi.Finalizable {
  late final line = transport_masstransit_common.MasstransitLine.fromNativePtr(
      _MasstransitTransport_get_line(_ptr));
  late final transports =
      MasstransitTransportTransportThreadContainerExtension.toPlatformVector(
          _MasstransitTransport_get_transports(_ptr));
  late final transportContours =
      transport_masstransit_common.MasstransitTransportContourContainerExtension
          .toPlatformVector(_MasstransitTransport_get_transportContours(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitTransport_free.cast());

  MasstransitTransport(
      transport_masstransit_common.MasstransitLine line,
      core.List<MasstransitTransportTransportThread> transports,
      core.List<transport_masstransit_common.MasstransitTransportContour>
          transportContours)
      : this.fromNativePtr(_MasstransitTransport_init(
            transport_masstransit_common.MasstransitLine.getNativePtr(line),
            MasstransitTransportTransportThreadContainerExtension
                .toNativeVector(transports),
            transport_masstransit_common
                    .MasstransitTransportContourContainerExtension
                .toNativeVector(transportContours)));

  /// @nodoc
  @internal
  MasstransitTransport.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitTransport? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitTransport? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitTransport.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitTransport? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitTransport.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
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
    toNative: 'MasstransitTransportTransportThread.toPointer',
    toPlatform:
        '(val) => MasstransitTransportTransportThread.fromPointer(val, needFree: false)')
class MasstransitTransportTransportThread implements ffi.Finalizable {
  late final thread =
      transport_masstransit_common.MasstransitThread.fromNativePtr(
          _MasstransitTransportTransportThread_get_thread(_ptr));
  late final isRecommended =
      _MasstransitTransportTransportThread_get_isRecommended(_ptr);
  late final alerts =
      MasstransitTransportThreadAlertContainerExtension.toPlatformVector(
          _MasstransitTransportTransportThread_get_alerts(_ptr));
  late final alternateDepartureStop =
      transport_masstransit_common.MasstransitStop.fromOptionalPtr(
          _MasstransitTransportTransportThread_get_alternateDepartureStop(
              _ptr));
  late final boardingOptions = MasstransitBoardingOptions.fromOptionalPtr(
      _MasstransitTransportTransportThread_get_boardingOptions(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitTransportTransportThread_free.cast());

  MasstransitTransportTransportThread(
      transport_masstransit_common.MasstransitThread thread,
      core.bool isRecommended,
      core.List<MasstransitTransportThreadAlert> alerts,
      transport_masstransit_common.MasstransitStop? alternateDepartureStop,
      MasstransitBoardingOptions? boardingOptions)
      : this.fromNativePtr(_MasstransitTransportTransportThread_init(
            transport_masstransit_common.MasstransitThread.getNativePtr(thread),
            isRecommended,
            MasstransitTransportThreadAlertContainerExtension.toNativeVector(
                alerts),
            transport_masstransit_common.MasstransitStop.getNativePtr(
                alternateDepartureStop),
            MasstransitBoardingOptions.getNativePtr(boardingOptions)));

  /// @nodoc
  @internal
  MasstransitTransportTransportThread.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      MasstransitTransportTransportThread? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitTransportTransportThread? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitTransportTransportThread.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitTransportTransportThread? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitTransportTransportThread.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
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
