part of 'filter_collection_builder.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchFilterCollectionBuilderImpl.getNativePtr',
    toPlatform:
        '(val) => SearchFilterCollectionBuilderImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'SearchFilterCollectionBuilder')
class SearchFilterCollectionBuilderImpl
    implements SearchFilterCollectionBuilder, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchFilterCollectionBuilder_free.cast());

  /// @nodoc
  SearchFilterCollectionBuilderImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SearchFilterCollectionBuilderImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchFilterCollectionBuilder? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as SearchFilterCollectionBuilderImpl).ptr;
  }

  @internal

  /// @nodoc
  static SearchFilterCollectionBuilder? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchFilterCollectionBuilderImpl.fromNativePtr(ptr);
  }

  void addBooleanFilter(core.String filterId) {
    _FilterCollectionBuilder_addBooleanFilter(
        ptr, to_native.toNativeString(filterId));
  }

  void addEnumFilter({
    required core.String filterId,
    required core.List<core.String> valueIds,
  }) {
    _FilterCollectionBuilder_addEnumFilter(
        ptr,
        to_native.toNativeString(filterId),
        to_native.toNativeVectorString(valueIds));
  }

  void addRangeFilter({
    required core.String filterId,
    required core.double from,
    required core.double to,
  }) {
    _FilterCollectionBuilder_addRangeFilter(
        ptr, to_native.toNativeString(filterId), from, to);
  }

  void addDateFilter({
    required core.String filterId,
    required core.String from,
    required core.String to,
  }) {
    _FilterCollectionBuilder_addDateFilter(
        ptr,
        to_native.toNativeString(filterId),
        to_native.toNativeString(from),
        to_native.toNativeString(to));
  }

  search_filter_collection.SearchFilterCollection build() {
    return search_filter_collection.SearchFilterCollectionImpl.fromNativePtr(
        _FilterCollectionBuilder_build(ptr));
  }
}

final _SearchFilterCollectionBuilder_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchFilterCollectionBuilder_free');

final void Function(
    ffi.Pointer<ffi.Void>,
    native_types
        .NativeString) _FilterCollectionBuilder_addBooleanFilter = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, native_types.NativeString)>>(
        'yandex_flutter_search_SearchFilterCollectionBuilder_addBooleanFilter')
    .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, native_types.NativeString, ffi.Pointer<ffi.Void>)
    _FilterCollectionBuilder_addEnumFilter = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        native_types.NativeString, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFilterCollectionBuilder_addEnumFilter')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    native_types.NativeString,
    core.double,
    core
        .double) _FilterCollectionBuilder_addRangeFilter = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>,
                    native_types.NativeString, ffi.Double, ffi.Double)>>(
        'yandex_flutter_search_SearchFilterCollectionBuilder_addRangeFilter')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeString,
        native_types.NativeString, native_types.NativeString)
    _FilterCollectionBuilder_addDateFilter = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        native_types.NativeString,
                        native_types.NativeString)>>(
            'yandex_flutter_search_SearchFilterCollectionBuilder_addDateFilter')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _FilterCollectionBuilder_build = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchFilterCollectionBuilder_build')
        .asFunction();

SearchFilterCollectionBuilder _createFilterCollectionBuilder() {
  return SearchFilterCollectionBuilderImpl.fromNativePtr(
      _FilterCollectionUtils_createFilterCollectionBuilder());
}

final ffi.Pointer<ffi.Void> Function()
    _FilterCollectionUtils_createFilterCollectionBuilder = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_search_SearchFilterCollectionUtils_createFilterCollectionBuilder')
        .asFunction();
