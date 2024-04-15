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
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/mapkit/localized_value.dart'
    as mapkit_localized_value;
import 'package:yandex_maps_mapkit/src/mapkit/spannable_string.dart'
    as mapkit_spannable_string;
import 'package:yandex_maps_mapkit/src/runtime/key_value_pair.dart'
    as runtime_key_value_pair;

part 'suggest_response.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SuggestItem.toPointer',
    toPlatform: '(val) => SuggestItem.fromPointer(val, needFree: false)')
class SuggestItem implements ffi.Finalizable {
  late final type = SuggestItemType.fromInt(_SuggestItem_get_type(_ptr));
  late final title = mapkit_spannable_string.SpannableString.fromNativePtr(
      _SuggestItem_get_title(_ptr));
  late final subtitle = mapkit_spannable_string.SpannableString.fromOptionalPtr(
      _SuggestItem_get_subtitle(_ptr));
  late final tags = to_platform.toVectorString(_SuggestItem_get_tags(_ptr));
  late final searchText =
      to_platform.toPlatformString(_SuggestItem_get_searchText(_ptr));
  late final displayText = to_platform
      .toPlatformFromPointerString(_SuggestItem_get_displayText(_ptr));
  late final uri =
      to_platform.toPlatformFromPointerString(_SuggestItem_get_uri(_ptr));
  late final distance = mapkit_localized_value.LocalizedValue.fromPointer(
      _SuggestItem_get_distance(_ptr));
  late final isPersonal = _SuggestItem_get_isPersonal(_ptr);
  late final action = SuggestItemAction.fromInt(_SuggestItem_get_action(_ptr));
  late final logId =
      to_platform.toPlatformFromPointerString(_SuggestItem_get_logId(_ptr));
  late final isOffline = _SuggestItem_get_isOffline(_ptr);
  late final isWordItem = _SuggestItem_get_isWordItem(_ptr);
  late final properties =
      runtime_key_value_pair.KeyValuePairContainerExtension.toPlatformVector(
          _SuggestItem_get_properties(_ptr));
  late final center =
      mapkit_geometry_point.Point.fromPointer(_SuggestItem_get_center(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SuggestItem_free.cast());

  SuggestItem(
      SuggestItemType type,
      mapkit_spannable_string.SpannableString title,
      mapkit_spannable_string.SpannableString? subtitle,
      core.List<core.String> tags,
      core.String searchText,
      core.String? displayText,
      core.String? uri,
      mapkit_localized_value.LocalizedValue? distance,
      core.bool isPersonal,
      SuggestItemAction action,
      core.String? logId,
      core.bool isOffline,
      core.bool isWordItem,
      core.List<runtime_key_value_pair.KeyValuePair> properties,
      mapkit_geometry_point.Point? center)
      : this.fromNativePtr(_SuggestItem_init(
            SuggestItemType.toInt(type),
            mapkit_spannable_string.SpannableString.getNativePtr(title),
            mapkit_spannable_string.SpannableString.getNativePtr(subtitle),
            to_native.toNativeVectorString(tags),
            to_native.toNativeString(searchText),
            to_native.toNativePtrString(displayText),
            to_native.toNativePtrString(uri),
            mapkit_localized_value.LocalizedValue.toPointer(distance),
            isPersonal,
            SuggestItemAction.toInt(action),
            to_native.toNativePtrString(logId),
            isOffline,
            isWordItem,
            runtime_key_value_pair.KeyValuePairContainerExtension
                .toNativeVector(properties),
            mapkit_geometry_point.Point.toPointer(center)));

  /// @nodoc
  @internal
  SuggestItem.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SuggestItem? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SuggestItem? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SuggestItem.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SuggestItem? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SuggestItem.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SuggestItem? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SuggestItem_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>) _SuggestItem_clone =
    lib
        .library
        .lookup<
                ffi
                .NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestItem_clone')
        .asFunction(isLeaf: true);

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
        core.bool,
        core.int,
        ffi.Pointer<ffi.Void>,
        core.bool,
        core.bool,
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
                        ffi.Bool,
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>,
                        ffi.Bool,
                        ffi.Bool,
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

/// Suggest item type.
@bindings_annotations.ContainerData(
    toNative: 'SuggestItemType.toPointer',
    toPlatform: '(val) => SuggestItemType.fromPointer(val, needFree: false)')
enum SuggestItemType {
  /// For backward compatibility in future.
  Unknown,

  /// City, street, house etc.
  Toponym,

  /// Company with specific location.
  Business,

  /// Public transport route number or transit-related keyword.
  Transit,
  ;

  /// @nodoc
  @internal
  static SuggestItemType fromInt(core.int val) {
    return SuggestItemType.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(SuggestItemType e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static SuggestItemType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(SuggestItemType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// Action to be performed when user selected suggest item.
@bindings_annotations.ContainerData(
    toNative: 'SuggestItemAction.toPointer',
    toPlatform: '(val) => SuggestItemAction.fromPointer(val, needFree: false)')
enum SuggestItemAction {
  /// Immediately search for `text`.
  Search,

  /// Substitute query by `text` for further editing.
  Substitute,
  ;

  /// @nodoc
  @internal
  static SuggestItemAction fromInt(core.int val) {
    return SuggestItemAction.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(SuggestItemAction e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static SuggestItemAction? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(SuggestItemAction? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SuggestResponse.toPointer',
    toPlatform: '(val) => SuggestResponse.fromPointer(val, needFree: false)')
class SuggestResponse implements ffi.Finalizable {
  late final items = SuggestItemContainerExtension.toPlatformVector(
      _SuggestResponse_get_items(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_SuggestResponse_free.cast());

  SuggestResponse(core.List<SuggestItem> items)
      : this.fromNativePtr(_SuggestResponse_init(
            SuggestItemContainerExtension.toNativeVector(items)));

  /// @nodoc
  @internal
  SuggestResponse.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(SuggestResponse? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static SuggestResponse? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SuggestResponse.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static SuggestResponse? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SuggestResponse.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SuggestResponse? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _SuggestResponse_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _SuggestResponse_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_search_SuggestResponse_clone')
        .asFunction(isLeaf: true);

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
