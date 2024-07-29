part of 'address.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchAddressImpl.getNativePtr',
    toPlatform: '(val) => SearchAddressImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchAddress')
final class SearchAddressImpl implements SearchAddress {
  SearchAddressImpl(
      core.String formattedAddress,
      core.String? additionalInfo,
      core.String? postalCode,
      core.String? countryCode,
      core.List<SearchAddressComponent> components)
      : this.fromNativePtr(_SearchAddress_init(
            to_native.toNativeString(formattedAddress),
            to_native.toNativePtrString(additionalInfo),
            to_native.toNativePtrString(postalCode),
            to_native.toNativePtrString(countryCode),
            SearchAddressComponentContainerExtension.toNativeVector(
                components)));

  @core.override
  late final formattedAddress =
      to_platform.toPlatformString(_SearchAddress_get_formattedAddress(_ptr));
  @core.override
  late final additionalInfo = to_platform
      .toPlatformFromPointerString(_SearchAddress_get_additionalInfo(_ptr));
  @core.override
  late final postalCode = to_platform
      .toPlatformFromPointerString(_SearchAddress_get_postalCode(_ptr));
  @core.override
  late final countryCode = to_platform
      .toPlatformFromPointerString(_SearchAddress_get_countryCode(_ptr));
  @core.override
  late final components =
      SearchAddressComponentContainerExtension.toPlatformVector(
          _SearchAddress_get_components(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchAddress_free.cast());

  SearchAddressImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchAddress? obj) {
    return (obj as SearchAddressImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchAddress? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : SearchAddressImpl.fromNativePtr(ptr);
  }

  static SearchAddress? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchAddressImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchAddress_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchAddress_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _SearchAddress_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAddress_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchAddress_get_formattedAddress = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAddress_get_formattedAddress')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchAddress_get_additionalInfo = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAddress_get_additionalInfo')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchAddress_get_postalCode = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAddress_get_postalCode')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchAddress_get_countryCode = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAddress_get_countryCode')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchAddress_get_components = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchAddress_get_components')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchAddressComponentImpl.getNativePtr',
    toPlatform:
        '(val) => SearchAddressComponentImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchAddressComponent')
final class SearchAddressComponentImpl implements SearchAddressComponent {
  SearchAddressComponentImpl(
      core.String name, core.List<SearchAddressComponentKind> kinds)
      : this.fromNativePtr(_SearchAddressComponent_init(
            to_native.toNativeString(name),
            SearchAddressComponentKindContainerExtension.toNativeVector(
                kinds)));

  @core.override
  late final name =
      to_platform.toPlatformString(_SearchAddressComponent_get_name(_ptr));
  @core.override
  late final kinds =
      SearchAddressComponentKindContainerExtension.toPlatformVector(
          _SearchAddressComponent_get_kinds(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchAddressComponent_free.cast());

  SearchAddressComponentImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchAddressComponent? obj) {
    return (obj as SearchAddressComponentImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchAddressComponent? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchAddressComponentImpl.fromNativePtr(ptr);
  }

  static SearchAddressComponent? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchAddressComponentImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SearchAddressComponent_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_Address_SearchAddressComponent_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString, ffi.Pointer<ffi.Void>)
    _SearchAddressComponent_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_Address_SearchAddressComponent_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchAddressComponent_get_name = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_Address_SearchAddressComponent_get_name')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchAddressComponent_get_kinds = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_Address_SearchAddressComponent_get_kinds')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchAddressComponentKindImpl.toPointer',
    toPlatform:
        '(val) => SearchAddressComponentKindImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchAddressComponentKind')
extension SearchAddressComponentKindImpl on SearchAddressComponentKind {
  static core.int toInt(SearchAddressComponentKind e) {
    return e.index;
  }

  static SearchAddressComponentKind fromInt(core.int val) {
    return SearchAddressComponentKind.values[val];
  }

  static SearchAddressComponentKind? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(SearchAddressComponentKind? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
