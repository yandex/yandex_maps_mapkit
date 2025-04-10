part of 'suggest_response.dart';

@bindings_annotations.ContainerData(
    toNative: 'SuggestItemImpl.getNativePtr',
    toPlatform: '(val) => SuggestItemImpl.fromPointer(val, needFree: false)',
    platformType: 'SuggestItem')
final class SuggestItemImpl extends SuggestItem {
  SuggestItemImpl(
      SuggestItemType type,
      mapkit_spannable_string.SpannableString title,
      mapkit_spannable_string.SpannableString? subtitle,
      core.List<core.String> tags,
      core.String searchText,
      core.String? displayText,
      core.String? uri,
      core.String? link,
      mapkit_localized_value.LocalizedValue? distance,
      core.bool isPersonal,
      SuggestItemAction action,
      core.String? logId,
      core.bool isOffline,
      core.bool isWordItem,
      core.List<runtime_key_value_pair.KeyValuePair> properties,
      mapkit_geometry_point.Point? center,
      SuggestItemBusinessContext? businessContext)
      : this.fromNativePtr(_SuggestItem_init(
            SuggestItemTypeImpl.toInt(type),
            mapkit_spannable_string.SpannableStringImpl.getNativePtr(title),
            mapkit_spannable_string.SpannableStringImpl.getNativePtr(subtitle),
            to_native.toNativeVectorString(tags),
            to_native.toNativeString(searchText),
            to_native.toNativePtrString(displayText),
            to_native.toNativePtrString(uri),
            to_native.toNativePtrString(link),
            mapkit_localized_value.LocalizedValueImpl.toPointer(distance),
            isPersonal,
            SuggestItemActionImpl.toInt(action),
            to_native.toNativePtrString(logId),
            isOffline,
            isWordItem,
            runtime_key_value_pair.KeyValuePairContainerExtension
                .toNativeVector(properties),
            mapkit_geometry_point.PointImpl.toPointer(center),
            SuggestItemBusinessContextImpl.toPointer(businessContext)));

  @core.override
  late final type = SuggestItemTypeImpl.fromInt(_SuggestItem_get_type(_ptr));
  @core.override
  late final title = mapkit_spannable_string.SpannableStringImpl.fromNativePtr(
      _SuggestItem_get_title(_ptr));
  @core.override
  late final subtitle =
      mapkit_spannable_string.SpannableStringImpl.fromOptionalPtr(
          _SuggestItem_get_subtitle(_ptr));
  @core.override
  late final tags = to_platform.toVectorString(_SuggestItem_get_tags(_ptr));
  @core.override
  late final searchText =
      to_platform.toPlatformString(_SuggestItem_get_searchText(_ptr));
  @core.override
  late final displayText = to_platform
      .toPlatformFromPointerString(_SuggestItem_get_displayText(_ptr));
  @core.override
  late final uri =
      to_platform.toPlatformFromPointerString(_SuggestItem_get_uri(_ptr));
  @core.override
  late final link =
      to_platform.toPlatformFromPointerString(_SuggestItem_get_link(_ptr));
  @core.override
  late final distance = mapkit_localized_value.LocalizedValueImpl.fromPointer(
      _SuggestItem_get_distance(_ptr));
  @core.override
  late final isPersonal = _SuggestItem_get_isPersonal(_ptr);
  @core.override
  late final action =
      SuggestItemActionImpl.fromInt(_SuggestItem_get_action(_ptr));
  @core.override
  late final logId =
      to_platform.toPlatformFromPointerString(_SuggestItem_get_logId(_ptr));
  @core.override
  late final isOffline = _SuggestItem_get_isOffline(_ptr);
  @core.override
  late final isWordItem = _SuggestItem_get_isWordItem(_ptr);
  @core.override
  late final properties =
      runtime_key_value_pair.KeyValuePairContainerExtension.toPlatformVector(
          _SuggestItem_get_properties(_ptr));
  @core.override
  late final center = mapkit_geometry_point.PointImpl.fromPointer(
      _SuggestItem_get_center(_ptr));
  @core.override
  late final businessContext = SuggestItemBusinessContextImpl.fromPointer(
      _SuggestItem_get_businessContext(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SuggestItem_free.cast());

  SuggestItemImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SuggestItem? obj) {
    return (obj as SuggestItemImpl?)?._ptr ?? ffi.nullptr;
  }

