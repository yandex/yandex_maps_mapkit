part of 'toponym_result_metadata.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchToponymResultMetadataImpl.toPointer',
    toPlatform:
        '(val) => SearchToponymResultMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchToponymResultMetadata')
final class SearchToponymResultMetadataImpl
    implements SearchToponymResultMetadata {
  SearchToponymResultMetadataImpl(
      core.int found,
      SearchToponymResultMetadataResponseInfo? responseInfo,
      mapkit_geometry_point.Point? reversePoint)
      : this.fromNativePtr(_SearchToponymResultMetadata_init(
            found,
            SearchToponymResultMetadataResponseInfoImpl.toPointer(responseInfo),
            mapkit_geometry_point.PointImpl.toPointer(reversePoint)));

  @core.override
  late final found = _SearchToponymResultMetadata_get_found(_ptr);
  @core.override
  late final responseInfo =
      SearchToponymResultMetadataResponseInfoImpl.fromPointer(
          _SearchToponymResultMetadata_get_responseInfo(_ptr));
  @core.override
  late final reversePoint = mapkit_geometry_point.PointImpl.fromPointer(
      _SearchToponymResultMetadata_get_reversePoint(_ptr));

  @core.override
  final _SearchToponymResultMetadataFactory runtimeFactory =
      const _SearchToponymResultMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchToponymResultMetadata_free.cast());

  SearchToponymResultMetadataImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchToponymResultMetadata? obj) {
    return (obj as SearchToponymResultMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchToponymResultMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchToponymResultMetadataImpl.fromNativePtr(ptr);
  }

  static SearchToponymResultMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchToponymResultMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchToponymResultMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchToponymResultMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

class _SearchToponymResultMetadataFactory
    extends struct_factory.StructFactory<SearchToponymResultMetadata> {
  const _SearchToponymResultMetadataFactory();

  @core.override
  SearchToponymResultMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchToponymResultMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  SearchToponymResultMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchToponymResultMetadataImpl.fromNativePtr(
        _SearchToponymResultMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchToponymResultMetadata obj) {
    return _SearchToponymResultMetadata_upcast(
        SearchToponymResultMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchToponymResultMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymResultMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymResultMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymResultMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymResultMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _SearchToponymResultMetadata_name =
    lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchToponymResultMetadata_name')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymResultMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymResultMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchToponymResultMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchToponymResultMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        core.int, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchToponymResultMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Int,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymResultMetadata_init')
        .asFunction(isLeaf: true);

final core.int Function(ffi.Pointer<ffi.Void>)
    _SearchToponymResultMetadata_get_found = lib.library
        .lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymResultMetadata_get_found')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchToponymResultMetadata_get_responseInfo = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchToponymResultMetadata_get_responseInfo')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchToponymResultMetadata_get_reversePoint = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchToponymResultMetadata_get_reversePoint')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchToponymResultMetadataSearchModeImpl.toPointer',
    toPlatform:
        '(val) => SearchToponymResultMetadataSearchModeImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchToponymResultMetadataSearchMode')
extension SearchToponymResultMetadataSearchModeImpl
    on SearchToponymResultMetadataSearchMode {
  static core.int toInt(SearchToponymResultMetadataSearchMode e) {
    return e.index;
  }

  static SearchToponymResultMetadataSearchMode fromInt(core.int val) {
    return SearchToponymResultMetadataSearchMode.values[val];
  }

  static SearchToponymResultMetadataSearchMode? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(
      SearchToponymResultMetadataSearchMode? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

final class SearchToponymResultMetadataResponseInfoNative extends ffi.Struct {
  @ffi.Int64()
  external core.int mode;
  external ffi.Pointer<ffi.Void> accuracy;
}

final SearchToponymResultMetadataResponseInfoNative Function(
    core.int,
    ffi.Pointer<
        ffi.Void>) _SearchToponymResultMetadataResponseInfoNativeInit = lib
    .library
    .lookup<
            ffi.NativeFunction<
                SearchToponymResultMetadataResponseInfoNative Function(
                    ffi.Int64, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_ToponymResultMetadata_SearchToponymResultMetadataResponseInfo_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchToponymResultMetadataResponseInfoImpl.toPointer',
    toPlatform:
        '(val) => SearchToponymResultMetadataResponseInfoImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchToponymResultMetadataResponseInfo')
extension SearchToponymResultMetadataResponseInfoImpl
    on SearchToponymResultMetadataResponseInfo {
  static SearchToponymResultMetadataResponseInfo fromNative(
      SearchToponymResultMetadataResponseInfoNative native) {
    return SearchToponymResultMetadataResponseInfo(
        SearchToponymResultMetadataSearchModeImpl.fromInt(native.mode),
        accuracy: to_platform.toPlatformFromPointerDouble(native.accuracy));
  }

  static SearchToponymResultMetadataResponseInfoNative toNative(
      SearchToponymResultMetadataResponseInfo obj) {
    return _SearchToponymResultMetadataResponseInfoNativeInit(
        SearchToponymResultMetadataSearchModeImpl.toInt(obj.mode),
        to_native.toNativePtrDouble(obj.accuracy));
  }

  static SearchToponymResultMetadataResponseInfo? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchToponymResultMetadataResponseInfoImpl.fromNative(
        ptr.cast<SearchToponymResultMetadataResponseInfoNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      SearchToponymResultMetadataResponseInfo? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchToponymResultMetadataResponseInfoNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
