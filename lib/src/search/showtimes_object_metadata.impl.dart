part of 'showtimes_object_metadata.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchShowtimeImpl.toPointer',
    toPlatform: '(val) => SearchShowtimeImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchShowtime')
final class SearchShowtimeImpl implements SearchShowtime {
  SearchShowtimeImpl(mapkit_time.Time startTime, mapkit_money.TaxiMoney? price,
      core.String? ticketId)
      : this.fromNativePtr(_SearchShowtime_init(
            mapkit_time.TimeImpl.toNative(startTime),
            mapkit_money.TaxiMoneyImpl.toPointer(price),
            to_native.toNativePtrString(ticketId)));

  @core.override
  late final startTime =
      mapkit_time.TimeImpl.fromNative(_SearchShowtime_get_startTime(_ptr));
  @core.override
  late final price =
      mapkit_money.TaxiMoneyImpl.fromPointer(_SearchShowtime_get_price(_ptr));
  @core.override
  late final ticketId = to_platform
      .toPlatformFromPointerString(_SearchShowtime_get_ticketId(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchShowtime_free.cast());

  SearchShowtimeImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchShowtime? obj) {
    return (obj as SearchShowtimeImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchShowtime? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : SearchShowtimeImpl.fromNativePtr(ptr);
  }

  static SearchShowtime? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchShowtimeImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchShowtime? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchShowtime_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchShowtime_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtime_clone')
        .asFunction(isLeaf: true);

final _SearchShowtime_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchShowtime_free');

final ffi.Pointer<ffi.Void> Function(
        mapkit_time.TimeNative, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchShowtime_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(mapkit_time.TimeNative,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtime_init')
        .asFunction(isLeaf: true);

final mapkit_time.TimeNative Function(ffi.Pointer<ffi.Void>)
    _SearchShowtime_get_startTime = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_time.TimeNative Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtime_get_startTime')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchShowtime_get_price = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtime_get_price')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchShowtime_get_ticketId = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtime_get_ticketId')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchShowtimesObjectMetadataImpl.toPointer',
    toPlatform:
        '(val) => SearchShowtimesObjectMetadataImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchShowtimesObjectMetadata')
final class SearchShowtimesObjectMetadataImpl
    implements SearchShowtimesObjectMetadata {
  SearchShowtimesObjectMetadataImpl(
      core.String title, core.List<SearchShowtime> showtimes)
      : this.fromNativePtr(_SearchShowtimesObjectMetadata_init(
            to_native.toNativeString(title),
            SearchShowtimeContainerExtension.toNativeVector(showtimes)));

  @core.override
  late final title = to_platform
      .toPlatformString(_SearchShowtimesObjectMetadata_get_title(_ptr));
  @core.override
  late final showtimes = SearchShowtimeContainerExtension.toPlatformVector(
      _SearchShowtimesObjectMetadata_get_showtimes(_ptr));

  @core.override
  final _SearchShowtimesObjectMetadataFactory runtimeFactory =
      const _SearchShowtimesObjectMetadataFactory();

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchShowtimesObjectMetadata_free.cast());

  SearchShowtimesObjectMetadataImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchShowtimesObjectMetadata? obj) {
    return (obj as SearchShowtimesObjectMetadataImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchShowtimesObjectMetadata? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchShowtimesObjectMetadataImpl.fromNativePtr(ptr);
  }

  static SearchShowtimesObjectMetadata? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchShowtimesObjectMetadataImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchShowtimesObjectMetadata? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchShowtimesObjectMetadata_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

class _SearchShowtimesObjectMetadataFactory
    extends struct_factory.StructFactory<SearchShowtimesObjectMetadata> {
  const _SearchShowtimesObjectMetadataFactory();

  @core.override
  SearchShowtimesObjectMetadata create(ffi.Pointer<ffi.Void> ptr) {
    return SearchShowtimesObjectMetadataImpl.fromNativePtr(ptr);
  }

  @core.override
  SearchShowtimesObjectMetadata fromParent(ffi.Pointer<ffi.Void> ptr) {
    return SearchShowtimesObjectMetadataImpl.fromNativePtr(
        _SearchShowtimesObjectMetadata_downcast(ptr));
  }

  @core.override
  ffi.Pointer<ffi.Void> toParent(SearchShowtimesObjectMetadata obj) {
    return _SearchShowtimesObjectMetadata_upcast(
        SearchShowtimesObjectMetadataImpl.getNativePtr(obj));
  }

  @core.override
  native_types.NativeString typeName() {
    return _SearchShowtimesObjectMetadata_name();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchShowtimesObjectMetadata_downcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtimesObjectMetadata_downcast')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchShowtimesObjectMetadata_upcast = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtimesObjectMetadata_upcast')
        .asFunction(isLeaf: true);

final native_types.NativeString Function() _SearchShowtimesObjectMetadata_name =
    lib
        .library
        .lookup<ffi.NativeFunction<native_types.NativeString Function()>>(
            'yandex_flutter_search_SearchShowtimesObjectMetadata_name')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchShowtimesObjectMetadata_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtimesObjectMetadata_clone')
        .asFunction(isLeaf: true);

final _SearchShowtimesObjectMetadata_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchShowtimesObjectMetadata_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString, ffi.Pointer<ffi.Void>)
    _SearchShowtimesObjectMetadata_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtimesObjectMetadata_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchShowtimesObjectMetadata_get_title = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtimesObjectMetadata_get_title')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchShowtimesObjectMetadata_get_showtimes = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchShowtimesObjectMetadata_get_showtimes')
        .asFunction(isLeaf: true);
