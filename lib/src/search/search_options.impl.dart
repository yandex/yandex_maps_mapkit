part of 'search_options.dart';

final class SearchOptionsNative extends ffi.Struct {
  @ffi.Int64()
  external core.int searchTypes;
  external ffi.Pointer<ffi.Void> resultPageSize;
  @ffi.Int64()
  external core.int snippets;
  external ffi.Pointer<ffi.Void> userPosition;
  external ffi.Pointer<ffi.Void> origin;
  @ffi.Bool()
  external core.bool geometry;
  @ffi.Bool()
  external core.bool disableSpellingCorrection;
  external ffi.Pointer<ffi.Void> filters;
}

final SearchOptionsNative Function(
        core.int,
        ffi.Pointer<ffi.Void>,
        core.int,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        core.bool,
        core.bool,
        ffi.Pointer<ffi.Void>) _SearchOptionsNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchOptionsNative Function(
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>,
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchOptions_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchOptionsImpl.toPointer',
    toPlatform: '(val) => SearchOptionsImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchOptions')
extension SearchOptionsImpl on SearchOptions {
  static SearchOptions fromNative(SearchOptionsNative native) {
    return SearchOptions(
        searchTypes:
            search_data_types.SearchTypeImpl.fromInt(native.searchTypes),
        resultPageSize:
            to_platform.toPlatformFromPointerUint32(native.resultPageSize),
        snippets: search_data_types.SearchSnippetImpl.fromInt(native.snippets),
        userPosition:
            mapkit_geometry_point.PointImpl.fromPointer(native.userPosition),
        origin: to_platform.toPlatformFromPointerString(native.origin),
        geometry: native.geometry,
        disableSpellingCorrection: native.disableSpellingCorrection,
        filters:
            search_filter_collection.SearchFilterCollectionImpl.fromOptionalPtr(
                native.filters));
  }

  static SearchOptionsNative toNative(SearchOptions obj) {
    return _SearchOptionsNativeInit(
        search_data_types.SearchTypeImpl.toInt(obj.searchTypes),
        to_native.toNativePtrUint32(obj.resultPageSize),
        search_data_types.SearchSnippetImpl.toInt(obj.snippets),
        mapkit_geometry_point.PointImpl.toPointer(obj.userPosition),
        to_native.toNativePtrString(obj.origin),
        obj.geometry,
        obj.disableSpellingCorrection,
        search_filter_collection.SearchFilterCollectionImpl.getNativePtr(
            obj.filters));
  }

  static SearchOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        SearchOptionsImpl.fromNative(ptr.cast<SearchOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchOptionsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
