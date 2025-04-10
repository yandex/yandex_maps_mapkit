part of 'search_metadata.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchMetadataImpl.getNativePtr',
    toPlatform: '(val) => SearchMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchMetadata')
final class SearchMetadataImpl extends SearchMetadata {
  SearchMetadataImpl(
      core.int found,
      search_display_type.SearchDisplayType displayType,
      mapkit_geometry_geometry.BoundingBox? boundingBox,
      search_sort.SearchSort? sort,
      mapkit_geo_object.GeoObject? toponym,
      search_toponym_result_metadata.SearchToponymResultMetadata?
          toponymResultMetadata,
      search_business_result_metadata.SearchBusinessResultMetadata?
          businessResultMetadata,
      core.String reqid,
      core.String context,
      core.String requestText,
      core.String? correctedRequestText,
      mapkit_geometry_geometry.BoundingBox? requestBoundingBox)
      : this.fromNativePtr(_SearchMetadata_init(
            found,
            search_display_type.SearchDisplayTypeImpl.toInt(displayType),
            mapkit_geometry_geometry.BoundingBoxImpl.toPointer(boundingBox),
            search_sort.SearchSortImpl.toPointer(sort),
            mapkit_geo_object.GeoObjectImpl.getNativePtr(toponym),
            search_toponym_result_metadata.SearchToponymResultMetadataImpl
                .getNativePtr(toponymResultMetadata),
            search_business_result_metadata.SearchBusinessResultMetadataImpl
                .getNativePtr(businessResultMetadata),
            to_native.toNativeString(reqid),
            to_native.toNativeString(context),
            to_native.toNativeString(requestText),
            to_native.toNativePtrString(correctedRequestText),
            mapkit_geometry_geometry.BoundingBoxImpl.toPointer(
                requestBoundingBox)));

  @core.override
  late final found = _SearchMetadata_get_found(_ptr);
  @core.override
  late final displayType = search_display_type.SearchDisplayTypeImpl.fromInt(
      _SearchMetadata_get_displayType(_ptr));
  @core.override
  late final boundingBox = mapkit_geometry_geometry.BoundingBoxImpl.fromPointer(
      _SearchMetadata_get_boundingBox(_ptr));
  @core.override
  late final sort =
      search_sort.SearchSortImpl.fromPointer(_SearchMetadata_get_sort(_ptr));
  @core.override
  late final toponym = mapkit_geo_object.GeoObjectImpl.fromOptionalPtr(
      _SearchMetadata_get_toponym(_ptr));
  @core.override
  late final toponymResultMetadata =
      search_toponym_result_metadata.SearchToponymResultMetadataImpl
          .fromOptionalPtr(_SearchMetadata_get_toponymResultMetadata(_ptr));
  @core.override
  late final businessResultMetadata =
      search_business_result_metadata.SearchBusinessResultMetadataImpl
          .fromOptionalPtr(_SearchMetadata_get_businessResultMetadata(_ptr));
  @core.override
  late final reqid =
      to_platform.toPlatformString(_SearchMetadata_get_reqid(_ptr));
  @core.override
  late final context =
      to_platform.toPlatformString(_SearchMetadata_get_context(_ptr));
  @core.override
  late final requestText =
      to_platform.toPlatformString(_SearchMetadata_get_requestText(_ptr));
  @core.override
  late final correctedRequestText = to_platform.toPlatformFromPointerString(
      _SearchMetadata_get_correctedRequestText(_ptr));
  @core.override
  late final requestBoundingBox =
      mapkit_geometry_geometry.BoundingBoxImpl.fromPointer(
          _SearchMetadata_get_requestBoundingBox(_ptr));

  @core.override
  final _SearchMetadataFactory runtimeFactory = const _SearchMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchMetadata_free.cast());

  SearchMetadataImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchMetadata? obj) {
    return (obj as SearchMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : SearchMetadataImpl.fromNativePtr(ptr);
  }

  static SearchMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _SearchMetadataFactory
    extends struct_factory.StructFactory<SearchMetadata> {
  const _SearchMetadataFactory();

  @core.override
  SearchMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  SearchMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchMetadataImpl.fromNativePtr(_SearchMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchMetadata obj) {
    return _SearchMetadata_upcast(SearchMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _SearchMetadata_name = lib.library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_search_SearchMetadata_name')
    .asFunction(isLeaf: true);

final _SearchMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        core.int,
        core.int,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        native_types.NativeString,
        native_types.NativeString,
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _SearchMetadata_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Int,
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        native_types.NativeString,
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_init')
        .asFunction(isLeaf: true);

final core.int Function(ffi.Pointer<ffi.Void>) _SearchMetadata_get_found = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchMetadata_get_found')
    .asFunction(isLeaf: true);
final core.int Function(ffi.Pointer<ffi.Void>) _SearchMetadata_get_displayType =
    lib
        .library
        .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_displayType')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_boundingBox = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_boundingBox')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_sort = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_sort')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_toponym = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_toponym')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_toponymResultMetadata = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_toponymResultMetadata')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_businessResultMetadata = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_businessResultMetadata')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_reqid = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_reqid')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_context = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_context')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_requestText = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_requestText')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_correctedRequestText = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_correctedRequestText')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchMetadata_get_requestBoundingBox = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchMetadata_get_requestBoundingBox')
        .asFunction(isLeaf: true);
