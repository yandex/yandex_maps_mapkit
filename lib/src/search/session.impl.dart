part of 'session.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchSessionImpl.getNativePtr',
    toPlatform:
        '(val) => SearchSessionImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'SearchSession')
class SearchSessionImpl implements SearchSession, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchSession_free.cast());

  /// @nodoc
  SearchSessionImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SearchSessionImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SearchSession? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as SearchSessionImpl).ptr;
  }

  @internal

  /// @nodoc
  static SearchSession? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchSessionImpl.fromNativePtr(ptr);
  }

  void cancel() {
    _Session_cancel(ptr);
  }

  void retry(SearchSessionSearchListener searchListener) {
    _Session_retry(
        ptr, SearchSessionSearchListenerImpl.getNativePtr(searchListener));
  }

  core.bool hasNextPage() {
    return _Session_hasNextPage(ptr);
  }

  void fetchNextPage(SearchSessionSearchListener searchListener) {
    _Session_fetchNextPage(
        ptr, SearchSessionSearchListenerImpl.getNativePtr(searchListener));
  }

  void setFilters(
      core.List<search_business_filter.SearchBusinessFilter> filters) {
    _Session_setFilters(
        ptr,
        search_business_filter.SearchBusinessFilterContainerExtension
            .toNativeVector(filters));
  }

  void setSortByDistance(mapkit_geometry_geometry.Geometry origin) {
    _Session_setSortByDistance(
        ptr, mapkit_geometry_geometry.GeometryImpl.toNative(origin));
  }

  void resetSort() {
    _Session_resetSort(ptr);
  }

  void setSearchArea(mapkit_geometry_geometry.Geometry area) {
    _Session_setSearchArea(
        ptr, mapkit_geometry_geometry.GeometryImpl.toNative(area));
  }

  void setSearchOptions(search_search_options.SearchOptions searchOptions) {
    _Session_setSearchOptions(
        ptr, search_search_options.SearchOptionsImpl.toNative(searchOptions));
  }

  void resubmit(SearchSessionSearchListener searchListener) {
    _Session_resubmit(
        ptr, SearchSessionSearchListenerImpl.getNativePtr(searchListener));
  }
}

final _SearchSession_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchSession_free');

final void Function(ffi.Pointer<ffi.Void>) _Session_cancel = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchSession_cancel')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Session_retry = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSession_retry')
        .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _Session_hasNextPage = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchSession_hasNextPage')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Session_fetchNextPage = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSession_fetchNextPage')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Session_setFilters = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSession_setFilters')
        .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_geometry.GeometryNative)
    _Session_setSortByDistance = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.GeometryNative)>>(
            'yandex_flutter_search_SearchSession_setSortByDistance')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Session_resetSort = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchSession_resetSort')
    .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_geometry.GeometryNative)
    _Session_setSearchArea = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.GeometryNative)>>(
            'yandex_flutter_search_SearchSession_setSearchArea')
        .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, search_search_options.SearchOptionsNative)
    _Session_setSearchOptions = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        search_search_options.SearchOptionsNative)>>(
            'yandex_flutter_search_SearchSession_setSearchOptions')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Session_resubmit = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSession_resubmit')
        .asFunction();

final class SearchSessionSearchListenerImpl
    implements SearchSessionSearchListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, SearchSessionSearchListener>{};

  SearchSessionSearchListenerImpl(
      {required void Function(search_response.SearchResponse response)
          onSearchResponse,
      required void Function(runtime_error.Error error) onSearchError})
      : _ptr = _SearchSessionSearchListener_new(
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _SearchSessionSearchListener_onSearchResponse),
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _SearchSessionSearchListener_onSearchError)),
        _onSearchResponse = onSearchResponse,
        _onSearchError = onSearchError {
    _pointerToListener[_ptr] = this;
    _SearchSessionSearchListenersetSendPort(
        _ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());
  }

  @core.override
  void onSearchResponse(search_response.SearchResponse response) =>
      _onSearchResponse(response);
  @core.override
  void onSearchError(runtime_error.Error error) => _onSearchError(error);

  final ffi.Pointer<ffi.Void> _ptr;

  final void Function(search_response.SearchResponse) _onSearchResponse;
  final void Function(runtime_error.Error) _onSearchError;

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SearchSessionSearchListener? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as SearchSessionSearchListenerImpl)._ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _SearchSessionSearchListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_search_Session_SearchSessionSearchListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _SearchSessionSearchListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_search_Session_SearchSessionSearchListener_new')
        .asFunction(isLeaf: true);

void _SearchSessionSearchListener_onSearchResponse(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> response) {
  final listener = SearchSessionSearchListenerImpl._pointerToListener[_ptr]!;

  try {
    listener.onSearchResponse(
        search_response.SearchResponseImpl.fromNativePtr(response));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

void _SearchSessionSearchListener_onSearchError(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> error) {
  final listener = SearchSessionSearchListenerImpl._pointerToListener[_ptr]!;

  try {
    listener.onSearchError(runtime_error.ErrorImpl.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}
