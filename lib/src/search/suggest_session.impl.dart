part of 'suggest_session.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchSuggestSessionImpl.getNativePtr',
    toPlatform:
        '(val) => SearchSuggestSessionImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'SearchSuggestSession')
class SearchSuggestSessionImpl
    implements SearchSuggestSession, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchSuggestSession_free.cast());

  /// @nodoc
  SearchSuggestSessionImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SearchSuggestSessionImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SearchSuggestSession? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as SearchSuggestSessionImpl).ptr;
  }

  @internal

  /// @nodoc
  static SearchSuggestSession? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchSuggestSessionImpl.fromNativePtr(ptr);
  }

  void suggest(
    mapkit_geometry_geometry.BoundingBox window,
    search_suggest_options.SuggestOptions suggestOptions,
    SearchSuggestSessionSuggestListener suggestListener, {
    required core.String text,
  }) {
    _SuggestSession_suggest(
      ptr,
      to_native.toNativeString(text),
      mapkit_geometry_geometry.BoundingBoxImpl.toNative(window),
      search_suggest_options.SuggestOptionsImpl.toNative(suggestOptions),
      SearchSuggestSessionSuggestListenerImpl.getNativePtr(suggestListener),
    );
  }

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
final void Function(ffi.Pointer<ffi.Void>, core.int) _SearchSuggestSession_set =
    lib
        .library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
            'yandex_flutter_search_SearchSuggestSession_set_')
        .asFunction(isLeaf: true);

final class SearchSuggestSessionSuggestListenerImpl
    implements SearchSuggestSessionSuggestListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, SearchSuggestSessionSuggestListener>{};

  SearchSuggestSessionSuggestListenerImpl(
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

  @core.override
  void onResponse(search_suggest_response.SuggestResponse suggest) =>
      _onResponse(suggest);
  @core.override
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
    return (obj as SearchSuggestSessionSuggestListenerImpl)._ptr;
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
                        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_search_SuggestSession_SearchSuggestSessionSuggestListener_new')
        .asFunction(isLeaf: true);

void _SearchSuggestSessionSuggestListener_onResponse(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> suggest) {
  final listener =
      SearchSuggestSessionSuggestListenerImpl._pointerToListener[_ptr]!;

  try {
    listener.onResponse(
        search_suggest_response.SuggestResponseImpl.fromNativePtr(suggest));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

void _SearchSuggestSessionSuggestListener_onError(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> error) {
  final listener =
      SearchSuggestSessionSuggestListenerImpl._pointerToListener[_ptr]!;

  try {
    listener.onError(runtime_error.ErrorImpl.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}
