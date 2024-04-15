import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_mapkit/src/bindings/common/exception.dart'
    as exception;
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
import 'package:yandex_maps_mapkit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/mapkit/localized_value.dart'
    as mapkit_localized_value;
import 'package:yandex_maps_mapkit/src/mapkit/navigation/jam_segment.dart'
    as mapkit_navigation_jam_segment;
import 'package:yandex_maps_mapkit/src/mapkit/uri/uri_object_metadata.dart'
    as mapkit_uri_uri_object_metadata;
import 'package:yandex_maps_mapkit/src/transport/masstransit/annotation.dart'
    as transport_masstransit_annotation;
import 'package:yandex_maps_mapkit/src/transport/masstransit/common.dart'
    as transport_masstransit_common;
import 'package:yandex_maps_mapkit/src/transport/masstransit/construction.dart'
    as transport_masstransit_construction;
import 'package:yandex_maps_mapkit/src/transport/masstransit/flags.dart'
    as transport_masstransit_flags;
import 'package:yandex_maps_mapkit/src/transport/masstransit/masstransit_router.dart'
    as transport_masstransit_masstransit_router;
import 'package:yandex_maps_mapkit/src/transport/masstransit/restricted_entry.dart'
    as transport_masstransit_restricted_entry;
import 'package:yandex_maps_mapkit/src/transport/masstransit/transport.dart'
    as transport_masstransit_transport;
import 'package:yandex_maps_mapkit/src/transport/masstransit/travel_estimation.dart'
    as transport_masstransit_travel_estimation;
import 'package:yandex_maps_mapkit/src/transport/masstransit/way_point.dart'
    as transport_masstransit_way_point;
import 'package:yandex_maps_mapkit/src/transport/masstransit/weight.dart'
    as transport_masstransit_weight;

part 'route.containers.dart';

/// @nodoc
final class MasstransitWaitNative extends ffi.Struct {
  @ffi.Uint32()
  external core.int dummy;
}

final MasstransitWaitNative Function(core.int) _MasstransitWaitNativeInit = lib
    .library
    .lookup<ffi.NativeFunction<MasstransitWaitNative Function(ffi.Uint32)>>(
        'yandex_flutter_transport_masstransit_MasstransitWait_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitWait.toPointer',
    toPlatform: '(val) => MasstransitWait.fromPointer(val, needFree: false)')
class MasstransitWait {
  final core.int dummy;

  const MasstransitWait({
    required this.dummy,
  });

  /// @nodoc
  @internal
  MasstransitWait.fromNative(MasstransitWaitNative native)
      : this(dummy: native.dummy);

  /// @nodoc
  @internal
  static MasstransitWaitNative toNative(MasstransitWait c) {
    return _MasstransitWaitNativeInit(c.dummy);
  }

  /// @nodoc
  @internal
  static MasstransitWait? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        MasstransitWait.fromNative(ptr.cast<MasstransitWaitNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitWait? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitWaitNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class MasstransitConstructionMaskNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> stairs;
  external ffi.Pointer<ffi.Void> pass;
  @ffi.Bool()
  external core.bool crosswalk;
  @ffi.Bool()
  external core.bool binding;
  @ffi.Bool()
  external core.bool transition;
  @ffi.Bool()
  external core.bool travolator;
  @ffi.Bool()
  external core.bool indoor;
}

final MasstransitConstructionMaskNative Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    core
        .bool) _MasstransitConstructionMaskNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                MasstransitConstructionMaskNative Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Bool,
                    ffi.Bool,
                    ffi.Bool,
                    ffi.Bool,
                    ffi.Bool)>>(
        'yandex_flutter_transport_masstransit_MasstransitConstructionMask_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitConstructionMask.toPointer',
    toPlatform:
        '(val) => MasstransitConstructionMask.fromPointer(val, needFree: false)')
class MasstransitConstructionMask {
  final MasstransitConstructionMaskStairs? stairs;
  final MasstransitConstructionMaskPass? pass;
  final core.bool crosswalk;
  final core.bool binding;
  final core.bool transition;
  final core.bool travolator;
  final core.bool indoor;

  const MasstransitConstructionMask({
    this.stairs,
    this.pass,
    required this.crosswalk,
    required this.binding,
    required this.transition,
    required this.travolator,
    required this.indoor,
  });

  /// @nodoc
  @internal
  MasstransitConstructionMask.fromNative(
      MasstransitConstructionMaskNative native)
      : this(
            stairs:
                MasstransitConstructionMaskStairs.fromPointer(native.stairs),
            pass: MasstransitConstructionMaskPass.fromPointer(native.pass),
            crosswalk: native.crosswalk,
            binding: native.binding,
            transition: native.transition,
            travolator: native.travolator,
            indoor: native.indoor);

  /// @nodoc
  @internal
  static MasstransitConstructionMaskNative toNative(
      MasstransitConstructionMask c) {
    return _MasstransitConstructionMaskNativeInit(
        MasstransitConstructionMaskStairs.toPointer(c.stairs),
        MasstransitConstructionMaskPass.toPointer(c.pass),
        c.crosswalk,
        c.binding,
        c.transition,
        c.travolator,
        c.indoor);
  }

  /// @nodoc
  @internal
  static MasstransitConstructionMask? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitConstructionMask.fromNative(
        ptr.cast<MasstransitConstructionMaskNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitConstructionMask? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitConstructionMaskNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitConstructionMaskStairs.toPointer',
    toPlatform:
        '(val) => MasstransitConstructionMaskStairs.fromPointer(val, needFree: false)')
enum MasstransitConstructionMaskStairs {
  /// Stairway with no information whether stairs go up or down along a
  /// pedestrian path.
  Unknown,

  /// Stairway with stairs going up along a pedestrian path.
  Up,

  /// Stairway with stairs going down along a pedestrian path.
  Down,
  ;

