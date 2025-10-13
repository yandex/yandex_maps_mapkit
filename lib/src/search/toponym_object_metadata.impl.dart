part of 'toponym_object_metadata.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchToponymObjectMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => SearchToponymObjectMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchToponymObjectMetadata')
final class SearchToponymObjectMetadataImpl
    extends SearchToponymObjectMetadata {
  SearchToponymObjectMetadataImpl(
      search_address.SearchAddress address,
      search_precision.SearchPrecision? precision,
      core.String? formerName,
      mapkit_geometry_point.Point balloonPoint,
      core.String? id)
      : this.fromNativePtr(_SearchToponymObjectMetadata_init(
            search_address.SearchAddressImpl.getNativePtr(address),
            search_precision.SearchPrecisionImpl.toPointer(precision),
            to_native.toNativePtrString(formerName),
            mapkit_geometry_point.PointImpl.toNative(balloonPoint),
            to_native.toNativePtrString(id)));

  @core.override
  late final address = search_address.SearchAddressImpl.fromNativePtr(
      _SearchToponymObjectMetadata_get_address(_ptr));
  @core.override
  late final precision = search_precision.SearchPrecisionImpl.fromPointer(
      _SearchToponymObjectMetadata_get_precision(_ptr));
  @core.override
  late final formerName = to_platform.toPlatformFromPointerString(
      _SearchToponymObjectMetadata_get_formerName(_ptr));
  @core.override
  late final balloonPoint = mapkit_geometry_point.PointImpl.fromNative(
      _SearchToponymObjectMetadata_get_balloonPoint(_ptr));
  @core.override
  late final id = to_platform
      .toPlatformFromPointerString(_SearchToponymObjectMetadata_get_id(_ptr));

  @core.override
  final _SearchToponymObjectMetadataFactory runtimeFactory =
      const _SearchToponymObjectMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchToponymObjectMetadata_free.cast());

  SearchToponymObjectMetadataImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchToponymObjectMetadata? obj) {
    return (obj as SearchToponymObjectMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchToponymObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchToponymObjectMetadataImpl.fromNativePtr(ptr);
  }

  static SearchToponymObjectMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchToponymObjectMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _SearchToponymObjectMetadataFactory
    extends struct_factory.StructFactory<SearchToponymObjectMetadata> {
  const _SearchToponymObjectMetadataFactory();

  @core.override
  SearchToponymObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchToponymObjectMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  SearchToponymObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchToponymObjectMetadataImpl.fromNativePtr(
        _SearchToponymObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchToponymObjectMetadata obj) {
    return _SearchToponymObjectMetadata_upcast(
        SearchToponymObjectMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchToponymObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _SearchToponymObjectMetadata_name =
    lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_name')
        .asFunction(isLeaf: true);

final _SearchToponymObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchToponymObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        mapkit_geometry_point.PointNative,
        ffi.Pointer<ffi.Void>) _SearchToponymObjectMetadata_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymObjectMetadata_get_address = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_get_address')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymObjectMetadata_get_precision = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_get_precision')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymObjectMetadata_get_formerName = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_get_formerName')
        .asFunction(isLeaf: true);
final mapkit_geometry_point.PointNative Function(
    ffi
        .Pointer<ffi.Void>) _SearchToponymObjectMetadata_get_balloonPoint = lib
    .library
    .lookup<
            ffi.NativeFunction<
                mapkit_geometry_point.PointNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchToponymObjectMetadata_get_balloonPoint')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchToponymObjectMetadata_get_id = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchToponymObjectMetadata_get_id')
        .asFunction(isLeaf: true);
