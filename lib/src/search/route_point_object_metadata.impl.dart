part of 'route_point_object_metadata.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchEntranceImpl.getNativePtr',
    toPlatform: '(val) => SearchEntranceImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchEntrance')
final class SearchEntranceImpl implements SearchEntrance {
  SearchEntranceImpl(core.String? name, mapkit_geometry_point.Point point,
      mapkit_geometry_direction.Direction? direction)
      : this.fromNativePtr(_SearchEntrance_init(
            to_native.toNativePtrString(name),
            mapkit_geometry_point.PointImpl.toNative(point),
            mapkit_geometry_direction.DirectionImpl.toPointer(direction)));

  @core.override
  late final name =
      to_platform.toPlatformFromPointerString(_SearchEntrance_get_name(_ptr));
  @core.override
  late final point = mapkit_geometry_point.PointImpl.fromNative(
      _SearchEntrance_get_point(_ptr));
  @core.override
  late final direction = mapkit_geometry_direction.DirectionImpl.fromPointer(
      _SearchEntrance_get_direction(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchEntrance_free.cast());

  SearchEntranceImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchEntrance? obj) {
    return (obj as SearchEntranceImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchEntrance? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : SearchEntranceImpl.fromNativePtr(ptr);
  }

  static SearchEntrance? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchEntranceImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchEntrance_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchEntrance_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
        mapkit_geometry_point.PointNative, ffi.Pointer<ffi.Void>)
    _SearchEntrance_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEntrance_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchEntrance_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEntrance_get_name')
        .asFunction(isLeaf: true);
final mapkit_geometry_point.PointNative Function(ffi.Pointer<ffi.Void>)
    _SearchEntrance_get_point = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_point.PointNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEntrance_get_point')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchEntrance_get_direction = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchEntrance_get_direction')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchParkingAttributesImpl.getNativePtr',
    toPlatform:
        '(val) => SearchParkingAttributesImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchParkingAttributes')
final class SearchParkingAttributesImpl implements SearchParkingAttributes {
  SearchParkingAttributesImpl(core.String? orgURI,
      mapkit_money.TaxiMoney? firstHourPrice, core.int? placesCount)
      : this.fromNativePtr(_SearchParkingAttributes_init(
            to_native.toNativePtrString(orgURI),
            mapkit_money.TaxiMoneyImpl.toPointer(firstHourPrice),
            to_native.toNativePtrUint32(placesCount)));

  @core.override
  late final orgURI = to_platform
      .toPlatformFromPointerString(_SearchParkingAttributes_get_orgURI(_ptr));
  @core.override
  late final firstHourPrice = mapkit_money.TaxiMoneyImpl.fromPointer(
      _SearchParkingAttributes_get_firstHourPrice(_ptr));
  @core.override
  late final placesCount = to_platform.toPlatformFromPointerUint32(
      _SearchParkingAttributes_get_placesCount(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchParkingAttributes_free.cast());

  SearchParkingAttributesImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchParkingAttributes? obj) {
    return (obj as SearchParkingAttributesImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchParkingAttributes? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchParkingAttributesImpl.fromNativePtr(ptr);
  }

  static SearchParkingAttributes? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchParkingAttributesImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchParkingAttributes_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchParkingAttributes_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchParkingAttributes_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchParkingAttributes_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchParkingAttributes_get_orgURI = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchParkingAttributes_get_orgURI')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchParkingAttributes_get_firstHourPrice = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchParkingAttributes_get_firstHourPrice')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchParkingAttributes_get_placesCount = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchParkingAttributes_get_placesCount')
        .asFunction(isLeaf: true);
