part of 'non_avoided_features.dart';

final class DrivingNonAvoidedFeaturesNative extends ffi.Struct {
  @ffi.Bool()
  external core.bool tolls;
  @ffi.Bool()
  external core.bool ferries;
  @ffi.Bool()
  external core.bool fordCrossings;
  @ffi.Bool()
  external core.bool highways;
  @ffi.Bool()
  external core.bool railwayCrossings;
  @ffi.Bool()
  external core.bool tunnels;
  @ffi.Bool()
  external core.bool inPoorConditionRoads;
  @ffi.Bool()
  external core.bool unpavedRoads;
  @ffi.Bool()
  external core.bool avoidZones;
}

final DrivingNonAvoidedFeaturesNative Function(core.bool, core.bool, core.bool,
        core.bool, core.bool, core.bool, core.bool, core.bool, core.bool)
    _DrivingNonAvoidedFeaturesNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    DrivingNonAvoidedFeaturesNative Function(
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Bool)>>(
            'yandex_flutter_directions_driving_DrivingNonAvoidedFeatures_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'DrivingNonAvoidedFeaturesImpl.toPointer',
    toPlatform:
        '(val) => DrivingNonAvoidedFeaturesImpl.fromPointer(val, needFree: false)',
    platformType: 'DrivingNonAvoidedFeatures')
extension DrivingNonAvoidedFeaturesImpl on DrivingNonAvoidedFeatures {
  static DrivingNonAvoidedFeatures fromNative(
      DrivingNonAvoidedFeaturesNative native) {
    return DrivingNonAvoidedFeatures(
        tolls: native.tolls,
        ferries: native.ferries,
        fordCrossings: native.fordCrossings,
        highways: native.highways,
        railwayCrossings: native.railwayCrossings,
        tunnels: native.tunnels,
        inPoorConditionRoads: native.inPoorConditionRoads,
        unpavedRoads: native.unpavedRoads,
        avoidZones: native.avoidZones);
  }

  static DrivingNonAvoidedFeaturesNative toNative(
      DrivingNonAvoidedFeatures obj) {
    return _DrivingNonAvoidedFeaturesNativeInit(
        obj.tolls,
        obj.ferries,
        obj.fordCrossings,
        obj.highways,
        obj.railwayCrossings,
        obj.tunnels,
        obj.inPoorConditionRoads,
        obj.unpavedRoads,
        obj.avoidZones);
  }

  static DrivingNonAvoidedFeatures? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = DrivingNonAvoidedFeaturesImpl.fromNative(
        ptr.cast<DrivingNonAvoidedFeaturesNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(DrivingNonAvoidedFeatures? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<DrivingNonAvoidedFeaturesNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
