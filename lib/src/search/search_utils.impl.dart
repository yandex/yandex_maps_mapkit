part of 'search_utils.dart';

core.String _makeBusinessUri(core.String oid) {
  final result = to_platform.toPlatformString(
      _SearchUtils_makeBusinessUri(to_native.toNativeString(oid)));
  return result;
}

final native_types.NativeString Function(native_types.NativeString)
    _SearchUtils_makeBusinessUri = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(
                        native_types.NativeString)>>(
            'yandex_flutter_search_SearchUtils_makeBusinessUri')
        .asFunction();
