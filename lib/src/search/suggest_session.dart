import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_mapkit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as runtime_error;
import 'package:yandex_maps_mapkit/src/search/suggest_options.dart'
    as search_suggest_options;
import 'package:yandex_maps_mapkit/src/search/suggest_response.dart'
    as search_suggest_response;

part 'suggest_session.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchSuggestSession.getNativePtr',
    toPlatform:
        '(val) => SearchSuggestSession.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class SearchSuggestSession implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchSuggestSession_free.cast());

  /// @nodoc
  SearchSuggestSession.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SearchSuggestSession.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SearchSuggestSession? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static SearchSuggestSession? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchSuggestSession.fromNativePtr(ptr);
  }

  /// Begin a suggest request. The current request is cancelled, if
  /// present.
  ///
  /// [text] Text to get suggestions for.
  /// [window] Current map window position.
  /// [suggestOptions] Various additional suggest parameters. See the
  /// [search_suggest_options.SuggestOptions] definition for details.
  /// [suggestListener] Function called when the result is ready.
  void suggest(
    mapkit_geometry_geometry.BoundingBox window,
    search_suggest_options.SuggestOptions suggestOptions,
    SearchSuggestSessionSuggestListener suggestListener, {
    required core.String text,
  }) {
    _SuggestSession_suggest(
      ptr,
      to_native.toNativeString(text),
      mapkit_geometry_geometry.BoundingBox.toNative(window),
      search_suggest_options.SuggestOptions.toNative(suggestOptions),
      SearchSuggestSessionSuggestListener.getNativePtr(suggestListener),
    );
  }

  /// Cancels current suggest request and resets internal state. Next
  /// queries via this suggest session will be seen as a new suggest
  /// session from backend point of view.
  void reset() {
    _SuggestSession_reset(ptr);
  }
}

final _SearchSuggestSession_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchSuggestSession_free');

final void Function(
        ffi.Pointer<ffi.Void>,
        native_types.NativeString,
        mapkit_geometry_geometry.BoundingBoxNative,
        search_suggest_options.SuggestOptionsNative,
        ffi.Pointer<ffi.Void>) _SuggestSession_suggest =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        mapkit_geometry_geometry.BoundingBoxNative,
                        search_suggest_options.SuggestOptionsNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchSuggestSession_suggest')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _SuggestSession_reset = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchSuggestSession_reset')
    .asFunction();

class SearchSuggestSessionSuggestListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, SearchSuggestSessionSuggestListener>{};

  SearchSuggestSessionSuggestListener(
      {required void Function(search_suggest_response.SuggestResponse suggest)
          onResponse,
      required void Function(runtime_error.Error error) onError})
      : _ptr = _SearchSuggestSessionSuggestListener_new(
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _SearchSuggestSessionSuggestListener_onResponse),
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _SearchSuggestSessionSuggestListener_onError)),
        _onResponse = onResponse,
        _onError = onError {
    _pointerToListener[_ptr] = this;
    _SearchSuggestSessionSuggestListenersetSendPort(
        _ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());
  }

  /// Callback for results processing.
  ///
  /// [suggest] List of suggest results.
  void onResponse(search_suggest_response.SuggestResponse suggest) =>
      _onResponse(suggest);

  /// Callback for error processing.
  ///
  /// [error] Error information.
  void onError(runtime_error.Error error) => _onError(error);

  final ffi.Pointer<ffi.Void> _ptr;

  final void Function(search_suggest_response.SuggestResponse) _onResponse;
  final void Function(runtime_error.Error) _onError;

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchSuggestSessionSuggestListener? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _SearchSuggestSessionSuggestListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_search_SuggestSession_SearchSuggestSessionSuggestListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _SearchSuggestSessionSuggestListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_search_SuggestSession_SearchSuggestSessionSuggestListener_new')
        .asFunction(isLeaf: true);

void _SearchSuggestSessionSuggestListener_onResponse(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> suggest) {
  final listener =
      SearchSuggestSessionSuggestListener._pointerToListener[_ptr]!;

  try {
    listener.onResponse(
        search_suggest_response.SuggestResponse.fromNativePtr(suggest));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

void _SearchSuggestSessionSuggestListener_onError(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> error) {
  final listener =
      SearchSuggestSessionSuggestListener._pointerToListener[_ptr]!;

  try {
    listener.onError(runtime_error.Error.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}
