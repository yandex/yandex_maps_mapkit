part of 'working_hours.dart';

@bindings_annotations.ContainerData(
    toNative: 'SearchStateImpl.toPointer',
    toPlatform: '(val) => SearchStateImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchState')
final class SearchStateImpl implements SearchState {
  SearchStateImpl(core.bool? isOpenNow, core.String? text,
      core.String? shortText, core.List<core.String> tags)
      : this.fromNativePtr(_SearchState_init(
            to_native.toNativePtrBool(isOpenNow),
            to_native.toNativePtrString(text),
            to_native.toNativePtrString(shortText),
            to_native.toNativeVectorString(tags)));

  @core.override
  late final isOpenNow =
      to_platform.toPlatformFromPointerBool(_SearchState_get_isOpenNow(_ptr));
  @core.override
  late final text =
      to_platform.toPlatformFromPointerString(_SearchState_get_text(_ptr));
  @core.override
  late final shortText =
      to_platform.toPlatformFromPointerString(_SearchState_get_shortText(_ptr));
  @core.override
  late final tags = to_platform.toVectorString(_SearchState_get_tags(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SearchState_free.cast());

  SearchStateImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchState? obj) {
    return (obj as SearchStateImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchState? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : SearchStateImpl.fromNativePtr(ptr);
  }

  static SearchState? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        SearchStateImpl.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchState? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchState_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _SearchState_clone =
    lib
        .library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchState_clone')
        .asFunction(isLeaf: true);

final _SearchState_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchState_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchState_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchState_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchState_get_isOpenNow = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchState_get_isOpenNow')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchState_get_text = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchState_get_text')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchState_get_shortText = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchState_get_shortText')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchState_get_tags = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchState_get_tags')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SearchWorkingHoursImpl.toPointer',
    toPlatform:
        '(val) => SearchWorkingHoursImpl.fromPointer(val, needFree: false)',
    platformType: 'SearchWorkingHours')
final class SearchWorkingHoursImpl implements SearchWorkingHours {
  SearchWorkingHoursImpl(
      core.String text,
      core.List<search_availability.SearchAvailability> availabilities,
      SearchState? state)
      : this.fromNativePtr(_SearchWorkingHours_init(
            to_native.toNativeString(text),
            search_availability.SearchAvailabilityContainerExtension
                .toNativeVector(availabilities),
            SearchStateImpl.getNativePtr(state)));

  @core.override
  late final text =
      to_platform.toPlatformString(_SearchWorkingHours_get_text(_ptr));
  @core.override
  late final availabilities =
      search_availability.SearchAvailabilityContainerExtension.toPlatformVector(
          _SearchWorkingHours_get_availabilities(_ptr));
  @core.override
  late final state =
      SearchStateImpl.fromOptionalPtr(_SearchWorkingHours_get_state(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SearchWorkingHours_free.cast());

  SearchWorkingHoursImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SearchWorkingHours? obj) {
    return (obj as SearchWorkingHoursImpl?)?._ptr ?? ffi.nullptr;
  }

  static SearchWorkingHours? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : SearchWorkingHoursImpl.fromNativePtr(ptr);
  }

  static SearchWorkingHours? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SearchWorkingHoursImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SearchWorkingHours? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SearchWorkingHours_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchWorkingHours_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchWorkingHours_clone')
        .asFunction(isLeaf: true);

final _SearchWorkingHours_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SearchWorkingHours_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _SearchWorkingHours_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(native_types.NativeString,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchWorkingHours_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SearchWorkingHours_get_text = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchWorkingHours_get_text')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchWorkingHours_get_availabilities = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchWorkingHours_get_availabilities')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SearchWorkingHours_get_state = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SearchWorkingHours_get_state')
        .asFunction(isLeaf: true);
