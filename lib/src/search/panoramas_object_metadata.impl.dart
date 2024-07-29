part of 'panoramas_object_metadata.dart';

final class SearchPanoramaNative extends ffi.Struct {
  external native_types.NativeString id;
  external mapkit_geometry_direction.DirectionNative direction;
  external mapkit_geometry_span.SpanNative span;
  external mapkit_geometry_point.PointNative point;
}

final SearchPanoramaNative Function(
  native_types.NativeString,
  mapkit_geometry_direction.DirectionNative,
  mapkit_geometry_span.SpanNative,
  mapkit_geometry_point.PointNative,
) _SearchPanoramaNativeInit = lib.library
    .lookup<
        ffi.NativeFunction<
            SearchPanoramaNative Function(
              native_types.NativeString,
              mapkit_geometry_direction.DirectionNative,
              mapkit_geometry_span.SpanNative,
              mapkit_geometry_point.PointNative,
            )>>('yandex_flutter_search_SearchPanorama_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchPanoramaImpl.toPointer',
    toPlatform: '(val) => SearchPanoramaImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchPanorama')
extension SearchPanoramaImpl on SearchPanorama {
  static SearchPanorama fromNative(SearchPanoramaNative native) {
    return SearchPanorama(
      id: to_platform.toPlatformString(native.id),
      mapkit_geometry_direction.DirectionImpl.fromNative(native.direction),
      mapkit_geometry_span.SpanImpl.fromNative(native.span),
      mapkit_geometry_point.PointImpl.fromNative(native.point),
    );
  }

  static SearchPanoramaNative toNative(SearchPanorama obj) {
    return _SearchPanoramaNativeInit(
      to_native.toNativeString(obj.id),
      mapkit_geometry_direction.DirectionImpl.toNative(obj.direction),
      mapkit_geometry_span.SpanImpl.toNative(obj.span),
      mapkit_geometry_point.PointImpl.toNative(obj.point),
    );
  }

  static SearchPanorama? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        SearchPanoramaImpl.fromNative(ptr.cast<SearchPanoramaNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchPanorama? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchPanoramaNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SearchPanoramasObjectMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => SearchPanoramasObjectMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchPanoramasObjectMetadata')
final class SearchPanoramasObjectMetadataImpl
    implements SearchPanoramasObjectMetadata {
  SearchPanoramasObjectMetadataImpl(core.List<SearchPanorama> panoramas)
      : this.fromNativePtr(_SearchPanoramasObjectMetadata_init(
            SearchPanoramaContainerExtension.toNativeVector(panoramas)));

  @core.override
  late final panoramas = SearchPanoramaContainerExtension.toPlatformVector(
      _SearchPanoramasObjectMetadata_get_panoramas(_ptr));

  @core.override
  final _SearchPanoramasObjectMetadataFactory runtimeFactory =
      const _SearchPanoramasObjectMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchPanoramasObjectMetadata_free.cast());

  SearchPanoramasObjectMetadataImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchPanoramasObjectMetadata? obj) {
    return (obj as SearchPanoramasObjectMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchPanoramasObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchPanoramasObjectMetadataImpl.fromNativePtr(ptr);
  }

  static SearchPanoramasObjectMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchPanoramasObjectMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _SearchPanoramasObjectMetadataFactory
    extends struct_factory.StructFactory<SearchPanoramasObjectMetadata> {
  const _SearchPanoramasObjectMetadataFactory();

  @core.override
  SearchPanoramasObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchPanoramasObjectMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  SearchPanoramasObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchPanoramasObjectMetadataImpl.fromNativePtr(
        _SearchPanoramasObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchPanoramasObjectMetadata obj) {
    return _SearchPanoramasObjectMetadata_upcast(
        SearchPanoramasObjectMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchPanoramasObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPanoramasObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPanoramasObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPanoramasObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPanoramasObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _SearchPanoramasObjectMetadata_name =
    lib
        .library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchPanoramasObjectMetadata_name')
        .asFunction(isLeaf: true);

final _SearchPanoramasObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchPanoramasObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPanoramasObjectMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPanoramasObjectMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchPanoramasObjectMetadata_get_panoramas = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPanoramasObjectMetadata_get_panoramas')
        .asFunction(isLeaf: true);
