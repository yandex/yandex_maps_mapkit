part of 'route.dart';

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
    toNative: 'MasstransitWaitImpl.toPointer',
    toPlatform:
        '(val) => MasstransitWaitImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitWait')
extension MasstransitWaitImpl on MasstransitWait {
  static MasstransitWait fromNative(MasstransitWaitNative native) {
    return MasstransitWait(dummy: native.dummy);
  }

  static MasstransitWaitNative toNative(MasstransitWait obj) {
    return _MasstransitWaitNativeInit(obj.dummy);
  }

  static MasstransitWait? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        MasstransitWaitImpl.fromNative(ptr.cast<MasstransitWaitNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitWait? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitWaitNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitStairsDirectionImpl.toPointer',
    toPlatform:
        '(val) => MasstransitStairsDirectionImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitStairsDirection')
extension MasstransitStairsDirectionImpl on MasstransitStairsDirection {
  static core.int toInt(MasstransitStairsDirection e) {
    return e.index;
  }

  static MasstransitStairsDirection fromInt(core.int val) {
    return MasstransitStairsDirection.values[val];
  }

  static MasstransitStairsDirection? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(MasstransitStairsDirection? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

final class MasstransitStairsNative extends ffi.Struct {
  @ffi.Int64()
  external core.int direction;
  @ffi.Bool()
  external core.bool hasRamp;
}

final MasstransitStairsNative Function(core.int, core.bool)
    _MasstransitStairsNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    MasstransitStairsNative Function(ffi.Int64, ffi.Bool)>>(
            'yandex_flutter_transport_masstransit_MasstransitStairs_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitStairsImpl.toPointer',
    toPlatform:
        '(val) => MasstransitStairsImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitStairs')
extension MasstransitStairsImpl on MasstransitStairs {
  static MasstransitStairs fromNative(MasstransitStairsNative native) {
    return MasstransitStairs(
        MasstransitStairsDirectionImpl.fromInt(native.direction),
        hasRamp: native.hasRamp);
  }

  static MasstransitStairsNative toNative(MasstransitStairs obj) {
    return _MasstransitStairsNativeInit(
        MasstransitStairsDirectionImpl.toInt(obj.direction), obj.hasRamp);
  }

  static MasstransitStairs? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitStairsImpl.fromNative(
        ptr.cast<MasstransitStairsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitStairs? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitStairsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class MasstransitStairsSummaryNative extends ffi.Struct {
  @ffi.Uint32()
  external core.int numberOfStairs;
  @ffi.Uint32()
  external core.int numberOfStairsWithRamp;
}

final MasstransitStairsSummaryNative Function(
    core.int,
    core
        .int) _MasstransitStairsSummaryNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                MasstransitStairsSummaryNative Function(
                    ffi.Uint32, ffi.Uint32)>>(
        'yandex_flutter_transport_masstransit_MasstransitStairsSummary_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitStairsSummaryImpl.toPointer',
    toPlatform:
        '(val) => MasstransitStairsSummaryImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitStairsSummary')
extension MasstransitStairsSummaryImpl on MasstransitStairsSummary {
  static MasstransitStairsSummary fromNative(
      MasstransitStairsSummaryNative native) {
    return MasstransitStairsSummary(
        numberOfStairs: native.numberOfStairs,
        numberOfStairsWithRamp: native.numberOfStairsWithRamp);
  }

  static MasstransitStairsSummaryNative toNative(MasstransitStairsSummary obj) {
    return _MasstransitStairsSummaryNativeInit(
        obj.numberOfStairs, obj.numberOfStairsWithRamp);
  }

  static MasstransitStairsSummary? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitStairsSummaryImpl.fromNative(
        ptr.cast<MasstransitStairsSummaryNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitStairsSummary? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitStairsSummaryNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitPassImpl.toPointer',
    toPlatform:
        '(val) => MasstransitPassImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitPass')
extension MasstransitPassImpl on MasstransitPass {
  static core.int toInt(MasstransitPass e) {
    return e.index;
  }

  static MasstransitPass fromInt(core.int val) {
    return MasstransitPass.values[val];
  }

  static MasstransitPass? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(MasstransitPass? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTravolatorImpl.toPointer',
    toPlatform:
        '(val) => MasstransitTravolatorImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTravolator')
extension MasstransitTravolatorImpl on MasstransitTravolator {
  static core.int toInt(MasstransitTravolator e) {
    return e.index;
  }

  static MasstransitTravolator fromInt(core.int val) {
    return MasstransitTravolator.values[val];
  }

  static MasstransitTravolator? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(MasstransitTravolator? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitEscalatorImpl.toPointer',
    toPlatform:
        '(val) => MasstransitEscalatorImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitEscalator')
extension MasstransitEscalatorImpl on MasstransitEscalator {
  static core.int toInt(MasstransitEscalator e) {
    return e.index;
  }

  static MasstransitEscalator fromInt(core.int val) {
    return MasstransitEscalator.values[val];
  }

  static MasstransitEscalator? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(MasstransitEscalator? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitElevatorImpl.toPointer',
    toPlatform:
        '(val) => MasstransitElevatorImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitElevator')
extension MasstransitElevatorImpl on MasstransitElevator {
  static core.int toInt(MasstransitElevator e) {
    return e.index;
  }

  static MasstransitElevator fromInt(core.int val) {
    return MasstransitElevator.values[val];
  }

  static MasstransitElevator? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(MasstransitElevator? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

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
  external core.bool tunnel;
  external ffi.Pointer<ffi.Void> travolator;
  @ffi.Bool()
  external core.bool indoor;
  external ffi.Pointer<ffi.Void> escalator;
  external ffi.Pointer<ffi.Void> elevator;
}

final MasstransitConstructionMaskNative Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    core.bool,
    core.bool,
    core.bool,
    core.bool,
    ffi.Pointer<ffi.Void>,
    core.bool,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _MasstransitConstructionMaskNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                MasstransitConstructionMaskNative Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Bool,
                    ffi.Bool,
                    ffi.Bool,
                    ffi.Bool,
                    ffi.Pointer<ffi.Void>,
                    ffi.Bool,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitConstructionMask_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitConstructionMaskImpl.toPointer',
    toPlatform:
        '(val) => MasstransitConstructionMaskImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitConstructionMask')
extension MasstransitConstructionMaskImpl on MasstransitConstructionMask {
  static MasstransitConstructionMask fromNative(
      MasstransitConstructionMaskNative native) {
    return MasstransitConstructionMask(
        stairs: MasstransitStairsImpl.fromPointer(native.stairs),
        pass: MasstransitPassImpl.fromPointer(native.pass),
        crosswalk: native.crosswalk,
        binding: native.binding,
        transition: native.transition,
        tunnel: native.tunnel,
        travolator: MasstransitTravolatorImpl.fromPointer(native.travolator),
        indoor: native.indoor,
        escalator: MasstransitEscalatorImpl.fromPointer(native.escalator),
        elevator: MasstransitElevatorImpl.fromPointer(native.elevator));
  }

  static MasstransitConstructionMaskNative toNative(
      MasstransitConstructionMask obj) {
    return _MasstransitConstructionMaskNativeInit(
        MasstransitStairsImpl.toPointer(obj.stairs),
        MasstransitPassImpl.toPointer(obj.pass),
        obj.crosswalk,
        obj.binding,
        obj.transition,
        obj.tunnel,
        MasstransitTravolatorImpl.toPointer(obj.travolator),
        obj.indoor,
        MasstransitEscalatorImpl.toPointer(obj.escalator),
        MasstransitElevatorImpl.toPointer(obj.elevator));
  }

  static MasstransitConstructionMask? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitConstructionMaskImpl.fromNative(
        ptr.cast<MasstransitConstructionMaskNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitConstructionMask? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitConstructionMaskNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class MasstransitConstructionSegmentNative extends ffi.Struct {
  external mapkit_geometry_geometry.SubpolylineNative subpolyline;
  external MasstransitConstructionMaskNative constructionMask;
}

final MasstransitConstructionSegmentNative Function(
        mapkit_geometry_geometry.SubpolylineNative,
        MasstransitConstructionMaskNative)
    _MasstransitConstructionSegmentNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    MasstransitConstructionSegmentNative Function(
                        mapkit_geometry_geometry.SubpolylineNative,
                        MasstransitConstructionMaskNative)>>(
            'yandex_flutter_transport_masstransit_MasstransitConstructionSegment_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitConstructionSegmentImpl.toPointer',
    toPlatform:
        '(val) => MasstransitConstructionSegmentImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitConstructionSegment')
extension MasstransitConstructionSegmentImpl on MasstransitConstructionSegment {
  static MasstransitConstructionSegment fromNative(
      MasstransitConstructionSegmentNative native) {
    return MasstransitConstructionSegment(
        mapkit_geometry_geometry.SubpolylineImpl.fromNative(native.subpolyline),
        MasstransitConstructionMaskImpl.fromNative(native.constructionMask));
  }

  static MasstransitConstructionSegmentNative toNative(
      MasstransitConstructionSegment obj) {
    return _MasstransitConstructionSegmentNativeInit(
        mapkit_geometry_geometry.SubpolylineImpl.toNative(obj.subpolyline),
        MasstransitConstructionMaskImpl.toNative(obj.constructionMask));
  }

  static MasstransitConstructionSegment? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitConstructionSegmentImpl.fromNative(
        ptr.cast<MasstransitConstructionSegmentNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitConstructionSegment? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitConstructionSegmentNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitTrafficTypeIDImpl.toPointer',
    toPlatform:
        '(val) => MasstransitTrafficTypeIDImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTrafficTypeID')
extension MasstransitTrafficTypeIDImpl on MasstransitTrafficTypeID {
  static core.int toInt(MasstransitTrafficTypeID e) {
    return e.index;
  }

  static MasstransitTrafficTypeID fromInt(core.int val) {
    return MasstransitTrafficTypeID.values[val];
  }

  static MasstransitTrafficTypeID? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(MasstransitTrafficTypeID? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

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
    toNative: 'MasstransitTrafficTypeSegmentImpl.toPointer',
    toPlatform:
        '(val) => MasstransitTrafficTypeSegmentImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTrafficTypeSegment')
extension MasstransitTrafficTypeSegmentImpl on MasstransitTrafficTypeSegment {
  static MasstransitTrafficTypeSegment fromNative(
      MasstransitTrafficTypeSegmentNative native) {
    return MasstransitTrafficTypeSegment(
        MasstransitTrafficTypeIDImpl.fromInt(native.trafficType),
        mapkit_geometry_geometry.SubpolylineImpl.fromNative(
            native.subpolyline));
  }

  static MasstransitTrafficTypeSegmentNative toNative(
      MasstransitTrafficTypeSegment obj) {
    return _MasstransitTrafficTypeSegmentNativeInit(
        MasstransitTrafficTypeIDImpl.toInt(obj.trafficType),
        mapkit_geometry_geometry.SubpolylineImpl.toNative(obj.subpolyline));
  }

  static MasstransitTrafficTypeSegment? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitTrafficTypeSegmentImpl.fromNative(
        ptr.cast<MasstransitTrafficTypeSegmentNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitTrafficTypeSegment? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitTrafficTypeSegmentNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitFitnessTypeImpl.toPointer',
    toPlatform:
        '(val) => MasstransitFitnessTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitFitnessType')
extension MasstransitFitnessTypeImpl on MasstransitFitnessType {
  static core.int toInt(MasstransitFitnessType e) {
    return e.index;
  }

  static MasstransitFitnessType fromInt(core.int val) {
    return MasstransitFitnessType.values[val];
  }

  static MasstransitFitnessType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(MasstransitFitnessType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitInclineTypeImpl.toPointer',
    toPlatform:
        '(val) => MasstransitInclineTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitInclineType')
extension MasstransitInclineTypeImpl on MasstransitInclineType {
  static core.int toInt(MasstransitInclineType e) {
    return e.index;
  }

  static MasstransitInclineType fromInt(core.int val) {
    return MasstransitInclineType.values[val];
  }

  static MasstransitInclineType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(MasstransitInclineType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

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
    toNative: 'MasstransitInclineSectionImpl.toPointer',
    toPlatform:
        '(val) => MasstransitInclineSectionImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitInclineSection')
extension MasstransitInclineSectionImpl on MasstransitInclineSection {
  static MasstransitInclineSection fromNative(
      MasstransitInclineSectionNative native) {
    return MasstransitInclineSection(
        MasstransitInclineTypeImpl.fromInt(native.type),
        mapkit_geometry_geometry.SubpolylineImpl.fromNative(
            native.subpolyline));
  }

  static MasstransitInclineSectionNative toNative(
      MasstransitInclineSection obj) {
    return _MasstransitInclineSectionNativeInit(
        MasstransitInclineTypeImpl.toInt(obj.type),
        mapkit_geometry_geometry.SubpolylineImpl.toNative(obj.subpolyline));
  }

  static MasstransitInclineSection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitInclineSectionImpl.fromNative(
        ptr.cast<MasstransitInclineSectionNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitInclineSection? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitInclineSectionNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class MasstransitElevationPointNative extends ffi.Struct {
  @ffi.Float()
  external core.double elevation;
}

final MasstransitElevationPointNative Function(
    core
        .double) _MasstransitElevationPointNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                MasstransitElevationPointNative Function(ffi.Float)>>(
        'yandex_flutter_transport_masstransit_MasstransitElevationPoint_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitElevationPointImpl.toPointer',
    toPlatform:
        '(val) => MasstransitElevationPointImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitElevationPoint')
extension MasstransitElevationPointImpl on MasstransitElevationPoint {
  static MasstransitElevationPoint fromNative(
      MasstransitElevationPointNative native) {
    return MasstransitElevationPoint(elevation: native.elevation);
  }

  static MasstransitElevationPointNative toNative(
      MasstransitElevationPoint obj) {
    return _MasstransitElevationPointNativeInit(obj.elevation);
  }

  static MasstransitElevationPoint? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitElevationPointImpl.fromNative(
        ptr.cast<MasstransitElevationPointNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitElevationPoint? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitElevationPointNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitElevationDataImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitElevationDataImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitElevationData')
final class MasstransitElevationDataImpl extends MasstransitElevationData {
  MasstransitElevationDataImpl(
      mapkit_localized_value.LocalizedValue totalAscent,
      mapkit_localized_value.LocalizedValue totalDescent,
      mapkit_localized_value.LocalizedValue? steps,
      mapkit_localized_value.LocalizedValue kilocalories,
      core.List<MasstransitInclineSection> inclineSections,
      core.List<MasstransitElevationPoint> elevationSegments)
      : this.fromNativePtr(_MasstransitElevationData_init(
            mapkit_localized_value.LocalizedValueImpl.toNative(totalAscent),
            mapkit_localized_value.LocalizedValueImpl.toNative(totalDescent),
            mapkit_localized_value.LocalizedValueImpl.toPointer(steps),
            mapkit_localized_value.LocalizedValueImpl.toNative(kilocalories),
            MasstransitInclineSectionContainerExtension.toNativeVector(
                inclineSections),
            MasstransitElevationPointContainerExtension.toNativeVector(
                elevationSegments)));

  @core.override
  late final totalAscent = mapkit_localized_value.LocalizedValueImpl.fromNative(
      _MasstransitElevationData_get_totalAscent(_ptr));
  @core.override
  late final totalDescent =
      mapkit_localized_value.LocalizedValueImpl.fromNative(
          _MasstransitElevationData_get_totalDescent(_ptr));
  @core.override
  late final steps = mapkit_localized_value.LocalizedValueImpl.fromPointer(
      _MasstransitElevationData_get_steps(_ptr));
  @core.override
  late final kilocalories =
      mapkit_localized_value.LocalizedValueImpl.fromNative(
          _MasstransitElevationData_get_kilocalories(_ptr));
  @core.override
  late final inclineSections =
      MasstransitInclineSectionContainerExtension.toPlatformVector(
          _MasstransitElevationData_get_inclineSections(_ptr));
  @core.override
  late final elevationSegments =
      MasstransitElevationPointContainerExtension.toPlatformVector(
          _MasstransitElevationData_get_elevationSegments(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitElevationData_free.cast());

  MasstransitElevationDataImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitElevationData? obj) {
    return (obj as MasstransitElevationDataImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitElevationData? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitElevationDataImpl.fromNativePtr(ptr);
  }

  static MasstransitElevationData? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitElevationDataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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

final class MasstransitIndoorLevelNative extends ffi.Struct {
  external native_types.NativeString levelId;
  external native_types.NativeString levelName;
}

final MasstransitIndoorLevelNative Function(
        native_types.NativeString, native_types.NativeString)
    _MasstransitIndoorLevelNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    MasstransitIndoorLevelNative Function(
                        native_types.NativeString, native_types.NativeString)>>(
            'yandex_flutter_transport_masstransit_MasstransitIndoorLevel_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitIndoorLevelImpl.toPointer',
    toPlatform:
        '(val) => MasstransitIndoorLevelImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitIndoorLevel')
extension MasstransitIndoorLevelImpl on MasstransitIndoorLevel {
  static MasstransitIndoorLevel fromNative(
      MasstransitIndoorLevelNative native) {
    return MasstransitIndoorLevel(
        levelId: to_platform.toPlatformString(native.levelId),
        levelName: to_platform.toPlatformString(native.levelName));
  }

  static MasstransitIndoorLevelNative toNative(MasstransitIndoorLevel obj) {
    return _MasstransitIndoorLevelNativeInit(
        to_native.toNativeString(obj.levelId),
        to_native.toNativeString(obj.levelName));
  }

  static MasstransitIndoorLevel? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitIndoorLevelImpl.fromNative(
        ptr.cast<MasstransitIndoorLevelNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitIndoorLevel? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitIndoorLevelNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class MasstransitConnectorNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> from;
  external ffi.Pointer<ffi.Void> to;
}

final MasstransitConnectorNative Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _MasstransitConnectorNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    MasstransitConnectorNative Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_transport_masstransit_MasstransitConnector_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitConnectorImpl.toPointer',
    toPlatform:
        '(val) => MasstransitConnectorImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitConnector')
extension MasstransitConnectorImpl on MasstransitConnector {
  static MasstransitConnector fromNative(MasstransitConnectorNative native) {
    return MasstransitConnector(
        from: MasstransitIndoorLevelImpl.fromPointer(native.from),
        to: MasstransitIndoorLevelImpl.fromPointer(native.to));
  }

  static MasstransitConnectorNative toNative(MasstransitConnector obj) {
    return _MasstransitConnectorNativeInit(
        MasstransitIndoorLevelImpl.toPointer(obj.from),
        MasstransitIndoorLevelImpl.toPointer(obj.to));
  }

  static MasstransitConnector? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitConnectorImpl.fromNative(
        ptr.cast<MasstransitConnectorNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitConnector? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitConnectorNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class MasstransitIndoorSegmentNative extends ffi.Struct {
  external MasstransitIndoorSegmentIndoorDataNative indoorData;
  external mapkit_geometry_geometry.SubpolylineNative subpolyline;
}

final MasstransitIndoorSegmentNative Function(
    MasstransitIndoorSegmentIndoorDataNative,
    mapkit_geometry_geometry
        .SubpolylineNative) _MasstransitIndoorSegmentNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                MasstransitIndoorSegmentNative Function(
                    MasstransitIndoorSegmentIndoorDataNative,
                    mapkit_geometry_geometry.SubpolylineNative)>>(
        'yandex_flutter_transport_masstransit_MasstransitIndoorSegment_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitIndoorSegmentImpl.toPointer',
    toPlatform:
        '(val) => MasstransitIndoorSegmentImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitIndoorSegment')
extension MasstransitIndoorSegmentImpl on MasstransitIndoorSegment {
  static MasstransitIndoorSegment fromNative(
      MasstransitIndoorSegmentNative native) {
    return MasstransitIndoorSegment(
        MasstransitIndoorSegmentIndoorDataImpl.toPlatform(native.indoorData),
        mapkit_geometry_geometry.SubpolylineImpl.fromNative(
            native.subpolyline));
  }

  static MasstransitIndoorSegmentNative toNative(MasstransitIndoorSegment obj) {
    return _MasstransitIndoorSegmentNativeInit(
        MasstransitIndoorSegmentIndoorDataImpl.toNative(obj.indoorData),
        mapkit_geometry_geometry.SubpolylineImpl.toNative(obj.subpolyline));
  }

  static MasstransitIndoorSegment? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitIndoorSegmentImpl.fromNative(
        ptr.cast<MasstransitIndoorSegmentNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(MasstransitIndoorSegment? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<MasstransitIndoorSegmentNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class _MasstransitIndoorSegmentIndoorDataNativeData extends ffi.Union {
  external MasstransitIndoorLevelNative indoorLevel;
  external MasstransitConnectorNative connector;
}

final class MasstransitIndoorSegmentIndoorDataNative extends ffi.Struct {
  @ffi.Int()
  external core.int tag;
  external _MasstransitIndoorSegmentIndoorDataNativeData data;
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitIndoorSegmentIndoorDataImpl.toPointer',
    toPlatform:
        '(val) => MasstransitIndoorSegmentIndoorDataImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitIndoorSegmentIndoorData')
extension MasstransitIndoorSegmentIndoorDataImpl
    on MasstransitIndoorSegmentIndoorData {
  static MasstransitIndoorSegmentIndoorDataNative toNative(
      MasstransitIndoorSegmentIndoorData obj) {
    if (obj._value is MasstransitIndoorLevel) {
      return _IndoorSegment_IndoorDataNative_IndoorLevelNative_init(
          MasstransitIndoorLevelImpl.toNative(obj._value));
    }
    if (obj._value is MasstransitConnector) {
      return _IndoorSegment_IndoorDataNative_ConnectorNative_init(
          MasstransitConnectorImpl.toNative(obj._value));
    }
    throw core.TypeError();
  }

  static MasstransitIndoorSegmentIndoorData toPlatform(
      MasstransitIndoorSegmentIndoorDataNative obj) {
    switch (obj.tag) {
      case 0:
        return MasstransitIndoorSegmentIndoorData.fromIndoorLevel(
            MasstransitIndoorLevelImpl.fromNative(obj.data.indoorLevel));
      case 1:
        return MasstransitIndoorSegmentIndoorData.fromConnector(
            MasstransitConnectorImpl.fromNative(obj.data.connector));
    }
    throw core.TypeError();
  }

  static MasstransitIndoorSegmentIndoorData? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        toPlatform(ptr.cast<MasstransitIndoorSegmentIndoorDataNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitIndoorSegmentIndoorData? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<MasstransitIndoorSegmentIndoorDataNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final MasstransitIndoorSegmentIndoorDataNative Function(
        MasstransitIndoorLevelNative)
    _IndoorSegment_IndoorDataNative_IndoorLevelNative_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    MasstransitIndoorSegmentIndoorDataNative Function(
                        MasstransitIndoorLevelNative)>>(
            'yandex_flutter_transport_masstransit_IndoorSegment_MasstransitIndoorSegmentIndoorData_IndoorLevelNative_init')
        .asFunction(isLeaf: true);
final MasstransitIndoorSegmentIndoorDataNative Function(
        MasstransitConnectorNative)
    _IndoorSegment_IndoorDataNative_ConnectorNative_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    MasstransitIndoorSegmentIndoorDataNative Function(
                        MasstransitConnectorNative)>>(
            'yandex_flutter_transport_masstransit_IndoorSegment_MasstransitIndoorSegmentIndoorData_ConnectorNative_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitFitnessImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitFitnessImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitFitness')
final class MasstransitFitnessImpl extends MasstransitFitness {
  MasstransitFitnessImpl(
      MasstransitFitnessType type,
      core.List<MasstransitConstructionSegment> constructions,
      core.List<
              transport_masstransit_restricted_entry.MasstransitRestrictedEntry>
          restrictedEntries,
      core.List<mapkit_geometry_geometry.PolylinePosition> viaPoints,
      core.List<transport_masstransit_annotation.MasstransitAnnotation>
          annotations,
      core.List<MasstransitTrafficTypeSegment> trafficTypes,
      MasstransitElevationData? elevationData,
      core.List<MasstransitIndoorSegment> indoorSegments)
      : this.fromNativePtr(_MasstransitFitness_init(
            MasstransitFitnessTypeImpl.toInt(type),
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
            MasstransitElevationDataImpl.getNativePtr(elevationData),
            MasstransitIndoorSegmentContainerExtension.toNativeVector(
                indoorSegments)));

  @core.override
  late final type =
      MasstransitFitnessTypeImpl.fromInt(_MasstransitFitness_get_type(_ptr));
  @core.override
  late final constructions =
      MasstransitConstructionSegmentContainerExtension.toPlatformVector(
          _MasstransitFitness_get_constructions(_ptr));
  @core.override
  late final restrictedEntries = transport_masstransit_restricted_entry
          .MasstransitRestrictedEntryContainerExtension
      .toPlatformVector(_MasstransitFitness_get_restrictedEntries(_ptr));
  @core.override
  late final viaPoints =
      mapkit_geometry_geometry.PolylinePositionContainerExtension
          .toPlatformVector(_MasstransitFitness_get_viaPoints(_ptr));
  @core.override
  late final annotations =
      transport_masstransit_annotation.MasstransitAnnotationContainerExtension
          .toPlatformVector(_MasstransitFitness_get_annotations(_ptr));
  @core.override
  late final trafficTypes =
      MasstransitTrafficTypeSegmentContainerExtension.toPlatformVector(
          _MasstransitFitness_get_trafficTypes(_ptr));
  @core.override
  late final elevationData = MasstransitElevationDataImpl.fromOptionalPtr(
      _MasstransitFitness_get_elevationData(_ptr));
  @core.override
  late final indoorSegments =
      MasstransitIndoorSegmentContainerExtension.toPlatformVector(
          _MasstransitFitness_get_indoorSegments(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitFitness_free.cast());

  MasstransitFitnessImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitFitness? obj) {
    return (obj as MasstransitFitnessImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitFitness? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitFitnessImpl.fromNativePtr(ptr);
  }

  static MasstransitFitness? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitFitnessImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitFitness_get_indoorSegments = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitFitness_get_indoorSegments')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitRouteStopMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitRouteStopMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitRouteStopMetadata')
final class MasstransitRouteStopMetadataImpl
    extends MasstransitRouteStopMetadata {
  MasstransitRouteStopMetadataImpl(
      transport_masstransit_common.MasstransitStop stop,
      transport_masstransit_common.MasstransitStop? stopExit,
      mapkit_geometry_point.Point? exitPoint)
      : this.fromNativePtr(_MasstransitRouteStopMetadata_init(
            transport_masstransit_common.MasstransitStopImpl.getNativePtr(stop),
            transport_masstransit_common.MasstransitStopImpl.getNativePtr(
                stopExit),
            mapkit_geometry_point.PointImpl.toPointer(exitPoint)));

  @core.override
  late final stop =
      transport_masstransit_common.MasstransitStopImpl.fromNativePtr(
          _MasstransitRouteStopMetadata_get_stop(_ptr));
  @core.override
  late final stopExit =
      transport_masstransit_common.MasstransitStopImpl.fromOptionalPtr(
          _MasstransitRouteStopMetadata_get_stopExit(_ptr));
  @core.override
  late final exitPoint = mapkit_geometry_point.PointImpl.fromPointer(
      _MasstransitRouteStopMetadata_get_exitPoint(_ptr));

  @core.override
  final _MasstransitRouteStopMetadataFactory runtimeFactory =
      const _MasstransitRouteStopMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitRouteStopMetadata_free.cast());

  MasstransitRouteStopMetadataImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRouteStopMetadata? obj) {
    return (obj as MasstransitRouteStopMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitRouteStopMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitRouteStopMetadataImpl.fromNativePtr(ptr);
  }

  static MasstransitRouteStopMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitRouteStopMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _MasstransitRouteStopMetadataFactory
    extends struct_factory.StructFactory<MasstransitRouteStopMetadata> {
  const _MasstransitRouteStopMetadataFactory();

  @core.override
  MasstransitRouteStopMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitRouteStopMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  MasstransitRouteStopMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitRouteStopMetadataImpl.fromNativePtr(
        _MasstransitRouteStopMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(MasstransitRouteStopMetadata obj) {
    return _MasstransitRouteStopMetadata_upcast(
        MasstransitRouteStopMetadataImpl.getNativePtr(obj));
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
    toNative: 'MasstransitRouteStopImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitRouteStopImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitRouteStop')
final class MasstransitRouteStopImpl extends MasstransitRouteStop {
  MasstransitRouteStopImpl(MasstransitRouteStopMetadata metadata,
      mapkit_geometry_point.Point position)
      : this.fromNativePtr(_MasstransitRouteStop_init(
            MasstransitRouteStopMetadataImpl.getNativePtr(metadata),
            mapkit_geometry_point.PointImpl.toNative(position)));

  @core.override
  late final metadata = MasstransitRouteStopMetadataImpl.fromNativePtr(
      _MasstransitRouteStop_get_metadata(_ptr));
  @core.override
  late final position = mapkit_geometry_point.PointImpl.fromNative(
      _MasstransitRouteStop_get_position(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitRouteStop_free.cast());

  MasstransitRouteStopImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRouteStop? obj) {
    return (obj as MasstransitRouteStopImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitRouteStop? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitRouteStopImpl.fromNativePtr(ptr);
  }

  static MasstransitRouteStop? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitRouteStopImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'MasstransitTransferStopImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitTransferStopImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTransferStop')
final class MasstransitTransferStopImpl extends MasstransitTransferStop {
  MasstransitTransferStopImpl(
      MasstransitRouteStop routeStop,
      core.List<transport_masstransit_transport.MasstransitTransport>
          transports)
      : this.fromNativePtr(_MasstransitTransferStop_init(
            MasstransitRouteStopImpl.getNativePtr(routeStop),
            transport_masstransit_transport
                    .MasstransitTransportContainerExtension
                .toNativeVector(transports)));

  @core.override
  late final routeStop = MasstransitRouteStopImpl.fromNativePtr(
      _MasstransitTransferStop_get_routeStop(_ptr));
  @core.override
  late final transports =
      transport_masstransit_transport.MasstransitTransportContainerExtension
          .toPlatformVector(_MasstransitTransferStop_get_transports(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitTransferStop_free.cast());

  MasstransitTransferStopImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitTransferStop? obj) {
    return (obj as MasstransitTransferStopImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitTransferStop? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitTransferStopImpl.fromNativePtr(ptr);
  }

  static MasstransitTransferStop? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitTransferStopImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'MasstransitTransferImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitTransferImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTransfer')
final class MasstransitTransferImpl extends MasstransitTransfer {
  MasstransitTransferImpl(
      core.List<MasstransitConstructionSegment> constructions,
      MasstransitTransferStop transferStop)
      : this.fromNativePtr(_MasstransitTransfer_init(
            MasstransitConstructionSegmentContainerExtension.toNativeVector(
                constructions),
            MasstransitTransferStopImpl.getNativePtr(transferStop)));

  @core.override
  late final constructions =
      MasstransitConstructionSegmentContainerExtension.toPlatformVector(
          _MasstransitTransfer_get_constructions(_ptr));
  @core.override
  late final transferStop = MasstransitTransferStopImpl.fromNativePtr(
      _MasstransitTransfer_get_transferStop(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitTransfer_free.cast());

  MasstransitTransferImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitTransfer? obj) {
    return (obj as MasstransitTransferImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitTransfer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitTransferImpl.fromNativePtr(ptr);
  }

  static MasstransitTransfer? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitTransferImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'MasstransitTaxiImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitTaxiImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitTaxi')
final class MasstransitTaxiImpl extends MasstransitTaxi {
  MasstransitTaxiImpl(
      core.List<mapkit_navigation_jam_segment.JamSegment> jamSegments)
      : this.fromNativePtr(_MasstransitTaxi_init(mapkit_navigation_jam_segment
            .JamSegmentContainerExtension.toNativeVector(jamSegments)));

  @core.override
  late final jamSegments =
      mapkit_navigation_jam_segment.JamSegmentContainerExtension
          .toPlatformVector(_MasstransitTaxi_get_jamSegments(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_MasstransitTaxi_free.cast());

  MasstransitTaxiImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitTaxi? obj) {
    return (obj as MasstransitTaxiImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitTaxi? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : MasstransitTaxiImpl.fromNativePtr(ptr);
  }

  static MasstransitTaxi? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitTaxiImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'MasstransitSectionMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitSectionMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitSectionMetadata')
final class MasstransitSectionMetadataImpl extends MasstransitSectionMetadata {
  MasstransitSectionMetadataImpl(
      transport_masstransit_weight.MasstransitWeight weight,
      MasstransitSectionMetadataSectionData data,
      transport_masstransit_travel_estimation.MasstransitTravelEstimation?
          estimation,
      core.int legIndex,
      core.List<transport_masstransit_fare.MasstransitSectionPaymentOption>
          paymentOptions)
      : this.fromNativePtr(_MasstransitSectionMetadata_init(
            transport_masstransit_weight.MasstransitWeightImpl.toNative(weight),
            MasstransitSectionMetadataSectionDataImpl.toNative(data),
            transport_masstransit_travel_estimation
                .MasstransitTravelEstimationImpl.toPointer(estimation),
            legIndex,
            transport_masstransit_fare
                    .MasstransitSectionPaymentOptionContainerExtension
                .toNativeVector(paymentOptions)));

  @core.override
  late final weight =
      transport_masstransit_weight.MasstransitWeightImpl.fromNative(
          _MasstransitSectionMetadata_get_weight(_ptr));
  @core.override
  late final data = MasstransitSectionMetadataSectionDataImpl.toPlatform(
      _MasstransitSectionMetadata_get_data(_ptr));
  @core.override
  late final estimation =
      transport_masstransit_travel_estimation.MasstransitTravelEstimationImpl
          .fromPointer(_MasstransitSectionMetadata_get_estimation(_ptr));
  @core.override
  late final legIndex = _MasstransitSectionMetadata_get_legIndex(_ptr);
  @core.override
  late final paymentOptions = transport_masstransit_fare
          .MasstransitSectionPaymentOptionContainerExtension
      .toPlatformVector(_MasstransitSectionMetadata_get_paymentOptions(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitSectionMetadata_free.cast());

  MasstransitSectionMetadataImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitSectionMetadata? obj) {
    return (obj as MasstransitSectionMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitSectionMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitSectionMetadataImpl.fromNativePtr(ptr);
  }

  static MasstransitSectionMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitSectionMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _MasstransitSectionMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_transport_masstransit_MasstransitSectionMetadata_free');

final ffi.Pointer<ffi.Void> Function(
    transport_masstransit_weight.MasstransitWeightNative,
    MasstransitSectionMetadataSectionDataNative,
    ffi.Pointer<ffi.Void>,
    core.int,
    ffi
        .Pointer<ffi.Void>) _MasstransitSectionMetadata_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    transport_masstransit_weight.MasstransitWeightNative,
                    MasstransitSectionMetadataSectionDataNative,
                    ffi.Pointer<ffi.Void>,
                    ffi.Uint32,
                    ffi.Pointer<ffi.Void>)>>(
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
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitSectionMetadata_get_paymentOptions = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitSectionMetadata_get_paymentOptions')
    .asFunction(isLeaf: true);

final class _MasstransitSectionMetadataSectionDataNativeData extends ffi.Union {
  external MasstransitWaitNative wait;
  external ffi.Pointer<ffi.Void> fitness;
  external ffi.Pointer<ffi.Void> transfer;
  external ffi.Pointer<ffi.Void> taxi;
  external ffi.Pointer<ffi.Void> transports;
}

final class MasstransitSectionMetadataSectionDataNative extends ffi.Struct {
  @ffi.Int()
  external core.int tag;
  external _MasstransitSectionMetadataSectionDataNativeData data;
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitSectionMetadataSectionDataImpl.toPointer',
    toPlatform:
        '(val) => MasstransitSectionMetadataSectionDataImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitSectionMetadataSectionData')
extension MasstransitSectionMetadataSectionDataImpl
    on MasstransitSectionMetadataSectionData {
  static MasstransitSectionMetadataSectionDataNative toNative(
      MasstransitSectionMetadataSectionData obj) {
    if (obj._value is MasstransitWait) {
      return _SectionMetadata_SectionDataNative_WaitNative_init(
          MasstransitWaitImpl.toNative(obj._value));
    }
    if (obj._value is MasstransitFitness) {
      return _SectionMetadata_SectionDataNative_Fitness_init(
          MasstransitFitnessImpl.getNativePtr(obj._value));
    }
    if (obj._value is MasstransitTransfer) {
      return _SectionMetadata_SectionDataNative_Transfer_init(
          MasstransitTransferImpl.getNativePtr(obj._value));
    }
    if (obj._value is MasstransitTaxi) {
      return _SectionMetadata_SectionDataNative_Taxi_init(
          MasstransitTaxiImpl.getNativePtr(obj._value));
    }
    if (obj._value
        is core.List<transport_masstransit_transport.MasstransitTransport>) {
      return _SectionMetadata_SectionDataNative_VectorMasstransitTransport_init(
          transport_masstransit_transport.MasstransitTransportContainerExtension
              .toNativeVector(obj._value));
    }
    throw core.TypeError();
  }

  static MasstransitSectionMetadataSectionData toPlatform(
      MasstransitSectionMetadataSectionDataNative obj) {
    switch (obj.tag) {
      case 0:
        return MasstransitSectionMetadataSectionData.fromWait(
            MasstransitWaitImpl.fromNative(obj.data.wait));
      case 1:
        return MasstransitSectionMetadataSectionData.fromFitness(
            MasstransitFitnessImpl.fromNativePtr(obj.data.fitness));
      case 2:
        return MasstransitSectionMetadataSectionData.fromTransfer(
            MasstransitTransferImpl.fromNativePtr(obj.data.transfer));
      case 3:
        return MasstransitSectionMetadataSectionData.fromTaxi(
            MasstransitTaxiImpl.fromNativePtr(obj.data.taxi));
      case 4:
        return MasstransitSectionMetadataSectionData
            .fromVectorMasstransitTransport(transport_masstransit_transport
                    .MasstransitTransportContainerExtension
                .toPlatformVector(obj.data.transports));
    }
    throw core.TypeError();
  }

  static MasstransitSectionMetadataSectionData? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        toPlatform(ptr.cast<MasstransitSectionMetadataSectionDataNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      MasstransitSectionMetadataSectionData? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<MasstransitSectionMetadataSectionDataNative>();
    result.ref = toNative(val);

    return result.cast();
  }
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
    toNative: 'MasstransitRouteSettingsImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitRouteSettingsImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitRouteSettings')
final class MasstransitRouteSettingsImpl extends MasstransitRouteSettings {
  MasstransitRouteSettingsImpl(
      core.List<core.String> avoidTypes, core.List<core.String> acceptTypes)
      : this.fromNativePtr(_MasstransitRouteSettings_init(
            to_native.toNativeVectorString(avoidTypes),
            to_native.toNativeVectorString(acceptTypes)));

  @core.override
  late final avoidTypes = to_platform
      .toVectorString(_MasstransitRouteSettings_get_avoidTypes(_ptr));
  @core.override
  late final acceptTypes = to_platform
      .toVectorString(_MasstransitRouteSettings_get_acceptTypes(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitRouteSettings_free.cast());

  MasstransitRouteSettingsImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRouteSettings? obj) {
    return (obj as MasstransitRouteSettingsImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitRouteSettings? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitRouteSettingsImpl.fromNativePtr(ptr);
  }

  static MasstransitRouteSettings? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitRouteSettingsImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'MasstransitComfortTagImpl.toPointer',
    toPlatform:
        '(val) => MasstransitComfortTagImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitComfortTag')
extension MasstransitComfortTagImpl on MasstransitComfortTag {
  static core.int toInt(MasstransitComfortTag e) {
    return e.index;
  }

  static MasstransitComfortTag fromInt(core.int val) {
    return MasstransitComfortTag.values[val];
  }

  static MasstransitComfortTag? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(MasstransitComfortTag? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitRouteMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitRouteMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitRouteMetadata')
final class MasstransitRouteMetadataImpl extends MasstransitRouteMetadata {
  MasstransitRouteMetadataImpl(
      transport_masstransit_weight.MasstransitWeight weight,
      MasstransitRouteSettings? settings,
      transport_masstransit_travel_estimation.MasstransitTravelEstimation?
          estimation,
      core.List<transport_masstransit_way_point.MasstransitWayPoint> wayPoints,
      core.String? routeId,
      transport_masstransit_flags.MasstransitFlags? flags,
      core.List<MasstransitComfortTag> comfortTags,
      MasstransitStairsSummary stairsSummary,
      core.List<transport_masstransit_fare.MasstransitRoutePaymentOption>
          paymentOptions)
      : this.fromNativePtr(_MasstransitRouteMetadata_init(
            transport_masstransit_weight.MasstransitWeightImpl.toNative(weight),
            MasstransitRouteSettingsImpl.getNativePtr(settings),
            transport_masstransit_travel_estimation
                .MasstransitTravelEstimationImpl.toPointer(estimation),
            transport_masstransit_way_point
                    .MasstransitWayPointContainerExtension
                .toNativeVector(wayPoints),
            to_native.toNativePtrString(routeId),
            transport_masstransit_flags.MasstransitFlagsImpl.toPointer(flags),
            MasstransitComfortTagContainerExtension.toNativeVector(comfortTags),
            MasstransitStairsSummaryImpl.toNative(stairsSummary),
            transport_masstransit_fare
                    .MasstransitRoutePaymentOptionContainerExtension
                .toNativeVector(paymentOptions)));

  @core.override
  late final weight =
      transport_masstransit_weight.MasstransitWeightImpl.fromNative(
          _MasstransitRouteMetadata_get_weight(_ptr));
  @core.override
  late final settings = MasstransitRouteSettingsImpl.fromOptionalPtr(
      _MasstransitRouteMetadata_get_settings(_ptr));
  @core.override
  late final estimation =
      transport_masstransit_travel_estimation.MasstransitTravelEstimationImpl
          .fromPointer(_MasstransitRouteMetadata_get_estimation(_ptr));
  @core.override
  late final wayPoints =
      transport_masstransit_way_point.MasstransitWayPointContainerExtension
          .toPlatformVector(_MasstransitRouteMetadata_get_wayPoints(_ptr));
  @core.override
  late final routeId = to_platform
      .toPlatformFromPointerString(_MasstransitRouteMetadata_get_routeId(_ptr));
  @core.override
  late final flags =
      transport_masstransit_flags.MasstransitFlagsImpl.fromPointer(
          _MasstransitRouteMetadata_get_flags(_ptr));
  @core.override
  late final comfortTags =
      MasstransitComfortTagContainerExtension.toPlatformVector(
          _MasstransitRouteMetadata_get_comfortTags(_ptr));
  @core.override
  late final stairsSummary = MasstransitStairsSummaryImpl.fromNative(
      _MasstransitRouteMetadata_get_stairsSummary(_ptr));
  @core.override
  late final paymentOptions =
      transport_masstransit_fare.MasstransitRoutePaymentOptionContainerExtension
          .toPlatformVector(_MasstransitRouteMetadata_get_paymentOptions(_ptr));

  @core.override
  final _MasstransitRouteMetadataFactory runtimeFactory =
      const _MasstransitRouteMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitRouteMetadata_free.cast());

  MasstransitRouteMetadataImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRouteMetadata? obj) {
    return (obj as MasstransitRouteMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitRouteMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitRouteMetadataImpl.fromNativePtr(ptr);
  }

  static MasstransitRouteMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitRouteMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _MasstransitRouteMetadataFactory
    extends struct_factory.StructFactory<MasstransitRouteMetadata> {
  const _MasstransitRouteMetadataFactory();

  @core.override
  MasstransitRouteMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitRouteMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  MasstransitRouteMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return MasstransitRouteMetadataImpl.fromNativePtr(
        _MasstransitRouteMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(MasstransitRouteMetadata obj) {
    return _MasstransitRouteMetadata_upcast(
        MasstransitRouteMetadataImpl.getNativePtr(obj));
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
    ffi.Pointer<ffi.Void>,
    MasstransitStairsSummaryNative,
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
                    ffi.Pointer<ffi.Void>,
                    MasstransitStairsSummaryNative,
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
final MasstransitStairsSummaryNative Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteMetadata_get_stairsSummary = lib
    .library
    .lookup<
            ffi.NativeFunction<
                MasstransitStairsSummaryNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteMetadata_get_stairsSummary')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _MasstransitRouteMetadata_get_paymentOptions = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_transport_masstransit_MasstransitRouteMetadata_get_paymentOptions')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'MasstransitSectionImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitSectionImpl.fromPointer(val, needFree: false)',
    platformType: 'MasstransitSection')
final class MasstransitSectionImpl extends MasstransitSection {
  MasstransitSectionImpl(
      MasstransitSectionMetadata metadata,
      mapkit_geometry_geometry.Subpolyline geometry,
      core.List<MasstransitRouteStop> stops,
      core.List<mapkit_geometry_geometry.Subpolyline> rideLegs)
      : this.fromNativePtr(_MasstransitSection_init(
            MasstransitSectionMetadataImpl.getNativePtr(metadata),
            mapkit_geometry_geometry.SubpolylineImpl.toNative(geometry),
            MasstransitRouteStopContainerExtension.toNativeVector(stops),
            mapkit_geometry_geometry.SubpolylineContainerExtension
                .toNativeVector(rideLegs)));

  @core.override
  late final metadata = MasstransitSectionMetadataImpl.fromNativePtr(
      _MasstransitSection_get_metadata(_ptr));
  @core.override
  late final geometry = mapkit_geometry_geometry.SubpolylineImpl.fromNative(
      _MasstransitSection_get_geometry(_ptr));
  @core.override
  late final stops = MasstransitRouteStopContainerExtension.toPlatformVector(
      _MasstransitSection_get_stops(_ptr));
  @core.override
  late final rideLegs =
      mapkit_geometry_geometry.SubpolylineContainerExtension.toPlatformVector(
          _MasstransitSection_get_rideLegs(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitSection_free.cast());

  MasstransitSectionImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitSection? obj) {
    return (obj as MasstransitSectionImpl?)?._ptr ?? ffi.nullptr;
  }

  static MasstransitSection? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : MasstransitSectionImpl.fromNativePtr(ptr);
  }

  static MasstransitSection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = MasstransitSectionImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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

final class _MasstransitRouteJamsListenerWrapper implements ffi.Finalizable {
  _MasstransitRouteJamsListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_MasstransitRouteJamsListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension MasstransitRouteJamsListenerImpl on MasstransitRouteJamsListener {
  static final _pointerToListener = <ffi.Pointer<ffi.Void>,
      core.WeakReference<MasstransitRouteJamsListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<
      MasstransitRouteJamsListener, _MasstransitRouteJamsListenerWrapper?>();

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
                        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_transport_masstransit_MasstransitRouteJamsListener_new')
        .asFunction(isLeaf: true);

final _MasstransitRouteJamsListener_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_transport_masstransit_MasstransitRouteJamsListener_free');
void _MasstransitRouteJamsListener_onJamsUpdated(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> route) {
  final listener =
      MasstransitRouteJamsListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onJamsUpdated(MasstransitRouteImpl.fromNativePtr(route));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _MasstransitRouteJamsListener_onJamsOutdated(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> route) {
  final listener =
      MasstransitRouteJamsListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onJamsOutdated(MasstransitRouteImpl.fromNativePtr(route));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

@bindings_annotations.ContainerData(
    toNative: 'MasstransitRouteImpl.getNativePtr',
    toPlatform:
        '(val) => MasstransitRouteImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'MasstransitRoute')
class MasstransitRouteImpl implements MasstransitRoute, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_MasstransitRoute_free.cast());

  /// @nodoc
  MasstransitRouteImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  MasstransitRouteImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(MasstransitRoute? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as MasstransitRouteImpl).ptr;
  }

  @internal

  /// @nodoc
  static MasstransitRoute? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return MasstransitRouteImpl.fromNativePtr(ptr);
  }

  @core.override
  MasstransitRouteMetadata get metadata {
    final result = _Route_get_metadata(ptr);
    return MasstransitRouteMetadataImpl.fromNativePtr(result);
  }

  @core.override
  core.List<transport_masstransit_way_point.MasstransitWayPoint> get wayPoints {
    final result = _Route_get_wayPoints(ptr);
    return transport_masstransit_way_point.MasstransitWayPointContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  core.List<MasstransitSection> get sections {
    final result = _Route_get_sections(ptr);
    return MasstransitSectionContainerExtension.toPlatformVector(result);
  }

  @core.override
  mapkit_geometry_geometry.Polyline get geometry {
    final result = _Route_get_geometry(ptr);
    return mapkit_geometry_geometry.PolylineImpl.fromNativePtr(result);
  }

  @core.override
  mapkit_uri_uri_object_metadata.UriObjectMetadata get uriMetadata {
    final result = _Route_get_uriMetadata(ptr);
    return mapkit_uri_uri_object_metadata.UriObjectMetadataImpl.fromNativePtr(
        result);
  }

  core.double distanceBetweenPolylinePositions(
      mapkit_geometry_geometry.PolylinePosition from,
      mapkit_geometry_geometry.PolylinePosition to) {
    final result = _Route_distanceBetweenPolylinePositions(
        ptr,
        mapkit_geometry_geometry.PolylinePositionImpl.toNative(from),
        mapkit_geometry_geometry.PolylinePositionImpl.toNative(to));
    return result;
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
final void Function(ffi.Pointer<ffi.Void>, core.int) _MasstransitRoute_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_transport_masstransit_MasstransitRoute_set_')
    .asFunction(isLeaf: true);
