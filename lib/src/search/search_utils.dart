import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;

class SearchUtils {
  SearchUtils._();

  static core.String makeBusinessUri(core.String oid) {
    return to_platform.toPlatformString(
        _SearchUtils_makeBusinessUri(to_native.toNativeString(oid)));
  }
}

final native_types.NativeString Function(native_types.NativeString)
    _SearchUtils_makeBusinessUri = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(
                        native_types.NativeString)>>(
            'yandex_flutter_search_SearchUtils_makeBusinessUri')
        .asFunction();
