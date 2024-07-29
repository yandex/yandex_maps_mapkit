part of 'business_result_metadata.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessResultMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => SearchBusinessResultMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchBusinessResultMetadata')
final class SearchBusinessResultMetadataImpl
    implements SearchBusinessResultMetadata {
  SearchBusinessResultMetadataImpl(
      core.List<search_category.SearchCategory> categories,
      core.List<search_chain.SearchChain> chains,
      core.List<search_business_filter.SearchBusinessFilter> businessFilters,
      search_business_filter.SearchFilterSet? importantFilters,
      core.List<core.String> pricesCurrencies)
      : this.fromNativePtr(_SearchBusinessResultMetadata_init(
            search_category.SearchCategoryContainerExtension.toNativeVector(
                categories),
            search_chain.SearchChainContainerExtension.toNativeVector(chains),
            search_business_filter.SearchBusinessFilterContainerExtension
                .toNativeVector(businessFilters),
            search_business_filter.SearchFilterSetImpl.getNativePtr(
                importantFilters),
            to_native.toNativeVectorString(pricesCurrencies)));

  @core.override
  late final categories =
      search_category.SearchCategoryContainerExtension.toPlatformVector(
          _SearchBusinessResultMetadata_get_categories(_ptr));
  @core.override
  late final chains =
      search_chain.SearchChainContainerExtension.toPlatformVector(
          _SearchBusinessResultMetadata_get_chains(_ptr));
  @core.override
  late final businessFilters =
      search_business_filter.SearchBusinessFilterContainerExtension
          .toPlatformVector(
              _SearchBusinessResultMetadata_get_businessFilters(_ptr));
  @core.override
  late final importantFilters =
      search_business_filter.SearchFilterSetImpl.fromOptionalPtr(
          _SearchBusinessResultMetadata_get_importantFilters(_ptr));
  @core.override
  late final pricesCurrencies = to_platform
      .toVectorString(_SearchBusinessResultMetadata_get_pricesCurrencies(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchBusinessResultMetadata_free.cast());

  SearchBusinessResultMetadataImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchBusinessResultMetadata? obj) {
    return (obj as SearchBusinessResultMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchBusinessResultMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchBusinessResultMetadataImpl.fromNativePtr(ptr);
  }

  static SearchBusinessResultMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchBusinessResultMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchBusinessResultMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchBusinessResultMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _SearchBusinessResultMetadata_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessResultMetadata_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessResultMetadata_get_categories = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessResultMetadata_get_categories')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessResultMetadata_get_chains = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessResultMetadata_get_chains')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchBusinessResultMetadata_get_businessFilters = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessResultMetadata_get_businessFilters')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchBusinessResultMetadata_get_importantFilters = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessResultMetadata_get_importantFilters')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchBusinessResultMetadata_get_pricesCurrencies = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessResultMetadata_get_pricesCurrencies')
    .asFunction(isLeaf: true);
