part of 'personal_suggest_session.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchDeleteAllPersonalSuggestSessionImpl.getNativePtr',
    toPlatform:
        '(val) => SearchDeleteAllPersonalSuggestSessionImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'SearchDeleteAllPersonalSuggestSession')
class SearchDeleteAllPersonalSuggestSessionImpl
    implements SearchDeleteAllPersonalSuggestSession, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchDeleteAllPersonalSuggestSession_free.cast());

  /// @nodoc
  SearchDeleteAllPersonalSuggestSessionImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SearchDeleteAllPersonalSuggestSessionImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      SearchDeleteAllPersonalSuggestSession? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as SearchDeleteAllPersonalSuggestSessionImpl).ptr;
  }

  @internal

  /// @nodoc
  static SearchDeleteAllPersonalSuggestSession? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SearchDeleteAllPersonalSuggestSessionImpl.fromNativePtr(ptr);
  }

  void cancel() {
    _DeleteAllPersonalSuggestSession_cancel(ptr);
  }

  void retry(PersonalSuggestListener personalSuggestListener) {
    _DeleteAllPersonalSuggestSession_retry(
        ptr, PersonalSuggestListenerImpl.getNativePtr(personalSuggestListener));
  }
}

final _SearchDeleteAllPersonalSuggestSession_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchDeleteAllPersonalSuggestSession_free');

final void Function(
    ffi
        .Pointer<ffi.Void>) _DeleteAllPersonalSuggestSession_cancel = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SearchDeleteAllPersonalSuggestSession_cancel')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _DeleteAllPersonalSuggestSession_retry = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchDeleteAllPersonalSuggestSession_retry')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int)
    _SearchDeleteAllPersonalSuggestSession_set = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
            'yandex_flutter_search_SearchDeleteAllPersonalSuggestSession_set_')
        .asFunction(isLeaf: true);

final class PersonalSuggestListenerImpl implements PersonalSuggestListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, PersonalSuggestListener>{};

  PersonalSuggestListenerImpl(
      {required void Function() onPersonalSuggestSuccess,
      required void Function(runtime_error.Error error) onPersonalSuggestError})
      : _ptr = _PersonalSuggestListener_new(
            ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
                _PersonalSuggestListener_onPersonalSuggestSuccess),
            ffi.Pointer.fromFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
                _PersonalSuggestListener_onPersonalSuggestError)),
        _onPersonalSuggestSuccess = onPersonalSuggestSuccess,
        _onPersonalSuggestError = onPersonalSuggestError {
    _pointerToListener[_ptr] = this;
    _PersonalSuggestListenersetSendPort(
        _ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());
  }

  @core.override
  void onPersonalSuggestSuccess() => _onPersonalSuggestSuccess();
  @core.override
  void onPersonalSuggestError(runtime_error.Error error) =>
      _onPersonalSuggestError(error);

  final ffi.Pointer<ffi.Void> _ptr;

  final void Function() _onPersonalSuggestSuccess;
  final void Function(runtime_error.Error) _onPersonalSuggestError;

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(PersonalSuggestListener? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as PersonalSuggestListenerImpl)._ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _PersonalSuggestListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_search_DeleteAllPersonalSuggestSession_PersonalSuggestListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _PersonalSuggestListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_search_DeleteAllPersonalSuggestSession_PersonalSuggestListener_new')
        .asFunction(isLeaf: true);

void _PersonalSuggestListener_onPersonalSuggestSuccess(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener = PersonalSuggestListenerImpl._pointerToListener[_ptr]!;

  try {
    listener.onPersonalSuggestSuccess();
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}

void _PersonalSuggestListener_onPersonalSuggestError(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> error) {
  final listener = PersonalSuggestListenerImpl._pointerToListener[_ptr]!;

  try {
    listener
        .onPersonalSuggestError(runtime_error.ErrorImpl.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert('Unhandled exception $e\n$stack');
    rethrow;
  }
}
