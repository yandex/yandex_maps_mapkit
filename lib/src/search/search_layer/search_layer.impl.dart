part of 'search_layer.dart';

final class _SearchResultListenerWrapper implements ffi.Finalizable {
  _SearchResultListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_SearchResultListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension SearchResultListenerImpl on SearchResultListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<SearchResultListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<SearchResultListener, _SearchResultListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(SearchResultListener obj) {
    final ptr = _SearchResultListener_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>(
            _SearchResultListener_onSearchStart),
        ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Int64)>(_SearchResultListener_onSearchSuccess),
        ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
                ffi.Int64)>(_SearchResultListener_onSearchError),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _SearchResultListener_onPresentedResultsUpdate),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _SearchResultListener_onAllResultsClear));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _SearchResultListenerWrapper(ptr);
    _SearchResultListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchResultListener? obj) {
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
        .int) _SearchResultListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_search_search_layer_SearchResultListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi
            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>,
        ffi.Pointer<
            ffi
            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>,
        ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Int64)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)
    _SearchResultListener_new = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Int64)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_search_search_layer_SearchResultListener_new')
        .asFunction(isLeaf: true);

final _SearchResultListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchResultListener_free');
void _SearchResultListener_onSearchStart(
    ffi.Pointer<ffi.Void> _ptr, core.int requestType) {
  final listener = SearchResultListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onSearchStart(
        search_search_layer_request_type.RequestTypeImpl.fromInt(requestType));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _SearchResultListener_onSearchSuccess(
    ffi.Pointer<ffi.Void> _ptr, core.int requestType) {
  final listener = SearchResultListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onSearchSuccess(
        search_search_layer_request_type.RequestTypeImpl.fromInt(requestType));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _SearchResultListener_onSearchError(ffi.Pointer<ffi.Void> _ptr,
    ffi.Pointer<ffi.Void> error, core.int requestType) {
  final listener = SearchResultListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onSearchError(runtime_error.ErrorImpl.fromNativePtr(error),
        search_search_layer_request_type.RequestTypeImpl.fromInt(requestType));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _SearchResultListener_onPresentedResultsUpdate(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener = SearchResultListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onPresentedResultsUpdate();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _SearchResultListener_onAllResultsClear(ffi.Pointer<ffi.Void> _ptr) {
  final listener = SearchResultListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onAllResultsClear();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

final class _PlacemarkListenerWrapper implements ffi.Finalizable {
  _PlacemarkListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer = ffi.NativeFinalizer(_PlacemarkListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension PlacemarkListenerImpl on PlacemarkListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<PlacemarkListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<PlacemarkListener, _PlacemarkListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(PlacemarkListener obj) {
    final ptr = _PlacemarkListener_new(ffi.Pointer.fromFunction<
            ffi.Bool Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
        _PlacemarkListener_onTap, false));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _PlacemarkListenerWrapper(ptr);
    _PlacemarkListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(PlacemarkListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(ffi.Pointer<ffi.Void>, core.int, core.int)
    _PlacemarkListenersetSendPort = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
            'yandex_flutter_search_search_layer_PlacemarkListener_setSendPort')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _PlacemarkListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<
                            ffi
                            .NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_search_search_layer_PlacemarkListener_new')
        .asFunction(isLeaf: true);

final _PlacemarkListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_PlacemarkListener_free');
core.bool _PlacemarkListener_onTap(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> searchResultItem) {
  final listener = PlacemarkListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return listener.onTap(search_search_layer_search_result_item
        .SearchResultItemImpl.fromNativePtr(searchResultItem));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

@bindings_annotations.WeakInterface('search.search_layer.SearchLayer')
@bindings_annotations.ContainerData(
    toNative: 'SearchLayerImpl.getNativePtr',
    toPlatform:
        '(val) => SearchLayerImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'SearchLayer')
class SearchLayerImpl implements SearchLayer, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchLayer_free.cast());

  /// @nodoc
  SearchLayerImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SearchLayerImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory SearchLayerImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SearchLayer? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as SearchLayerImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _SearchLayer_check(ptr);
  }

  @internal

  /// @nodoc
  static SearchLayer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchLayerImpl.fromNativePtr(ptr);
  }

  @core.override
  core.bool get visible {
    final result = _SearchLayer_get_visible(ptr);
    exception.checkCallResult();
    return result;
  }

  @core.override
  set visible(core.bool val) {
    _SearchLayer_set_visible(ptr, val);
    exception.checkCallResult();
  }

  void submitQuery(
    search_search_options.SearchOptions searchOptions, {
    required core.String query,
  }) {
    _SearchLayer_submitQuery(
      ptr,
      to_native.toNativeString(query),
      search_search_options.SearchOptionsImpl.toNative(searchOptions),
    );
    exception.checkCallResult();
  }

  void submitQueryWithGeometry(
    mapkit_geometry_geometry.Geometry geometry,
    search_search_options.SearchOptions searchOptions, {
    required core.String query,
  }) {
    _SearchLayer_submitQueryWithGeometry(
      ptr,
      to_native.toNativeString(query),
      mapkit_geometry_geometry.GeometryImpl.toNative(geometry),
      search_search_options.SearchOptionsImpl.toNative(searchOptions),
    );
    exception.checkCallResult();
  }

  void searchByUri(
    search_search_options.SearchOptions searchOptions, {
    required core.String uri,
  }) {
    _SearchLayer_searchByUri(
      ptr,
      to_native.toNativeString(uri),
      search_search_options.SearchOptionsImpl.toNative(searchOptions),
    );
    exception.checkCallResult();
  }

  void resubmit() {
    _SearchLayer_resubmit(ptr);
    exception.checkCallResult();
  }

  void enableRequestsOnMapMoves(core.bool enable) {
    _SearchLayer_enableRequestsOnMapMoves(ptr, enable);
    exception.checkCallResult();
  }

  void enableMapMoveOnSearchResponse(core.bool enable) {
    _SearchLayer_enableMapMoveOnSearchResponse(ptr, enable);
    exception.checkCallResult();
  }

  core.bool hasNextPage() {
    final result = _SearchLayer_hasNextPage(ptr);
    exception.checkCallResult();
    return result;
  }

  void fetchNextPage() {
    _SearchLayer_fetchNextPage(ptr);
    exception.checkCallResult();
  }

  void clear() {
    _SearchLayer_clear(ptr);
    exception.checkCallResult();
  }

  core.List<search_search_layer_search_result_item.SearchResultItem>
      getSearchResultsList() {
    final result = search_search_layer_search_result_item
            .SearchResultItemContainerExtension
        .toPlatformVector(_SearchLayer_getSearchResultsList(ptr));
    exception.checkCallResult();
    return result;
  }

  search_search_metadata.SearchMetadata? searchMetadata() {
    final result = search_search_metadata.SearchMetadataImpl.fromOptionalPtr(
        _SearchLayer_searchMetadata(ptr));
    exception.checkCallResult();
    return result;
  }

  void setSearchManager(search_search_manager.SearchManager searchManager) {
    _SearchLayer_setSearchManager(ptr,
        search_search_manager.SearchManagerImpl.getNativePtr(searchManager));
    exception.checkCallResult();
  }

  void addSearchResultListener(SearchResultListener searchResultListener) {
    _SearchLayer_addSearchResultListener(
        ptr, SearchResultListenerImpl.getNativePtr(searchResultListener));
    exception.checkCallResult();
  }

  void removeSearchResultListener(SearchResultListener searchResultListener) {
    _SearchLayer_removeSearchResultListener(
        ptr, SearchResultListenerImpl.getNativePtr(searchResultListener));
    exception.checkCallResult();
  }

  void addPlacemarkListener(PlacemarkListener placemarkListener) {
    _SearchLayer_addPlacemarkListener(
        ptr, PlacemarkListenerImpl.getNativePtr(placemarkListener));
    exception.checkCallResult();
  }

  void removePlacemarkListener(PlacemarkListener placemarkListener) {
    _SearchLayer_removePlacemarkListener(
        ptr, PlacemarkListenerImpl.getNativePtr(placemarkListener));
    exception.checkCallResult();
  }

  void setSortByDistance(mapkit_geometry_geometry.Geometry origin) {
    _SearchLayer_setSortByDistance(
        ptr, mapkit_geometry_geometry.GeometryImpl.toNative(origin));
    exception.checkCallResult();
  }

  void setPolylinePosition(mapkit_geometry_geometry.PolylinePosition position) {
    _SearchLayer_setPolylinePosition(
        ptr, mapkit_geometry_geometry.PolylinePositionImpl.toNative(position));
    exception.checkCallResult();
  }

  void resetSort() {
    _SearchLayer_resetSort(ptr);
    exception.checkCallResult();
  }

  void setFilterCollection(
      search_filter_collection.SearchFilterCollection? filters) {
    _SearchLayer_setFilterCollection(
        ptr,
        search_filter_collection.SearchFilterCollectionImpl.getNativePtr(
            filters));
    exception.checkCallResult();
  }

  void setFilters(
      core.List<search_business_filter.SearchBusinessFilter> filters) {
    _SearchLayer_setFilters(
        ptr,
        search_business_filter.SearchBusinessFilterContainerExtension
            .toNativeVector(filters));
    exception.checkCallResult();
  }

  void setAssetsProvider(
      search_search_layer_assets_provider.AssetsProvider provider) {
    _SearchLayer_setAssetsProvider(
        ptr,
        search_search_layer_assets_provider.AssetsProviderImpl.getNativePtr(
            provider));
    exception.checkCallResult();
  }

  void resetAssetsProvider() {
    _SearchLayer_resetAssetsProvider(ptr);
    exception.checkCallResult();
  }

  void selectPlacemark(core.String geoObjectId) {
    _SearchLayer_selectPlacemark(ptr, to_native.toNativeString(geoObjectId));
    exception.checkCallResult();
  }

  core.String? selectedPlacemarkId() {
    final result = to_platform
        .toPlatformFromPointerString(_SearchLayer_selectedPlacemarkId(ptr));
    exception.checkCallResult();
    return result;
  }

  void deselectPlacemark() {
    _SearchLayer_deselectPlacemark(ptr);
    exception.checkCallResult();
  }

  void forceUpdateIcon(
    search_search_layer_assets_provider.PlacemarkIconType iconType,
    image_provider.ImageProvider image,
    mapkit_map_icon_style.IconStyle style, {
    required core.String geoObjectId,
  }) {
    _SearchLayer_forceUpdateIcon(
      ptr,
      to_native.toNativeString(geoObjectId),
      search_search_layer_assets_provider.PlacemarkIconTypeImpl.toInt(iconType),
      to_native.toNativeImageProvider(image),
      mapkit_map_icon_style.IconStyleImpl.toNative(style),
    );
    exception.checkCallResult();
  }

  void forceUpdateMapObjects() {
    _SearchLayer_forceUpdateMapObjects(ptr);
    exception.checkCallResult();
  }

  void obtainAdIcons(core.bool enable) {
    _SearchLayer_obtainAdIcons(ptr, enable);
    exception.checkCallResult();
  }

  void setInsets({
    required core.int top,
    required core.int left,
    required core.int bottom,
    required core.int right,
  }) {
    _SearchLayer_setInsets(ptr, top, left, bottom, right);
    exception.checkCallResult();
  }
}

final _SearchLayer_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _SearchLayer_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_check')
    .asFunction(isLeaf: true);

final core.bool Function(ffi.Pointer<ffi.Void>) _SearchLayer_get_visible = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_get_visible')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.bool) _SearchLayer_set_visible =
    lib
        .library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
            'yandex_flutter_search_search_layer_SearchLayer_set_visible')
        .asFunction();

final void Function(ffi.Pointer<ffi.Void>, native_types.NativeString,
        search_search_options.SearchOptionsNative) _SearchLayer_submitQuery =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        search_search_options.SearchOptionsNative)>>(
            'yandex_flutter_search_search_layer_SearchLayer_submitQuery')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    native_types.NativeString,
    mapkit_geometry_geometry.GeometryNative,
    search_search_options
        .SearchOptionsNative) _SearchLayer_submitQueryWithGeometry = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>,
                    native_types.NativeString,
                    mapkit_geometry_geometry.GeometryNative,
                    search_search_options.SearchOptionsNative)>>(
        'yandex_flutter_search_search_layer_SearchLayer_submitQueryWithGeometry')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeString,
        search_search_options.SearchOptionsNative) _SearchLayer_searchByUri =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        search_search_options.SearchOptionsNative)>>(
            'yandex_flutter_search_search_layer_SearchLayer_searchByUri')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _SearchLayer_resubmit = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_resubmit')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _SearchLayer_enableRequestsOnMapMoves = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_search_search_layer_SearchLayer_enableRequestsOnMapMoves')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _SearchLayer_enableMapMoveOnSearchResponse = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_search_search_layer_SearchLayer_enableMapMoveOnSearchResponse')
    .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _SearchLayer_hasNextPage = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_hasNextPage')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _SearchLayer_fetchNextPage = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_fetchNextPage')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _SearchLayer_clear = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_clear')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchLayer_getSearchResultsList = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_getSearchResultsList')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchLayer_searchMetadata = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchLayer_searchMetadata')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchLayer_setSearchManager = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchLayer_setSearchManager')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _SearchLayer_addSearchResultListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_addSearchResultListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _SearchLayer_removeSearchResultListener = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_removeSearchResultListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _SearchLayer_addPlacemarkListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_addPlacemarkListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _SearchLayer_removePlacemarkListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_removePlacemarkListener')
    .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_geometry.GeometryNative)
    _SearchLayer_setSortByDistance = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.GeometryNative)>>(
            'yandex_flutter_search_search_layer_SearchLayer_setSortByDistance')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    mapkit_geometry_geometry
        .PolylinePositionNative) _SearchLayer_setPolylinePosition = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>,
                    mapkit_geometry_geometry.PolylinePositionNative)>>(
        'yandex_flutter_search_search_layer_SearchLayer_setPolylinePosition')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _SearchLayer_resetSort = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_resetSort')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _SearchLayer_setFilterCollection = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_setFilterCollection')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchLayer_setFilters = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchLayer_setFilters')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchLayer_setAssetsProvider = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_search_layer_SearchLayer_setAssetsProvider')
        .asFunction();
