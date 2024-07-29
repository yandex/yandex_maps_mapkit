part of 'fuel_object_metadata.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchFuelTypeImpl.getNativePtr',
    toPlatform: '(val) => SearchFuelTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchFuelType')
final class SearchFuelTypeImpl implements SearchFuelType {
  SearchFuelTypeImpl(core.String? name, mapkit_money.TaxiMoney? price)
      : this.fromNativePtr(_SearchFuelType_init(
            to_native.toNativePtrString(name),
            mapkit_money.TaxiMoneyImpl.toPointer(price)));

  @core.override
  late final name =
      to_platform.toPlatformFromPointerString(_SearchFuelType_get_name(_ptr));
  @core.override
  late final price =
      mapkit_money.TaxiMoneyImpl.fromPointer(_SearchFuelType_get_price(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchFuelType_free.cast());

  SearchFuelTypeImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchFuelType? obj) {
    return (obj as SearchFuelTypeImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchFuelType? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : SearchFuelTypeImpl.fromNativePtr(ptr);
  }

  static SearchFuelType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchFuelTypeImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchFuelType_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchFuelType_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>) _SearchFuelType_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelType_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelType_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelType_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelType_get_price = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelType_get_price')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchFuelMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => SearchFuelMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchFuelMetadata')
final class SearchFuelMetadataImpl implements SearchFuelMetadata {
  SearchFuelMetadataImpl(core.int? timestamp, core.List<SearchFuelType> fuels,
      mapkit_attribution.Attribution? attribution)
      : this.fromNativePtr(_SearchFuelMetadata_init(
            to_native.toNativePtrInt64(timestamp),
            SearchFuelTypeContainerExtension.toNativeVector(fuels),
            mapkit_attribution.AttributionImpl.getNativePtr(attribution)));

  @core.override
  late final timestamp = to_platform
      .toPlatformFromPointerInt64(_SearchFuelMetadata_get_timestamp(_ptr));
  @core.override
  late final fuels = SearchFuelTypeContainerExtension.toPlatformVector(
      _SearchFuelMetadata_get_fuels(_ptr));
  @core.override
  late final attribution = mapkit_attribution.AttributionImpl.fromOptionalPtr(
      _SearchFuelMetadata_get_attribution(_ptr));

  @core.override
  final _SearchFuelMetadataFactory runtimeFactory =
      const _SearchFuelMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchFuelMetadata_free.cast());

  SearchFuelMetadataImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchFuelMetadata? obj) {
    return (obj as SearchFuelMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchFuelMetadata? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchFuelMetadataImpl.fromNativePtr(ptr);
  }

  static SearchFuelMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchFuelMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _SearchFuelMetadataFactory
    extends struct_factory.StructFactory<SearchFuelMetadata> {
  const _SearchFuelMetadataFactory();

  @core.override
  SearchFuelMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchFuelMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  SearchFuelMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchFuelMetadataImpl.fromNativePtr(
        _SearchFuelMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchFuelMetadata obj) {
    return _SearchFuelMetadata_upcast(SearchFuelMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchFuelMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _SearchFuelMetadata_name = lib
    .library
    .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
        'yandex_flutter_search_SearchFuelMetadata_name')
    .asFunction(isLeaf: true);

final _SearchFuelMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchFuelMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchFuelMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelMetadata_get_timestamp = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelMetadata_get_timestamp')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelMetadata_get_fuels = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelMetadata_get_fuels')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchFuelMetadata_get_attribution = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFuelMetadata_get_attribution')
        .asFunction(isLeaf: true);
