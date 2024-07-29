part of 'exchange_object_metadata.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchCurrencyExchangeTypeImpl.getNativePtr',
    toPlatform:
        '(val) => SearchCurrencyExchangeTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchCurrencyExchangeType')
final class SearchCurrencyExchangeTypeImpl
    implements SearchCurrencyExchangeType {
  SearchCurrencyExchangeTypeImpl(core.String? name, mapkit_money.TaxiMoney? buy,
      mapkit_money.TaxiMoney? sell)
      : this.fromNativePtr(_SearchCurrencyExchangeType_init(
            to_native.toNativePtrString(name),
            mapkit_money.TaxiMoneyImpl.toPointer(buy),
            mapkit_money.TaxiMoneyImpl.toPointer(sell)));

  @core.override
  late final name = to_platform
      .toPlatformFromPointerString(_SearchCurrencyExchangeType_get_name(_ptr));
  @core.override
  late final buy = mapkit_money.TaxiMoneyImpl.fromPointer(
      _SearchCurrencyExchangeType_get_buy(_ptr));
  @core.override
  late final sell = mapkit_money.TaxiMoneyImpl.fromPointer(
      _SearchCurrencyExchangeType_get_sell(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchCurrencyExchangeType_free.cast());

  SearchCurrencyExchangeTypeImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchCurrencyExchangeType? obj) {
    return (obj as SearchCurrencyExchangeTypeImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchCurrencyExchangeType? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchCurrencyExchangeTypeImpl.fromNativePtr(ptr);
  }

  static SearchCurrencyExchangeType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchCurrencyExchangeTypeImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchCurrencyExchangeType_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchCurrencyExchangeType_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeType_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeType_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeType_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeType_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeType_get_buy = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeType_get_buy')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeType_get_sell = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeType_get_sell')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchCurrencyExchangeMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => SearchCurrencyExchangeMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchCurrencyExchangeMetadata')
final class SearchCurrencyExchangeMetadataImpl
    implements SearchCurrencyExchangeMetadata {
  SearchCurrencyExchangeMetadataImpl(
      core.List<SearchCurrencyExchangeType> currencies)
      : this.fromNativePtr(_SearchCurrencyExchangeMetadata_init(
            SearchCurrencyExchangeTypeContainerExtension.toNativeVector(
                currencies)));

  @core.override
  late final currencies =
      SearchCurrencyExchangeTypeContainerExtension.toPlatformVector(
          _SearchCurrencyExchangeMetadata_get_currencies(_ptr));

  @core.override
  final _SearchCurrencyExchangeMetadataFactory runtimeFactory =
      const _SearchCurrencyExchangeMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchCurrencyExchangeMetadata_free.cast());

  SearchCurrencyExchangeMetadataImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchCurrencyExchangeMetadata? obj) {
    return (obj as SearchCurrencyExchangeMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchCurrencyExchangeMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchCurrencyExchangeMetadataImpl.fromNativePtr(ptr);
  }

  static SearchCurrencyExchangeMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchCurrencyExchangeMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _SearchCurrencyExchangeMetadataFactory
    extends struct_factory.StructFactory<SearchCurrencyExchangeMetadata> {
  const _SearchCurrencyExchangeMetadataFactory();

  @core.override
  SearchCurrencyExchangeMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchCurrencyExchangeMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  SearchCurrencyExchangeMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchCurrencyExchangeMetadataImpl.fromNativePtr(
        _SearchCurrencyExchangeMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchCurrencyExchangeMetadata obj) {
    return _SearchCurrencyExchangeMetadata_upcast(
        SearchCurrencyExchangeMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchCurrencyExchangeMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function()
    _SearchCurrencyExchangeMetadata_name = lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchCurrencyExchangeMetadata_name')
        .asFunction(isLeaf: true);

final _SearchCurrencyExchangeMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchCurrencyExchangeMetadata_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchCurrencyExchangeMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchCurrencyExchangeMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchCurrencyExchangeMetadata_get_currencies = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchCurrencyExchangeMetadata_get_currencies')
    .asFunction(isLeaf: true);
