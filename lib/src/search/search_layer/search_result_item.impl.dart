part of 'search_result_item.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchResultItemImpl.getNativePtr',
    toPlatform:
        '(val) => SearchResultItemImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'SearchResultItem')
class SearchResultItemImpl implements SearchResultItem, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchResultItem_free.cast());

  /// @nodoc
  SearchResultItemImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SearchResultItemImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SearchResultItem? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as SearchResultItemImpl).ptr;
  }

  @internal

  /// @nodoc
  static SearchResultItem? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchResultItemImpl.fromNativePtr(ptr);
  }

  @core.override
  core.String get id {
    return to_platform.toPlatformString(_SearchResultItem_get_id(ptr));
  }

  @core.override
  core.String get name {
    return to_platform.toPlatformString(_SearchResultItem_get_name(ptr));
  }

  @core.override
  core.String? get categoryClass {
    return to_platform
        .toPlatformFromPointerString(_SearchResultItem_get_categoryClass(ptr));
  }

  @core.override
  mapkit_geo_object.GeoObject get geoObject {
    return mapkit_geo_object.GeoObjectImpl.fromNativePtr(
        _SearchResultItem_get_geoObject(ptr));
  }

  @core.override
  mapkit_geometry_point.Point get point {
    return mapkit_geometry_point.PointImpl.fromNative(
        _SearchResultItem_get_point(ptr));
  }

  core.bool hasDetails() {
    return _SearchResultItem_hasDetails(ptr);
  }

  core.List<search_subtitle.SearchSubtitleItem> details() {
    return search_subtitle.SearchSubtitleItemContainerExtension
        .toPlatformVector(_SearchResultItem_details(ptr));
  }

  core.bool isCollection() {
    return _SearchResultItem_isCollection(ptr);
  }

  core.bool isClosed() {
    return _SearchResultItem_isClosed(ptr);
  }

  core.bool isOffline() {
    return _SearchResultItem_isOffline(ptr);
  }
}

final _SearchResultItem_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchResultItem_free');

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchResultItem_get_id = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_get_id')
        .asFunction();

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchResultItem_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_get_name')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchResultItem_get_categoryClass = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchResultItem_get_categoryClass')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchResultItem_get_geoObject = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_get_geoObject')
        .asFunction();

final mapkit_geometry_point.PointNative Function(ffi.Pointer<ffi.Void>)
    _SearchResultItem_get_point = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_point.PointNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_get_point')
        .asFunction();

final core.bool Function(ffi.Pointer<ffi.Void>) _SearchResultItem_hasDetails =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_hasDetails')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchResultItem_details = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_details')
        .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _SearchResultItem_isCollection =
    lib
        .library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_isCollection')
        .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _SearchResultItem_isClosed = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchResultItem_isClosed')
    .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _SearchResultItem_isOffline =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchResultItem_isOffline')
        .asFunction();
