import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'phone.containers.dart';

/// Phone type
@bindings_annotations.ContainerData(
    toNative: 'SearchPhoneType.toPointer',
    toPlatform: '(val) => SearchPhoneType.fromPointer(val, needFree: false)')
enum SearchPhoneType {
  /// Phone.
  Phone,

  /// Fax.
  Fax,

  /// Both phone and fax.
  PhoneFax,
  ;

  /// @nodoc
  @internal
  static SearchPhoneType fromInt(core.int val) {
    return SearchPhoneType.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(SearchPhoneType e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static SearchPhoneType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchPhoneType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
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
    toNative: 'SearchPhone.toPointer',
    toPlatform: '(val) => SearchPhone.fromPointer(val, needFree: false)')
class SearchPhone {
  final SearchPhoneType type;
  final core.String formattedNumber;
  final core.String? info;
  final core.String? country;
  final core.String? prefix;
  final core.String? ext;
  final core.String? number;

  const SearchPhone(
    this.type, {
    required this.formattedNumber,
    this.info,
    this.country,
    this.prefix,
    this.ext,
    this.number,
  });

  /// @nodoc
  @internal
  SearchPhone.fromNative(SearchPhoneNative native)
      : this(SearchPhoneType.fromInt(native.type),
            formattedNumber:
                to_platform.toPlatformString(native.formattedNumber),
            info: to_platform.toPlatformFromPointerString(native.info),
            country: to_platform.toPlatformFromPointerString(native.country),
            prefix: to_platform.toPlatformFromPointerString(native.prefix),
            ext: to_platform.toPlatformFromPointerString(native.ext),
            number: to_platform.toPlatformFromPointerString(native.number));

  /// @nodoc
  @internal
  static SearchPhoneNative toNative(SearchPhone c) {
    return _SearchPhoneNativeInit(
        SearchPhoneType.toInt(c.type),
        to_native.toNativeString(c.formattedNumber),
        to_native.toNativePtrString(c.info),
        to_native.toNativePtrString(c.country),
        to_native.toNativePtrString(c.prefix),
        to_native.toNativePtrString(c.ext),
        to_native.toNativePtrString(c.number));
  }

  /// @nodoc
  @internal
  static SearchPhone? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SearchPhone.fromNative(ptr.cast<SearchPhoneNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SearchPhone? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SearchPhoneNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
