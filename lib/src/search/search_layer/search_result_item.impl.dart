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
    final result = to_platform.toPlatformString(_SearchResultItem_get_id(ptr));
    return result;
  }

  @core.override
  core.String get name {
    final result =
        to_platform.toPlatformString(_SearchResultItem_get_name(ptr));
    return result;
  }

  @core.override
  core.String? get categoryClass {
    final result = to_platform
        .toPlatformFromPointerString(_SearchResultItem_get_categoryClass(ptr));
    return result;
  }

  @core.override
  mapkit_geo_object.GeoObject get geoObject {
    final result = mapkit_geo_object.GeoObjectImpl.fromNativePtr(
        _SearchResultItem_get_geoObject(ptr));
    return result;
  }

  @core.override
  mapkit_geometry_point.Point get point {
    final result = mapkit_geometry_point.PointImpl.fromNative(
        _SearchResultItem_get_point(ptr));
    return result;
  }

  core.bool hasDetails() {
    final result = _SearchResultItem_hasDetails(ptr);
    return result;
  }

  core.List<search_subtitle.SearchSubtitleItem> details() {
    final result =
        search_subtitle.SearchSubtitleItemContainerExtension.toPlatformVector(
            _SearchResultItem_details(ptr));
    return result;
  }

  core.bool isCollection() {
    final result = _SearchResultItem_isCollection(ptr);
    return result;
  }

  core.bool isClosed() {
    final result = _SearchResultItem_isClosed(ptr);
    return result;
  }

  core.bool isOffline() {
    final result = _SearchResultItem_isOffline(ptr);
    return result;
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
final void Function(ffi.Pointer<ffi.Void>, core.int) _SearchResultItem_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_search_search_layer_SearchResultItem_set_')
    .asFunction(isLeaf: true);
