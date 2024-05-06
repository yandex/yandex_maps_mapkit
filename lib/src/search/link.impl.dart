part of 'link.dart';

final class SearchLinkNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> aref;
  external mapkit_attribution.AttributionLinkNative link;
  external ffi.Pointer<ffi.Void> tag;
}

final SearchLinkNative Function(ffi.Pointer<ffi.Void>,
        mapkit_attribution.AttributionLinkNative, ffi.Pointer<ffi.Void>)
    _SearchLinkNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchLinkNative Function(
                        ffi.Pointer<ffi.Void>,
                        mapkit_attribution.AttributionLinkNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchLink_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchLinkImpl.toPointer',
    toPlatform: '(val) => SearchLinkImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchLink')
extension SearchLinkImpl on SearchLink {
  static SearchLink fromNative(SearchLinkNative native) {
    return SearchLink(
        aref: to_platform.toPlatformFromPointerString(native.aref),
        mapkit_attribution.AttributionLinkImpl.fromNative(native.link),
        tag: to_platform.toPlatformFromPointerString(native.tag));
  }

  static SearchLinkNative toNative(SearchLink obj) {
    return _SearchLinkNativeInit(
        to_native.toNativePtrString(obj.aref),
        mapkit_attribution.AttributionLinkImpl.toNative(obj.link),
        to_native.toNativePtrString(obj.tag));
  }

  static SearchLink? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchLinkImpl.fromNative(ptr.cast<SearchLinkNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchLink? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchLinkNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