  static SuggestItem? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : SuggestItemImpl.fromNativePtr(ptr);
  }

  static SuggestItem? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        SuggestItemImpl.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SuggestItem_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SuggestItem_free');

final ffi.Pointer<ffi.Void> Function(
        core.int,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        core.bool,
        core.int,
        ffi.Pointer<ffi.Void>,
        core.bool,
        core.bool,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _SuggestItem_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Bool,
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>,
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_init')
        .asFunction(isLeaf: true);

final core.int Function(ffi.Pointer<ffi.Void>) _SuggestItem_get_type = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SuggestItem_get_type')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SuggestItem_get_title = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_get_title')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SuggestItem_get_subtitle = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_get_subtitle')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SuggestItem_get_tags = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_get_tags')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _SuggestItem_get_searchText = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_get_searchText')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SuggestItem_get_displayText = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_get_displayText')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SuggestItem_get_uri = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_get_uri')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SuggestItem_get_link = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_get_link')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SuggestItem_get_distance = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_get_distance')
        .asFunction(isLeaf: true);
final core.bool Function(ffi.Pointer<ffi.Void>) _SuggestItem_get_isPersonal =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_get_isPersonal')
        .asFunction(isLeaf: true);
final core.int Function(ffi.Pointer<ffi.Void>) _SuggestItem_get_action = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SuggestItem_get_action')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SuggestItem_get_logId = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_get_logId')
        .asFunction(isLeaf: true);
final core.bool Function(ffi.Pointer<ffi.Void>) _SuggestItem_get_isOffline = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_search_SuggestItem_get_isOffline')
    .asFunction(isLeaf: true);
final core.bool Function(ffi.Pointer<ffi.Void>) _SuggestItem_get_isWordItem =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_get_isWordItem')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SuggestItem_get_properties = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_get_properties')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SuggestItem_get_center = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_get_center')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SuggestItem_get_businessContext = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_get_businessContext')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SuggestItemTypeImpl.toPointer',
    toPlatform:
        '(val) => SuggestItemTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'SuggestItemType')
extension SuggestItemTypeImpl on SuggestItemType {
  static core.int toInt(SuggestItemType e) {
    return e.index;
  }

  static SuggestItemType fromInt(core.int val) {
    return SuggestItemType.values[val];
  }

  static SuggestItemType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(SuggestItemType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SuggestItemActionImpl.toPointer',
    toPlatform:
        '(val) => SuggestItemActionImpl.fromPointer(val, needFree: false)',
    platformType: 'SuggestItemAction')
extension SuggestItemActionImpl on SuggestItemAction {
  static core.int toInt(SuggestItemAction e) {
    return e.index;
  }

  static SuggestItemAction fromInt(core.int val) {
    return SuggestItemAction.values[val];
  }

  static SuggestItemAction? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(SuggestItemAction? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SuggestItemBusinessContextImpl.toPointer',
    toPlatform:
        '(val) => SuggestItemBusinessContextImpl.fromPointer(val, needFree: false)',
    platformType: 'SuggestItemBusinessContext')
extension SuggestItemBusinessContextImpl on SuggestItemBusinessContext {
  static core.int toInt(SuggestItemBusinessContext e) {
    return e.index;
  }

  static SuggestItemBusinessContext fromInt(core.int val) {
    return SuggestItemBusinessContext.values[val];
  }

  static SuggestItemBusinessContext? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(SuggestItemBusinessContext? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SuggestResponseImpl.getNativePtr',
    toPlatform:
        '(val) => SuggestResponseImpl.fromPointer(val, needFree: false)',
    platformType: 'SuggestResponse')
final class SuggestResponseImpl extends SuggestResponse {
  SuggestResponseImpl(core.List<SuggestItem> items)
      : this.fromNativePtr(_SuggestResponse_init(
            SuggestItemContainerExtension.toNativeVector(items)));

  @core.override
  late final items = SuggestItemContainerExtension.toPlatformVector(
      _SuggestResponse_get_items(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SuggestResponse_free.cast());

  SuggestResponseImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SuggestResponse? obj) {
    return (obj as SuggestResponseImpl?)?._ptr ?? ffi.nullptr;
  }

  static SuggestResponse? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : SuggestResponseImpl.fromNativePtr(ptr);
  }

  static SuggestResponse? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SuggestResponseImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _SuggestResponse_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_search_SuggestResponse_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SuggestResponse_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestResponse_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SuggestResponse_get_items = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestResponse_get_items')
        .asFunction(isLeaf: true);