  /// @nodoc
  @internal
  static MasstransitConstructionMaskStairs fromInt(core.int val) {
    return MasstransitConstructionMaskStairs.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(MasstransitConstructionMaskStairs e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static MasstransitConstructionMaskStairs? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitConstructionMaskStairs? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitConstructionMaskPass.toPointer',
    toPlatform:
        '(val) => MasstransitConstructionMaskPass.fromPointer(val, needFree: false)')
enum MasstransitConstructionMaskPass {
  /// Underground crossing.
  Under,

  /// Overground crossing, such as a bridge.
  Over,
  ;

  /// @nodoc
  @internal
  static MasstransitConstructionMaskPass fromInt(core.int val) {
    return MasstransitConstructionMaskPass.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(MasstransitConstructionMaskPass e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static MasstransitConstructionMaskPass? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(MasstransitConstructionMaskPass? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class MasstransitConstructionSegmentNative extends ffi.Struct {
  @ffi.Int64()
  external core.int construction;
  external mapkit_geometry_geometry.SubpolylineNative subpolyline;
  external MasstransitConstructionMaskNative constructionMask;
}

final MasstransitConstructionSegmentNative Function(
        core.int,
        mapkit_geometry_geometry.SubpolylineNative,
        MasstransitConstructionMaskNative)
    _MasstransitConstructionSegmentNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    MasstransitConstructionSegmentNative Function(
                        ffi.Int64,
                        mapkit_geometry_geometry.SubpolylineNative,
                        MasstransitConstructionMaskNative)>>(
            'yandex_flutter_transport_masstransit_MasstransitConstructionSegment_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitConstructionSegment.toPointer',
    toPlatform:
        '(val) => MasstransitConstructionSegment.fromPointer(val, needFree: false)')
class MasstransitConstructionSegment {
  final transport_masstransit_construction.MasstransitConstructionID
      construction;
  final mapkit_geometry_geometry.Subpolyline subpolyline;
  final MasstransitConstructionMask constructionMask;

  const MasstransitConstructionSegment(
      this.construction, this.subpolyline, this.constructionMask);

  /// @nodoc
  @internal
  MasstransitConstructionSegment.fromNative(
      MasstransitConstructionSegmentNative native)
      : this(
            transport_masstransit_construction.MasstransitConstructionID
                .fromInt(native.construction),
            mapkit_geometry_geometry.Subpolyline.fromNative(native.subpolyline),
            MasstransitConstructionMask.fromNative(native.constructionMask));

  /// @nodoc
  @internal
  static MasstransitConstructionSegmentNative toNative(
      MasstransitConstructionSegment c) {
    return _MasstransitConstructionSegmentNativeInit(
        transport_masstransit_construction.MasstransitConstructionID.toInt(
            c.construction),
        mapkit_geometry_geometry.Subpolyline.toNative(c.subpolyline),
        MasstransitConstructionMask.toNative(c.constructionMask));
  }

  /// @nodoc
  @internal
  static MasstransitConstructionSegment? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitConstructionSegment.fromNative(
        ptr.cast<MasstransitConstructionSegmentNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitConstructionSegment? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitConstructionSegmentNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// TrafficTypeID describes who the road is designed for.
@bindings_annotations.ContainerData(
    toNative: 'MasstransitTrafficTypeID.toPointer',
    toPlatform:
        '(val) => MasstransitTrafficTypeID.fromPointer(val, needFree: false)')
enum MasstransitTrafficTypeID {
  /// Road that is not one of the following types.
  Other,

  /// Footpath, designed only for pedestrian travel.
  Pedestrian,

  /// Bikepath, designed only for bicycle travel.
  Bicycle,

  /// Road designed for motorized vehicles that might be dangerous for
  /// cyclists.
  Auto,
  ;

  /// @nodoc
  @internal
  static MasstransitTrafficTypeID fromInt(core.int val) {
    return MasstransitTrafficTypeID.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(MasstransitTrafficTypeID e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static MasstransitTrafficTypeID? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(MasstransitTrafficTypeID? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class MasstransitTrafficTypeSegmentNative extends ffi.Struct {
  @ffi.Int64()
  external core.int trafficType;
  external mapkit_geometry_geometry.SubpolylineNative subpolyline;
}

final MasstransitTrafficTypeSegmentNative Function(
    core.int,
    mapkit_geometry_geometry
        .SubpolylineNative) _MasstransitTrafficTypeSegmentNativeInit = lib
    .library
    .lookup<
            ffi.NativeFunction<
                MasstransitTrafficTypeSegmentNative Function(
                    ffi.Int64, mapkit_geometry_geometry.SubpolylineNative)>>(
        'yandex_flutter_transport_masstransit_MasstransitTrafficTypeSegment_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTrafficTypeSegment.toPointer',
    toPlatform:
        '(val) => MasstransitTrafficTypeSegment.fromPointer(val, needFree: false)')
class MasstransitTrafficTypeSegment {
  final MasstransitTrafficTypeID trafficType;
  final mapkit_geometry_geometry.Subpolyline subpolyline;

  const MasstransitTrafficTypeSegment(this.trafficType, this.subpolyline);

  /// @nodoc
  @internal
  MasstransitTrafficTypeSegment.fromNative(
      MasstransitTrafficTypeSegmentNative native)
      : this(
            MasstransitTrafficTypeID.fromInt(native.trafficType),
            mapkit_geometry_geometry.Subpolyline.fromNative(
                native.subpolyline));

  /// @nodoc
  @internal
  static MasstransitTrafficTypeSegmentNative toNative(
      MasstransitTrafficTypeSegment c) {
    return _MasstransitTrafficTypeSegmentNativeInit(
        MasstransitTrafficTypeID.toInt(c.trafficType),
        mapkit_geometry_geometry.Subpolyline.toNative(c.subpolyline));
  }

  /// @nodoc
  @internal
  static MasstransitTrafficTypeSegment? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitTrafficTypeSegment.fromNative(
        ptr.cast<MasstransitTrafficTypeSegmentNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitTrafficTypeSegment? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitTrafficTypeSegmentNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitFitnessType.toPointer',
    toPlatform:
        '(val) => MasstransitFitnessType.fromPointer(val, needFree: false)')
enum MasstransitFitnessType {
  /// User moves on feet.
  Pedestrian,

  /// User moves on wheels (bicycle, scooter).
  Bicycle,
  ;

  /// @nodoc
  @internal
  static MasstransitFitnessType fromInt(core.int val) {
    return MasstransitFitnessType.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(MasstransitFitnessType e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static MasstransitFitnessType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(MasstransitFitnessType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// Rough estimate of user experience on a specific section of a fitness
/// route
@bindings_annotations.ContainerData(
    toNative: 'MasstransitInclineType.toPointer',
    toPlatform:
        '(val) => MasstransitInclineType.fromPointer(val, needFree: false)')
enum MasstransitInclineType {
  /// Very quick elevation gain, difficult for any non-athlete
  ExtremeAscent,

  /// Moderate elevation gain, could be difficult for some people
  ModerateAscent,

  /// No meaningful elevation gain or loss,
  Plateau,

  /// Moderate elevation loss
  ModerateDescent,

  /// Very quick elevation loss, could be difficult or dangerous
  ExtremeDescent,
  ;

  /// @nodoc
  @internal
  static MasstransitInclineType fromInt(core.int val) {
    return MasstransitInclineType.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(MasstransitInclineType e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static MasstransitInclineType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(MasstransitInclineType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class MasstransitInclineSectionNative extends ffi.Struct {
  @ffi.Int64()
  external core.int type;
  external mapkit_geometry_geometry.SubpolylineNative subpolyline;
}

final MasstransitInclineSectionNative Function(
    core.int,
    mapkit_geometry_geometry
        .SubpolylineNative) _MasstransitInclineSectionNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                MasstransitInclineSectionNative Function(
                    ffi.Int64, mapkit_geometry_geometry.SubpolylineNative)>>(
        'yandex_flutter_transport_masstransit_MasstransitInclineSection_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitInclineSection.toPointer',
    toPlatform:
        '(val) => MasstransitInclineSection.fromPointer(val, needFree: false)')
class MasstransitInclineSection {
  final MasstransitInclineType type;
  final mapkit_geometry_geometry.Subpolyline subpolyline;

  const MasstransitInclineSection(this.type, this.subpolyline);

  /// @nodoc
  @internal
  MasstransitInclineSection.fromNative(MasstransitInclineSectionNative native)
      : this(
            MasstransitInclineType.fromInt(native.type),
            mapkit_geometry_geometry.Subpolyline.fromNative(
                native.subpolyline));

  /// @nodoc
  @internal
  static MasstransitInclineSectionNative toNative(MasstransitInclineSection c) {
    return _MasstransitInclineSectionNativeInit(
        MasstransitInclineType.toInt(c.type),
        mapkit_geometry_geometry.Subpolyline.toNative(c.subpolyline));
  }

  /// @nodoc
  @internal
  static MasstransitInclineSection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitInclineSection.fromNative(
        ptr.cast<MasstransitInclineSectionNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitInclineSection? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitInclineSectionNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitElevationData.toPointer',
    toPlatform:
        '(val) => MasstransitElevationData.fromPointer(val, needFree: false)')
class MasstransitElevationData implements ffi.Finalizable {
  late final totalAscent = mapkit_localized_value.LocalizedValue.fromNative(
      _MasstransitElevationData_get_totalAscent(_ptr));
  late final totalDescent = mapkit_localized_value.LocalizedValue.fromNative(
      _MasstransitElevationData_get_totalDescent(_ptr));
  late final steps = mapkit_localized_value.LocalizedValue.fromPointer(
      _MasstransitElevationData_get_steps(_ptr));
  late final kilocalories = mapkit_localized_value.LocalizedValue.fromNative(
      _MasstransitElevationData_get_kilocalories(_ptr));
  late final inclineSections =
      MasstransitInclineSectionContainerExtension.toPlatformVector(
          _MasstransitElevationData_get_inclineSections(_ptr));
  late final elevationSegments = to_platform
      .toVectorFloat(_MasstransitElevationData_get_elevationSegments(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitElevationData_free.cast());

  MasstransitElevationData(
      mapkit_localized_value.LocalizedValue totalAscent,
      mapkit_localized_value.LocalizedValue totalDescent,
      mapkit_localized_value.LocalizedValue? steps,
      mapkit_localized_value.LocalizedValue kilocalories,
      core.List<MasstransitInclineSection> inclineSections,
      core.List<core.double?> elevationSegments)
      : this.fromNativePtr(_MasstransitElevationData_init(
            mapkit_localized_value.LocalizedValue.toNative(totalAscent),
            mapkit_localized_value.LocalizedValue.toNative(totalDescent),
            mapkit_localized_value.LocalizedValue.toPointer(steps),
            mapkit_localized_value.LocalizedValue.toNative(kilocalories),
            MasstransitInclineSectionContainerExtension.toNativeVector(
                inclineSections),
            to_native.toNativeVectorFloat(elevationSegments)));

  /// @nodoc
  @internal
  MasstransitElevationData.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitElevationData? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitElevationData? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitElevationData.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitElevationData? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitElevationData.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitElevationData? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitElevationData_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitElevationData_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitElevationData_clone')
    .asFunction(isLeaf: true);

final _MasstransitElevationData_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitElevationData_free');

final ffi.Pointer<ffi.Void> Function(
    mapkit_localized_value.LocalizedValueNative,
    mapkit_localized_value.LocalizedValueNative,
    ffi.Pointer<ffi.Void>,
    mapkit_localized_value.LocalizedValueNative,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _MasstransitElevationData_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    mapkit_localized_value.LocalizedValueNative,
                    mapkit_localized_value.LocalizedValueNative,
                    ffi.Pointer<ffi.Void>,
                    mapkit_localized_value.LocalizedValueNative,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitElevationData_init')
    .asFunction(isLeaf: true);

final mapkit_localized_value.LocalizedValueNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitElevationData_get_totalAscent = lib
    .library
    .lookup<
            ffi.NativeFunction<
                mapkit_localized_value.LocalizedValueNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitElevationData_get_totalAscent')
    .asFunction(isLeaf: true);
final mapkit_localized_value.LocalizedValueNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitElevationData_get_totalDescent = lib
    .library
    .lookup<
            ffi.NativeFunction<
                mapkit_localized_value.LocalizedValueNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitElevationData_get_totalDescent')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitElevationData_get_steps = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitElevationData_get_steps')
    .asFunction(isLeaf: true);
final mapkit_localized_value.LocalizedValueNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitElevationData_get_kilocalories = lib
    .library
    .lookup<
            ffi.NativeFunction<
                mapkit_localized_value.LocalizedValueNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitElevationData_get_kilocalories')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitElevationData_get_inclineSections = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitElevationData_get_inclineSections')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _MasstransitElevationData_get_elevationSegments = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitElevationData_get_elevationSegments')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitFitness.toPointer',
    toPlatform: '(val) => MasstransitFitness.fromPointer(val, needFree: false)')
class MasstransitFitness implements ffi.Finalizable {
  late final type =
      MasstransitFitnessType.fromInt(_MasstransitFitness_get_type(_ptr));
  late final constructions =
      MasstransitConstructionSegmentContainerExtension.toPlatformVector(
          _MasstransitFitness_get_constructions(_ptr));
  late final restrictedEntries = transport_masstransit_restricted_entry
          .MasstransitRestrictedEntryContainerExtension
      .toPlatformVector(_MasstransitFitness_get_restrictedEntries(_ptr));
  late final viaPoints =
      mapkit_geometry_geometry.PolylinePositionContainerExtension
          .toPlatformVector(_MasstransitFitness_get_viaPoints(_ptr));
  late final annotations =
      transport_masstransit_annotation.MasstransitAnnotationContainerExtension
          .toPlatformVector(_MasstransitFitness_get_annotations(_ptr));
  late final trafficTypes =
      MasstransitTrafficTypeSegmentContainerExtension.toPlatformVector(
          _MasstransitFitness_get_trafficTypes(_ptr));
  late final elevationData = MasstransitElevationData.fromOptionalPtr(
      _MasstransitFitness_get_elevationData(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitFitness_free.cast());

  MasstransitFitness(
      MasstransitFitnessType type,
      core.List<MasstransitConstructionSegment> constructions,
      core.List<
              transport_masstransit_restricted_entry.MasstransitRestrictedEntry>
          restrictedEntries,
      core.List<mapkit_geometry_geometry.PolylinePosition> viaPoints,
      core.List<transport_masstransit_annotation.MasstransitAnnotation>
          annotations,
      core.List<MasstransitTrafficTypeSegment> trafficTypes,
      MasstransitElevationData? elevationData)
      : this.fromNativePtr(_MasstransitFitness_init(
            MasstransitFitnessType.toInt(type),
            MasstransitConstructionSegmentContainerExtension.toNativeVector(
                constructions),
            transport_masstransit_restricted_entry
                    .MasstransitRestrictedEntryContainerExtension
                .toNativeVector(restrictedEntries),
            mapkit_geometry_geometry.PolylinePositionContainerExtension
                .toNativeVector(viaPoints),
            transport_masstransit_annotation
                    .MasstransitAnnotationContainerExtension
                .toNativeVector(annotations),
            MasstransitTrafficTypeSegmentContainerExtension.toNativeVector(
                trafficTypes),
            MasstransitElevationData.getNativePtr(elevationData)));

  /// @nodoc
  @internal
  MasstransitFitness.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitFitness? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitFitness? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitFitness.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitFitness? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitFitness.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitFitness? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitFitness_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitFitness_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitFitness_clone')
        .asFunction(isLeaf: true);

final _MasstransitFitness_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitFitness_free');

final ffi.Pointer<ffi.Void> Function(
        core.int,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _MasstransitFitness_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitFitness_init')
        .asFunction(isLeaf: true);

final core.int Function(ffi.Pointer<ffi.Void>) _MasstransitFitness_get_type =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitFitness_get_type')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitFitness_get_constructions = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitFitness_get_constructions')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitFitness_get_restrictedEntries = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitFitness_get_restrictedEntries')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitFitness_get_viaPoints = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitFitness_get_viaPoints')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitFitness_get_annotations = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitFitness_get_annotations')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitFitness_get_trafficTypes = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitFitness_get_trafficTypes')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitFitness_get_elevationData = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitFitness_get_elevationData')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitRouteStopMetadata.toPointer',
    toPlatform:
        '(val) => MasstransitRouteStopMetadata.fromPointer(val, needFree: false)')
class MasstransitRouteStopMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final stop = transport_masstransit_common.MasstransitStop.fromNativePtr(
      _MasstransitRouteStopMetadata_get_stop(_ptr));
  late final stopExit =
      transport_masstransit_common.MasstransitStop.fromOptionalPtr(
          _MasstransitRouteStopMetadata_get_stopExit(_ptr));
  late final exitPoint = mapkit_geometry_point.Point.fromPointer(
      _MasstransitRouteStopMetadata_get_exitPoint(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitRouteStopMetadata_free.cast());

  MasstransitRouteStopMetadata(
      transport_masstransit_common.MasstransitStop stop,
      transport_masstransit_common.MasstransitStop? stopExit,
      mapkit_geometry_point.Point? exitPoint)
      : this.fromNativePtr(_MasstransitRouteStopMetadata_init(
            transport_masstransit_common.MasstransitStop.getNativePtr(stop),
            transport_masstransit_common.MasstransitStop.getNativePtr(stopExit),
            mapkit_geometry_point.Point.toPointer(exitPoint)));

  /// @nodoc
  @internal
  MasstransitRouteStopMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRouteStopMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitRouteStopMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitRouteStopMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitRouteStopMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitRouteStopMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitRouteStopMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitRouteStopMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _MasstransitRouteStopMetadataFactory get factory =>
      const _MasstransitRouteStopMetadataFactory();

  /// @nodoc
  @core.override
  _MasstransitRouteStopMetadataFactory get runtimeFactory =>
      const _MasstransitRouteStopMetadataFactory();
}

/// @nodoc
class _MasstransitRouteStopMetadataFactory
    extends struct_factory.StructFactory<MasstransitRouteStopMetadata> {
  const _MasstransitRouteStopMetadataFactory();

  @core.override
  MasstransitRouteStopMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitRouteStopMetadata.fromNativePtr(ptr);
  }

  @core.override
  MasstransitRouteStopMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitRouteStopMetadata.fromNativePtr(
        _MasstransitRouteStopMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(MasstransitRouteStopMetadata obj) {
    return _MasstransitRouteStopMetadata_upcast(
        MasstransitRouteStopMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _MasstransitRouteStopMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteStopMetadata_downcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteStopMetadata_downcast')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteStopMetadata_upcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteStopMetadata_upcast')
    .asFunction(isLeaf: true);

final native_types.NativeString Function() _MasstransitRouteStopMetadata_name = lib
    .library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteStopMetadata_name')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteStopMetadata_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteStopMetadata_clone')
    .asFunction(isLeaf: true);

final _MasstransitRouteStopMetadata_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_transport_masstransit_MasstransitRouteStopMetadata_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteStopMetadata_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteStopMetadata_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteStopMetadata_get_stop = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteStopMetadata_get_stop')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteStopMetadata_get_stopExit = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteStopMetadata_get_stopExit')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteStopMetadata_get_exitPoint = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteStopMetadata_get_exitPoint')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitRouteStop.toPointer',
    toPlatform:
        '(val) => MasstransitRouteStop.fromPointer(val, needFree: false)')
class MasstransitRouteStop implements ffi.Finalizable {
  late final metadata = MasstransitRouteStopMetadata.fromNativePtr(
      _MasstransitRouteStop_get_metadata(_ptr));
  late final position = mapkit_geometry_point.Point.fromNative(
      _MasstransitRouteStop_get_position(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitRouteStop_free.cast());

  MasstransitRouteStop(MasstransitRouteStopMetadata metadata,
      mapkit_geometry_point.Point position)
      : this.fromNativePtr(_MasstransitRouteStop_init(
            MasstransitRouteStopMetadata.getNativePtr(metadata),
            mapkit_geometry_point.Point.toNative(position)));

  /// @nodoc
  @internal
  MasstransitRouteStop.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRouteStop? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitRouteStop? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitRouteStop.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitRouteStop? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitRouteStop.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitRouteStop? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitRouteStop_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitRouteStop_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitRouteStop_clone')
        .asFunction(isLeaf: true);

final _MasstransitRouteStop_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteStop_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_point.PointNative)
    _MasstransitRouteStop_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_point.PointNative)>>(
            'yandex_flutter_transport_masstransit_MasstransitRouteStop_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteStop_get_metadata = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteStop_get_metadata')
    .asFunction(isLeaf: true);
final mapkit_geometry_point.PointNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteStop_get_position = lib.library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_point.PointNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteStop_get_position')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTransferStop.toPointer',
    toPlatform:
        '(val) => MasstransitTransferStop.fromPointer(val, needFree: false)')
class MasstransitTransferStop implements ffi.Finalizable {
  late final routeStop = MasstransitRouteStop.fromNativePtr(
      _MasstransitTransferStop_get_routeStop(_ptr));
  late final transports =
      transport_masstransit_transport.MasstransitTransportContainerExtension
          .toPlatformVector(_MasstransitTransferStop_get_transports(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitTransferStop_free.cast());

  MasstransitTransferStop(
      MasstransitRouteStop routeStop,
      core.List<transport_masstransit_transport.MasstransitTransport>
          transports)
      : this.fromNativePtr(_MasstransitTransferStop_init(
            MasstransitRouteStop.getNativePtr(routeStop),
            transport_masstransit_transport
                    .MasstransitTransportContainerExtension
                .toNativeVector(transports)));

  /// @nodoc
  @internal
  MasstransitTransferStop.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitTransferStop? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitTransferStop? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitTransferStop.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitTransferStop? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitTransferStop.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitTransferStop? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitTransferStop_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitTransferStop_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransferStop_clone')
    .asFunction(isLeaf: true);

final _MasstransitTransferStop_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransferStop_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _MasstransitTransferStop_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitTransferStop_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitTransferStop_get_routeStop = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransferStop_get_routeStop')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitTransferStop_get_transports = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransferStop_get_transports')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTransfer.toPointer',
    toPlatform:
        '(val) => MasstransitTransfer.fromPointer(val, needFree: false)')
class MasstransitTransfer implements ffi.Finalizable {
  late final constructions =
      MasstransitConstructionSegmentContainerExtension.toPlatformVector(
          _MasstransitTransfer_get_constructions(_ptr));
  late final transferStop = MasstransitTransferStop.fromNativePtr(
      _MasstransitTransfer_get_transferStop(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitTransfer_free.cast());

  MasstransitTransfer(core.List<MasstransitConstructionSegment> constructions,
      MasstransitTransferStop transferStop)
      : this.fromNativePtr(_MasstransitTransfer_init(
            MasstransitConstructionSegmentContainerExtension.toNativeVector(
                constructions),
            MasstransitTransferStop.getNativePtr(transferStop)));

  /// @nodoc
  @internal
  MasstransitTransfer.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitTransfer? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitTransfer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitTransfer.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitTransfer? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitTransfer.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitTransfer? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitTransfer_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitTransfer_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitTransfer_clone')
        .asFunction(isLeaf: true);

final _MasstransitTransfer_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransfer_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _MasstransitTransfer_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitTransfer_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitTransfer_get_constructions = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransfer_get_constructions')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitTransfer_get_transferStop = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitTransfer_get_transferStop')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTaxi.toPointer',
    toPlatform: '(val) => MasstransitTaxi.fromPointer(val, needFree: false)')
class MasstransitTaxi implements ffi.Finalizable {
  late final jamSegments =
      mapkit_navigation_jam_segment.JamSegmentContainerExtension
          .toPlatformVector(_MasstransitTaxi_get_jamSegments(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_MasstransitTaxi_free.cast());

  MasstransitTaxi(
      core.List<mapkit_navigation_jam_segment.JamSegment> jamSegments)
      : this.fromNativePtr(_MasstransitTaxi_init(mapkit_navigation_jam_segment
            .JamSegmentContainerExtension.toNativeVector(jamSegments)));

  /// @nodoc
  @internal
  MasstransitTaxi.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitTaxi? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitTaxi? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitTaxi.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitTaxi? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        MasstransitTaxi.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitTaxi? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitTaxi_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitTaxi_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitTaxi_clone')
        .asFunction(isLeaf: true);

final _MasstransitTaxi_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitTaxi_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitTaxi_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitTaxi_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitTaxi_get_jamSegments = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitTaxi_get_jamSegments')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitSectionMetadata.toPointer',
    toPlatform:
        '(val) => MasstransitSectionMetadata.fromPointer(val, needFree: false)')
class MasstransitSectionMetadata implements ffi.Finalizable {
  late final weight = transport_masstransit_weight.MasstransitWeight.fromNative(
      _MasstransitSectionMetadata_get_weight(_ptr));
  late final data = MasstransitSectionMetadataSectionData.toPlatform(
      _MasstransitSectionMetadata_get_data(_ptr));
  late final estimation =
      transport_masstransit_travel_estimation.MasstransitTravelEstimation
          .fromPointer(_MasstransitSectionMetadata_get_estimation(_ptr));
  late final legIndex = _MasstransitSectionMetadata_get_legIndex(_ptr);

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitSectionMetadata_free.cast());

  MasstransitSectionMetadata(
      transport_masstransit_weight.MasstransitWeight weight,
      MasstransitSectionMetadataSectionData data,
      transport_masstransit_travel_estimation.MasstransitTravelEstimation?
          estimation,
      core.int legIndex)
      : this.fromNativePtr(_MasstransitSectionMetadata_init(
            transport_masstransit_weight.MasstransitWeight.toNative(weight),
            MasstransitSectionMetadataSectionData.toNative(data),
            transport_masstransit_travel_estimation.MasstransitTravelEstimation
                .toPointer(estimation),
            legIndex));

  /// @nodoc
  @internal
  MasstransitSectionMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitSectionMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitSectionMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitSectionMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitSectionMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitSectionMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitSectionMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitSectionMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitSectionMetadata_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSectionMetadata_clone')
    .asFunction(isLeaf: true);

final _MasstransitSectionMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitSectionMetadata_free');

final ffi.Pointer<ffi.Void> Function(
    transport_masstransit_weight.MasstransitWeightNative,
    MasstransitSectionMetadataSectionDataNative,
    ffi.Pointer<ffi.Void>,
    core
        .int) _MasstransitSectionMetadata_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    transport_masstransit_weight.MasstransitWeightNative,
                    MasstransitSectionMetadataSectionDataNative,
                    ffi.Pointer<ffi.Void>,
                    ffi.Uint32)>>(
        'yandex_flutter_transport_masstransit_MasstransitSectionMetadata_init')
    .asFunction(isLeaf: true);

final transport_masstransit_weight.MasstransitWeightNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitSectionMetadata_get_weight = lib.library
    .lookup<
            ffi.NativeFunction<
                transport_masstransit_weight.MasstransitWeightNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSectionMetadata_get_weight')
    .asFunction(isLeaf: true);
final MasstransitSectionMetadataSectionDataNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitSectionMetadata_get_data = lib.library
    .lookup<
            ffi.NativeFunction<
                MasstransitSectionMetadataSectionDataNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSectionMetadata_get_data')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitSectionMetadata_get_estimation = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSectionMetadata_get_estimation')
    .asFunction(isLeaf: true);
final core.int Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitSectionMetadata_get_legIndex = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSectionMetadata_get_legIndex')
    .asFunction(isLeaf: true);

/// @nodoc
@internal
final class MasstransitSectionMetadataSectionDataNativeData extends ffi.Union {
  external MasstransitWaitNative wait;
  external ffi.Pointer<ffi.Void> fitness;
  external ffi.Pointer<ffi.Void> transfer;
  external ffi.Pointer<ffi.Void> taxi;
  external ffi.Pointer<ffi.Void> transports;
}

/// @nodoc
@internal
final class MasstransitSectionMetadataSectionDataNative extends ffi.Struct {
  @ffi.Int()
  external core.int tag;
  external MasstransitSectionMetadataSectionDataNativeData data;
}

/// A choice of information specific to the section type.
@bindings_annotations.ContainerData(
    toNative: 'MasstransitSectionMetadataSectionData.toPointer',
    toPlatform:
        '(val) => MasstransitSectionMetadataSectionData.fromPointer(val, needFree: false)')
class MasstransitSectionMetadataSectionData {
  const MasstransitSectionMetadataSectionData.fromWait(MasstransitWait wait)
      : _value = wait;

  const MasstransitSectionMetadataSectionData.fromFitness(
      MasstransitFitness fitness)
      : _value = fitness;

  const MasstransitSectionMetadataSectionData.fromTransfer(
      MasstransitTransfer transfer)
      : _value = transfer;

  const MasstransitSectionMetadataSectionData.fromTaxi(MasstransitTaxi taxi)
      : _value = taxi;

  const MasstransitSectionMetadataSectionData.fromVectorMasstransitTransport(
      core.List<transport_masstransit_transport.MasstransitTransport>
          transports)
      : _value = transports;

  /// @nodoc
  @internal
  static MasstransitSectionMetadataSectionData toPlatform(
      MasstransitSectionMetadataSectionDataNative obj) {
    switch (obj.tag) {
      case 0:
        return MasstransitSectionMetadataSectionData.fromWait(
            MasstransitWait.fromNative(obj.data.wait));
      case 1:
        return MasstransitSectionMetadataSectionData.fromFitness(
            MasstransitFitness.fromNativePtr(obj.data.fitness));
      case 2:
        return MasstransitSectionMetadataSectionData.fromTransfer(
            MasstransitTransfer.fromNativePtr(obj.data.transfer));
      case 3:
        return MasstransitSectionMetadataSectionData.fromTaxi(
            MasstransitTaxi.fromNativePtr(obj.data.taxi));
      case 4:
        return MasstransitSectionMetadataSectionData
            .fromVectorMasstransitTransport(transport_masstransit_transport
                    .MasstransitTransportContainerExtension
                .toPlatformVector(obj.data.transports));
    }
    throw core.TypeError();
  }

  /// @nodoc
  @internal
  static MasstransitSectionMetadataSectionDataNative toNative(
      MasstransitSectionMetadataSectionData obj) {
    if (obj._value is MasstransitWait) {
      return _SectionMetadata_SectionDataNative_WaitNative_init(
          MasstransitWait.toNative(obj._value));
    }
    if (obj._value is MasstransitFitness) {
      return _SectionMetadata_SectionDataNative_Fitness_init(
          MasstransitFitness.getNativePtr(obj._value));
    }
    if (obj._value is MasstransitTransfer) {
      return _SectionMetadata_SectionDataNative_Transfer_init(
          MasstransitTransfer.getNativePtr(obj._value));
    }
    if (obj._value is MasstransitTaxi) {
      return _SectionMetadata_SectionDataNative_Taxi_init(
          MasstransitTaxi.getNativePtr(obj._value));
    }
    if (obj._value
        is core.List<transport_masstransit_transport.MasstransitTransport>) {
      return _SectionMetadata_SectionDataNative_VectorMasstransitTransport_init(
          transport_masstransit_transport.MasstransitTransportContainerExtension
              .toNativeVector(obj._value));
    }
    throw core.TypeError();
  }

  MasstransitWait? asWait() {
    if (_value is MasstransitWait) {
      return _value;
    }
    return null;
  }

  MasstransitFitness? asFitness() {
    if (_value is MasstransitFitness) {
      return _value;
    }
    return null;
  }

  MasstransitTransfer? asTransfer() {
    if (_value is MasstransitTransfer) {
      return _value;
    }
    return null;
  }

  MasstransitTaxi? asTaxi() {
    if (_value is MasstransitTaxi) {
      return _value;
    }
    return null;
  }

  core.List<transport_masstransit_transport.MasstransitTransport>?
      asVectorMasstransitTransport() {
    if (_value
        is core.List<transport_masstransit_transport.MasstransitTransport>) {
      return _value;
    }
    return null;
  }

  /// Applies the passed function to the variant value.
  void when({
    required void Function(MasstransitWait value) onWait,
    required void Function(MasstransitFitness value) onFitness,
    required void Function(MasstransitTransfer value) onTransfer,
    required void Function(MasstransitTaxi value) onTaxi,
    required void Function(
            core.List<transport_masstransit_transport.MasstransitTransport>
                value)
        onVectorMasstransitTransport,
  }) {
    if (_value is MasstransitWait) {
      return onWait(_value as MasstransitWait);
    }
    if (_value is MasstransitFitness) {
      return onFitness(_value as MasstransitFitness);
    }
    if (_value is MasstransitTransfer) {
      return onTransfer(_value as MasstransitTransfer);
    }
    if (_value is MasstransitTaxi) {
      return onTaxi(_value as MasstransitTaxi);
    }
    if (_value
        is core.List<transport_masstransit_transport.MasstransitTransport>) {
      return onVectorMasstransitTransport(_value
          as core.List<transport_masstransit_transport.MasstransitTransport>);
    }
    assert(false);
  }

  /// @nodoc
  @internal
  static MasstransitSectionMetadataSectionData? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        toPlatform(ptr.cast<MasstransitSectionMetadataSectionDataNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitSectionMetadataSectionData? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<MasstransitSectionMetadataSectionDataNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }

  final core.dynamic _value;
}

final MasstransitSectionMetadataSectionDataNative Function(
        MasstransitWaitNative)
    _SectionMetadata_SectionDataNative_WaitNative_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    MasstransitSectionMetadataSectionDataNative Function(
                        MasstransitWaitNative)>>(
            'yandex_flutter_transport_masstransit_SectionMetadata_MasstransitSectionMetadataSectionData_WaitNative_init')
        .asFunction(isLeaf: true);
final MasstransitSectionMetadataSectionDataNative Function(
    ffi.Pointer<
        ffi.Void>) _SectionMetadata_SectionDataNative_Fitness_init = lib.library
    .lookup<
            ffi.NativeFunction<
                MasstransitSectionMetadataSectionDataNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_SectionMetadata_MasstransitSectionMetadataSectionData_Fitness_init')
    .asFunction(isLeaf: true);
final MasstransitSectionMetadataSectionDataNative Function(
    ffi.Pointer<
        ffi.Void>) _SectionMetadata_SectionDataNative_Transfer_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                MasstransitSectionMetadataSectionDataNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_SectionMetadata_MasstransitSectionMetadataSectionData_Transfer_init')
    .asFunction(isLeaf: true);
final MasstransitSectionMetadataSectionDataNative Function(
    ffi
        .Pointer<ffi.Void>) _SectionMetadata_SectionDataNative_Taxi_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                MasstransitSectionMetadataSectionDataNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_SectionMetadata_MasstransitSectionMetadataSectionData_Taxi_init')
    .asFunction(isLeaf: true);
final MasstransitSectionMetadataSectionDataNative Function(
        ffi.Pointer<ffi.Void>)
    _SectionMetadata_SectionDataNative_VectorMasstransitTransport_init = lib
        .library
        .lookup<
                ffi.NativeFunction<
                    MasstransitSectionMetadataSectionDataNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_SectionMetadata_MasstransitSectionMetadataSectionData_VectorMasstransitTransport_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitRouteSettings.toPointer',
    toPlatform:
        '(val) => MasstransitRouteSettings.fromPointer(val, needFree: false)')
class MasstransitRouteSettings implements ffi.Finalizable {
  late final avoidTypes = to_platform
      .toVectorString(_MasstransitRouteSettings_get_avoidTypes(_ptr));
  late final acceptTypes = to_platform
      .toVectorString(_MasstransitRouteSettings_get_acceptTypes(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitRouteSettings_free.cast());

  MasstransitRouteSettings(
      core.List<core.String> avoidTypes, core.List<core.String> acceptTypes)
      : this.fromNativePtr(_MasstransitRouteSettings_init(
            to_native.toNativeVectorString(avoidTypes),
            to_native.toNativeVectorString(acceptTypes)));

  /// @nodoc
  @internal
  MasstransitRouteSettings.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRouteSettings? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitRouteSettings? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitRouteSettings.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitRouteSettings? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitRouteSettings.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitRouteSettings? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitRouteSettings_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteSettings_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteSettings_clone')
    .asFunction(isLeaf: true);

final _MasstransitRouteSettings_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteSettings_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteSettings_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteSettings_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteSettings_get_avoidTypes = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteSettings_get_avoidTypes')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteSettings_get_acceptTypes = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteSettings_get_acceptTypes')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitComfortTag.toPointer',
    toPlatform:
        '(val) => MasstransitComfortTag.fromPointer(val, needFree: false)')
enum MasstransitComfortTag {
  /// Comfort route for hot weather.
  ForHeat,

  /// Comfort route for cold weather.
  ForCold,
  ;

  /// @nodoc
  @internal
  static MasstransitComfortTag fromInt(core.int val) {
    return MasstransitComfortTag.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(MasstransitComfortTag e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static MasstransitComfortTag? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(MasstransitComfortTag? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitRouteMetadata.toPointer',
    toPlatform:
        '(val) => MasstransitRouteMetadata.fromPointer(val, needFree: false)')
class MasstransitRouteMetadata extends mapkit_base_metadata.BaseMetadata
    implements ffi.Finalizable {
  late final weight = transport_masstransit_weight.MasstransitWeight.fromNative(
      _MasstransitRouteMetadata_get_weight(_ptr));
  late final settings = MasstransitRouteSettings.fromOptionalPtr(
      _MasstransitRouteMetadata_get_settings(_ptr));
  late final estimation =
      transport_masstransit_travel_estimation.MasstransitTravelEstimation
          .fromPointer(_MasstransitRouteMetadata_get_estimation(_ptr));
  late final wayPoints =
      transport_masstransit_way_point.MasstransitWayPointContainerExtension
          .toPlatformVector(_MasstransitRouteMetadata_get_wayPoints(_ptr));
  late final routeId = to_platform
      .toPlatformFromPointerString(_MasstransitRouteMetadata_get_routeId(_ptr));
  late final flags = transport_masstransit_flags.MasstransitFlags.fromPointer(
      _MasstransitRouteMetadata_get_flags(_ptr));
  late final comfortTags =
      MasstransitComfortTagContainerExtension.toPlatformVector(
          _MasstransitRouteMetadata_get_comfortTags(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitRouteMetadata_free.cast());

  MasstransitRouteMetadata(
      transport_masstransit_weight.MasstransitWeight weight,
      MasstransitRouteSettings? settings,
      transport_masstransit_travel_estimation.MasstransitTravelEstimation?
          estimation,
      core.List<transport_masstransit_way_point.MasstransitWayPoint> wayPoints,
      core.String? routeId,
      transport_masstransit_flags.MasstransitFlags? flags,
      core.List<MasstransitComfortTag> comfortTags)
      : this.fromNativePtr(_MasstransitRouteMetadata_init(
            transport_masstransit_weight.MasstransitWeight.toNative(weight),
            MasstransitRouteSettings.getNativePtr(settings),
            transport_masstransit_travel_estimation.MasstransitTravelEstimation
                .toPointer(estimation),
            transport_masstransit_way_point
                    .MasstransitWayPointContainerExtension
                .toNativeVector(wayPoints),
            to_native.toNativePtrString(routeId),
            transport_masstransit_flags.MasstransitFlags.toPointer(flags),
            MasstransitComfortTagContainerExtension.toNativeVector(
                comfortTags)));

  /// @nodoc
  @internal
  MasstransitRouteMetadata.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRouteMetadata? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitRouteMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitRouteMetadata.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitRouteMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitRouteMetadata.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitRouteMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitRouteMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }

  static _MasstransitRouteMetadataFactory get factory =>
      const _MasstransitRouteMetadataFactory();

  /// @nodoc
  @core.override
  _MasstransitRouteMetadataFactory get runtimeFactory =>
      const _MasstransitRouteMetadataFactory();
}

/// @nodoc
class _MasstransitRouteMetadataFactory
    extends struct_factory.StructFactory<MasstransitRouteMetadata> {
  const _MasstransitRouteMetadataFactory();

  @core.override
  MasstransitRouteMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitRouteMetadata.fromNativePtr(ptr);
  }

  @core.override
  MasstransitRouteMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitRouteMetadata.fromNativePtr(
        _MasstransitRouteMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(MasstransitRouteMetadata obj) {
    return _MasstransitRouteMetadata_upcast(
        MasstransitRouteMetadata.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _MasstransitRouteMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteMetadata_downcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteMetadata_downcast')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteMetadata_upcast = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteMetadata_upcast')
    .asFunction(isLeaf: true);

final native_types.NativeString Function() _MasstransitRouteMetadata_name = lib
    .library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteMetadata_name')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteMetadata_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteMetadata_clone')
    .asFunction(isLeaf: true);

final _MasstransitRouteMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteMetadata_free');

final ffi.Pointer<ffi.Void> Function(
    transport_masstransit_weight.MasstransitWeightNative,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteMetadata_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    transport_masstransit_weight.MasstransitWeightNative,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteMetadata_init')
    .asFunction(isLeaf: true);

final transport_masstransit_weight.MasstransitWeightNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteMetadata_get_weight = lib.library
    .lookup<
            ffi.NativeFunction<
                transport_masstransit_weight.MasstransitWeightNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteMetadata_get_weight')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteMetadata_get_settings = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteMetadata_get_settings')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteMetadata_get_estimation = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteMetadata_get_estimation')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteMetadata_get_wayPoints = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteMetadata_get_wayPoints')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteMetadata_get_routeId = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteMetadata_get_routeId')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteMetadata_get_flags = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteMetadata_get_flags')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteMetadata_get_comfortTags = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteMetadata_get_comfortTags')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitSection.toPointer',
    toPlatform: '(val) => MasstransitSection.fromPointer(val, needFree: false)')
class MasstransitSection implements ffi.Finalizable {
  late final metadata = MasstransitSectionMetadata.fromNativePtr(
      _MasstransitSection_get_metadata(_ptr));
  late final geometry = mapkit_geometry_geometry.Subpolyline.fromNative(
      _MasstransitSection_get_geometry(_ptr));
  late final stops = MasstransitRouteStopContainerExtension.toPlatformVector(
      _MasstransitSection_get_stops(_ptr));
  late final rideLegs =
      mapkit_geometry_geometry.SubpolylineContainerExtension.toPlatformVector(
          _MasstransitSection_get_rideLegs(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitSection_free.cast());

  MasstransitSection(
      MasstransitSectionMetadata metadata,
      mapkit_geometry_geometry.Subpolyline geometry,
      core.List<MasstransitRouteStop> stops,
      core.List<mapkit_geometry_geometry.Subpolyline> rideLegs)
      : this.fromNativePtr(_MasstransitSection_init(
            MasstransitSectionMetadata.getNativePtr(metadata),
            mapkit_geometry_geometry.Subpolyline.toNative(geometry),
            MasstransitRouteStopContainerExtension.toNativeVector(stops),
            mapkit_geometry_geometry.SubpolylineContainerExtension
                .toNativeVector(rideLegs)));

  /// @nodoc
  @internal
  MasstransitSection.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitSection? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static MasstransitSection? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitSection.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static MasstransitSection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = MasstransitSection.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(MasstransitSection? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _MasstransitSection_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitSection_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitSection_clone')
        .asFunction(isLeaf: true);

final _MasstransitSection_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitSection_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        mapkit_geometry_geometry.SubpolylineNative,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _MasstransitSection_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.SubpolylineNative,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitSection_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitSection_get_metadata = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSection_get_metadata')
    .asFunction(isLeaf: true);
final mapkit_geometry_geometry.SubpolylineNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitSection_get_geometry = lib.library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_geometry.SubpolylineNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSection_get_geometry')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _MasstransitSection_get_stops = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitSection_get_stops')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitSection_get_rideLegs = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSection_get_rideLegs')
    .asFunction(isLeaf: true);

/// @nodoc
class _MasstransitRouteJamsListenerWrapper implements ffi.Finalizable {
  _MasstransitRouteJamsListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitRouteJamsListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

/// A listener to monitor changes to traffic jams on the route.
abstract class MasstransitRouteJamsListener {
  static final _pointerToListener = <ffi.Pointer<ffi.Void>,
      core.WeakReference<MasstransitRouteJamsListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<
      MasstransitRouteJamsListener, _MasstransitRouteJamsListenerWrapper?>();

  /// Triggered when traffic jams are updated.
  void onJamsUpdated(MasstransitRoute route);

  /// Triggered when traffic jams are outdated.
  void onJamsOutdated(MasstransitRoute route);

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(
      MasstransitRouteJamsListener obj) {
    final ptr = _MasstransitRouteJamsListener_new(
        ffi.Pointer.fromFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
            _MasstransitRouteJamsListener_onJamsUpdated),
        ffi.Pointer.fromFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
            _MasstransitRouteJamsListener_onJamsOutdated));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _MasstransitRouteJamsListenerWrapper(ptr);
    _MasstransitRouteJamsListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRouteJamsListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _MasstransitRouteJamsListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteJamsListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _MasstransitRouteJamsListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_transport_masstransit_MasstransitRouteJamsListener_new')
        .asFunction(isLeaf: true);

final _MasstransitRouteJamsListener_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_transport_masstransit_MasstransitRouteJamsListener_free');
void _MasstransitRouteJamsListener_onJamsUpdated(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> route) {
  final listener =
      MasstransitRouteJamsListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onJamsUpdated(MasstransitRoute.fromNativePtr(route));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _MasstransitRouteJamsListener_onJamsOutdated(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> route) {
  final listener =
      MasstransitRouteJamsListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onJamsOutdated(MasstransitRoute.fromNativePtr(route));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

/// Contains information about a route constructed by the mass transit
/// router.
@bindings_annotations.ContainerData(
    toNative: 'MasstransitRoute.getNativePtr',
    toPlatform:
        '(val) => MasstransitRoute.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class MasstransitRoute implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_MasstransitRoute_free.cast());

  /// @nodoc
  MasstransitRoute.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  MasstransitRoute.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRoute? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static MasstransitRoute? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitRoute.fromNativePtr(ptr);
  }

  /// General route information.
  MasstransitRouteMetadata get metadata {
    return MasstransitRouteMetadata.fromNativePtr(_Route_get_metadata(ptr));
  }

  /// List of route waypoints. See
  /// [transport_masstransit_way_point.MasstransitWayPoint] for details
  core.List<transport_masstransit_way_point.MasstransitWayPoint> get wayPoints {
    return transport_masstransit_way_point.MasstransitWayPointContainerExtension
        .toPlatformVector(_Route_get_wayPoints(ptr));
  }

  /// Vector of sections of the route.
  core.List<MasstransitSection> get sections {
    return MasstransitSectionContainerExtension.toPlatformVector(
        _Route_get_sections(ptr));
  }

  /// Polyline of the entire route.
  mapkit_geometry_geometry.Polyline get geometry {
    return mapkit_geometry_geometry.Polyline.fromNativePtr(
        _Route_get_geometry(ptr));
  }

  /// Route URI, which can be used with
  /// [transport_masstransit_masstransit_router.MasstransitRouter] to fetch
  /// additional information about the route or can be bookmarked for
  /// future reference.
  mapkit_uri_uri_object_metadata.UriObjectMetadata get uriMetadata {
    return mapkit_uri_uri_object_metadata.UriObjectMetadata.fromNativePtr(
        _Route_get_uriMetadata(ptr));
  }

  /// Return distance between two polyline positions.
  core.double distanceBetweenPolylinePositions(
      mapkit_geometry_geometry.PolylinePosition from,
      mapkit_geometry_geometry.PolylinePosition to) {
    return _Route_distanceBetweenPolylinePositions(
        ptr,
        mapkit_geometry_geometry.PolylinePosition.toNative(from),
        mapkit_geometry_geometry.PolylinePosition.toNative(to));
  }
}

final _MasstransitRoute_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRoute_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_metadata = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRoute_get_metadata')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_wayPoints = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRoute_get_wayPoints')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_sections = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRoute_get_sections')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_geometry = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRoute_get_geometry')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Route_get_uriMetadata = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRoute_get_uriMetadata')
    .asFunction();

final core.double Function(
    ffi.Pointer<ffi.Void>,
    mapkit_geometry_geometry.PolylinePositionNative,
    mapkit_geometry_geometry
        .PolylinePositionNative) _Route_distanceBetweenPolylinePositions = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Double Function(
                    ffi.Pointer<ffi.Void>,
                    mapkit_geometry_geometry.PolylinePositionNative,
                    mapkit_geometry_geometry.PolylinePositionNative)>>(
        'yandex_flutter_transport_masstransit_MasstransitRoute_distanceBetweenPolylinePositions')
    .asFunction();
