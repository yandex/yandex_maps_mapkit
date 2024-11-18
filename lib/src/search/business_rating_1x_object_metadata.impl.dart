part of 'business_rating_1x_object_metadata.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchBusinessRating1xObjectMetadataImpl.getNativePtr',
    toPlatform:
        '(val) => SearchBusinessRating1xObjectMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchBusinessRating1xObjectMetadata')
final class SearchBusinessRating1xObjectMetadataImpl
    implements SearchBusinessRating1xObjectMetadata {
  SearchBusinessRating1xObjectMetadataImpl(
      core.int ratings, core.int reviews, core.double? score)
      : this.fromNativePtr(_SearchBusinessRating1xObjectMetadata_init(
            ratings, reviews, to_native.toNativePtrFloat(score)));

  @core.override
  late final ratings = _SearchBusinessRating1xObjectMetadata_get_ratings(_ptr);
  @core.override
  late final reviews = _SearchBusinessRating1xObjectMetadata_get_reviews(_ptr);
  @core.override
  late final score = to_platform.toPlatformFromPointerFloat(
      _SearchBusinessRating1xObjectMetadata_get_score(_ptr));

  @core.override
  final _SearchBusinessRating1xObjectMetadataFactory runtimeFactory =
      const _SearchBusinessRating1xObjectMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchBusinessRating1xObjectMetadata_free.cast());

  SearchBusinessRating1xObjectMetadataImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchBusinessRating1xObjectMetadata? obj) {
    return (obj as SearchBusinessRating1xObjectMetadataImpl?)?._ptr ??
        ffi.nullptr;
  }

  static SearchBusinessRating1xObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchBusinessRating1xObjectMetadataImpl.fromNativePtr(ptr);
  }

  static SearchBusinessRating1xObjectMetadata? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchBusinessRating1xObjectMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

class _SearchBusinessRating1xObjectMetadataFactory
    extends struct_factory.StructFactory<SearchBusinessRating1xObjectMetadata> {
  const _SearchBusinessRating1xObjectMetadataFactory();

  @core.override
  SearchBusinessRating1xObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchBusinessRating1xObjectMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  SearchBusinessRating1xObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchBusinessRating1xObjectMetadataImpl.fromNativePtr(
        _SearchBusinessRating1xObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchBusinessRating1xObjectMetadata obj) {
    return _SearchBusinessRating1xObjectMetadata_upcast(
        SearchBusinessRating1xObjectMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchBusinessRating1xObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SearchBusinessRating1xObjectMetadata_downcast = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessRating1xObjectMetadata_downcast')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchBusinessRating1xObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessRating1xObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function()
    _SearchBusinessRating1xObjectMetadata_name = lib.library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchBusinessRating1xObjectMetadata_name')
        .asFunction(isLeaf: true);

final _SearchBusinessRating1xObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchBusinessRating1xObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(core.int, core.int, ffi.Pointer<ffi.Void>)
    _SearchBusinessRating1xObjectMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Uint32, ffi.Uint32, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchBusinessRating1xObjectMetadata_init')
        .asFunction(isLeaf: true);

final core.int Function(
    ffi.Pointer<
        ffi.Void>) _SearchBusinessRating1xObjectMetadata_get_ratings = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessRating1xObjectMetadata_get_ratings')
    .asFunction(isLeaf: true);
final core.int Function(
    ffi.Pointer<
        ffi.Void>) _SearchBusinessRating1xObjectMetadata_get_reviews = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessRating1xObjectMetadata_get_reviews')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _SearchBusinessRating1xObjectMetadata_get_score = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchBusinessRating1xObjectMetadata_get_score')
    .asFunction(isLeaf: true);