final void Function(
    ffi
        .Pointer<ffi.Void>) _SearchLayer_resetAssetsProvider = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_resetAssetsProvider')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeString)
    _SearchLayer_selectPlacemark = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeString)>>(
            'yandex_flutter_search_search_layer_SearchLayer_selectPlacemark')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchLayer_selectedPlacemarkId = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_selectedPlacemarkId')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _SearchLayer_deselectPlacemark = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_deselectPlacemark')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeString, core.int,
        ffi.Pointer<ffi.Void>, mapkit_map_icon_style.IconStyleNative)
    _SearchLayer_forceUpdateIcon = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>,
                        mapkit_map_icon_style.IconStyleNative)>>(
            'yandex_flutter_search_search_layer_SearchLayer_forceUpdateIcon')
        .asFunction();
final void Function(
    ffi
        .Pointer<ffi.Void>) _SearchLayer_forceUpdateMapObjects = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_search_layer_SearchLayer_forceUpdateMapObjects')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.bool)
    _SearchLayer_obtainAdIcons = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
            'yandex_flutter_search_search_layer_SearchLayer_obtainAdIcons')
        .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, core.int, core.int, core.int, core.int)
    _SearchLayer_setInsets = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint32,
                        ffi.Uint32, ffi.Uint32, ffi.Uint32)>>(
            'yandex_flutter_search_search_layer_SearchLayer_setInsets')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _SearchLayer_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_search_search_layer_SearchLayer_set_')
    .asFunction(isLeaf: true);
