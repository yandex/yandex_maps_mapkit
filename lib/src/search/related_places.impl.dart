part of 'related_places.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchPlaceInfoImpl.getNativePtr',
    toPlatform:
        '(val) => SearchPlaceInfoImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchPlaceInfo')
final class SearchPlaceInfoImpl implements SearchPlaceInfo {
  SearchPlaceInfoImpl(
      core.String name,
      core.String? uri,
      core.String? photoUrlTemplate,
      core.String? logId,
      mapkit_geometry_point.Point? point,
      core.String? category,
      core.String? shortName,
      core.double? rating,
      search_working_hours.SearchWorkingHours? workingHours,
      core.String? address,
      core.List<core.String> tag)
      : this.fromNativePtr(_SearchPlaceInfo_init(
            to_native.toNativeString(name),
            to_native.toNativePtrString(uri),
            to_native.toNativePtrString(photoUrlTemplate),
            to_native.toNativePtrString(logId),
            mapkit_geometry_point.PointImpl.toPointer(point),
            to_native.toNativePtrString(category),
            to_native.toNativePtrString(shortName),
            to_native.toNativePtrFloat(rating),
            search_working_hours.SearchWorkingHoursImpl.getNativePtr(
                workingHours),
            to_native.toNativePtrString(address),
            to_native.toNativeVectorString(tag)));

  @core.override
  late final name =
      to_platform.toPlatformString(_SearchPlaceInfo_get_name(_ptr));
  @core.override
  late final uri =
      to_platform.toPlatformFromPointerString(_SearchPlaceInfo_get_uri(_ptr));
  @core.override
  late final photoUrlTemplate = to_platform
      .toPlatformFromPointerString(_SearchPlaceInfo_get_photoUrlTemplate(_ptr));
  @core.override
  late final logId =
      to_platform.toPlatformFromPointerString(_SearchPlaceInfo_get_logId(_ptr));
  @core.override
  late final point = mapkit_geometry_point.PointImpl.fromPointer(
      _SearchPlaceInfo_get_point(_ptr));
  @core.override
  late final category = to_platform
      .toPlatformFromPointerString(_SearchPlaceInfo_get_category(_ptr));
  @core.override
  late final shortName = to_platform
      .toPlatformFromPointerString(_SearchPlaceInfo_get_shortName(_ptr));
  @core.override
  late final rating =
      to_platform.toPlatformFromPointerFloat(_SearchPlaceInfo_get_rating(_ptr));
  @core.override
  late final workingHours =
      search_working_hours.SearchWorkingHoursImpl.fromOptionalPtr(
          _SearchPlaceInfo_get_workingHours(_ptr));
  @core.override
  late final address = to_platform
      .toPlatformFromPointerString(_SearchPlaceInfo_get_address(_ptr));
  @core.override
  late final tag = to_platform.toVectorString(_SearchPlaceInfo_get_tag(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchPlaceInfo_free.cast());

  SearchPlaceInfoImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchPlaceInfo? obj) {
    return (obj as SearchPlaceInfoImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchPlaceInfo? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : SearchPlaceInfoImpl.fromNativePtr(ptr);
  }

  static SearchPlaceInfo? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchPlaceInfoImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchPlaceInfo_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchPlaceInfo_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _SearchPlaceInfo_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_uri = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_uri')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_photoUrlTemplate = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_photoUrlTemplate')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_logId = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_logId')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_point = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_point')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_category = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_category')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_shortName = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_shortName')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_rating = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_rating')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_workingHours = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_workingHours')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_address = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_address')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPlaceInfo_get_tag = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPlaceInfo_get_tag')
        .asFunction(isLeaf: true);
