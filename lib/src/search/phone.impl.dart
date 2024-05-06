part of 'phone.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchPhoneTypeImpl.toPointer',
    toPlatform:
        '(val) => SearchPhoneTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchPhoneType')
extension SearchPhoneTypeImpl on SearchPhoneType {
  static core.int toInt(SearchPhoneType e) {
    return e.index;
  }

  static SearchPhoneType fromInt(core.int val) {
    return SearchPhoneType.values[val];
  }

  static SearchPhoneType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(SearchPhoneType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

final class SearchPhoneNative extends ffi.Struct {
  @ffi.Int64()
  external core.int type;
  external native_types.NativeString formattedNumber;
  external ffi.Pointer<ffi.Void> info;
  external ffi.Pointer<ffi.Void> country;
  external ffi.Pointer<ffi.Void> prefix;
  external ffi.Pointer<ffi.Void> ext;
  external ffi.Pointer<ffi.Void> number;
}

final SearchPhoneNative Function(
        core.int,
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _SearchPhoneNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    SearchPhoneNative Function(
                        ffi.Int64,
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchPhone_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchPhoneImpl.toPointer',
    toPlatform: '(val) => SearchPhoneImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchPhone')
extension SearchPhoneImpl on SearchPhone {
  static SearchPhone fromNative(SearchPhoneNative native) {
    return SearchPhone(SearchPhoneTypeImpl.fromInt(native.type),
        formattedNumber: to_platform.toPlatformString(native.formattedNumber),
        info: to_platform.toPlatformFromPointerString(native.info),
        country: to_platform.toPlatformFromPointerString(native.country),
        prefix: to_platform.toPlatformFromPointerString(native.prefix),
        ext: to_platform.toPlatformFromPointerString(native.ext),
        number: to_platform.toPlatformFromPointerString(native.number));
  }

  static SearchPhoneNative toNative(SearchPhone obj) {
    return _SearchPhoneNativeInit(
        SearchPhoneTypeImpl.toInt(obj.type),
        to_native.toNativeString(obj.formattedNumber),
        to_native.toNativePtrString(obj.info),
        to_native.toNativePtrString(obj.country),
        to_native.toNativePtrString(obj.prefix),
        to_native.toNativePtrString(obj.ext),
        to_native.toNativePtrString(obj.number));
  }

  static SearchPhone? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        SearchPhoneImpl.fromNative(ptr.cast<SearchPhoneNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchPhone? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchPhoneNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
