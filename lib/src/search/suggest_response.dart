import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
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
part 'suggest_response.impl.dart';

abstract final class SuggestItem implements ffi.Finalizable {
  factory SuggestItem(
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
          mapkit_geometry_point.Point? center) =>
      SuggestItemImpl(
          type,
          title,
          subtitle,
          tags,
          searchText,
          displayText,
          uri,
          distance,
          isPersonal,
          action,
          logId,
          isOffline,
          isWordItem,
          properties,
          center);

  SuggestItemType get type;
  mapkit_spannable_string.SpannableString get title;
  mapkit_spannable_string.SpannableString? get subtitle;
  core.List<core.String> get tags;
  core.String get searchText;
  core.String? get displayText;
  core.String? get uri;
  mapkit_localized_value.LocalizedValue? get distance;
  core.bool get isPersonal;
  SuggestItemAction get action;
  core.String? get logId;
  core.bool get isOffline;
  core.bool get isWordItem;
  core.List<runtime_key_value_pair.KeyValuePair> get properties;
  mapkit_geometry_point.Point? get center;

  @core.override
  core.int get hashCode => core.Object.hashAll([
        type,
        title,
        subtitle,
        tags,
        searchText,
        displayText,
        uri,
        distance,
        isPersonal,
        action,
        logId,
        isOffline,
        isWordItem,
        properties,
        center
      ]);

  @core.override
  core.bool operator ==(covariant SuggestItem other) {
    if (core.identical(this, other)) {
      return true;
    }
    return type == other.type &&
        title == other.title &&
        subtitle == other.subtitle &&
        tags == other.tags &&
        searchText == other.searchText &&
        displayText == other.displayText &&
        uri == other.uri &&
        distance == other.distance &&
        isPersonal == other.isPersonal &&
        action == other.action &&
        logId == other.logId &&
        isOffline == other.isOffline &&
        isWordItem == other.isWordItem &&
        properties == other.properties &&
        center == other.center;
  }

  @core.override
  core.String toString() {
    return "SuggestItem(type: $type, title: $title, subtitle: $subtitle, tags: $tags, searchText: $searchText, displayText: $displayText, uri: $uri, distance: $distance, isPersonal: $isPersonal, action: $action, logId: $logId, isOffline: $isOffline, isWordItem: $isWordItem, properties: $properties, center: $center)";
  }
}

/// Suggest item type.
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
}

/// Action to be performed when user selected suggest item.
enum SuggestItemAction {
  /// Immediately search for `text`.
  Search,

  /// Substitute query by `text` for further editing.
  Substitute,
  ;
}

abstract final class SuggestResponse implements ffi.Finalizable {
  factory SuggestResponse(core.List<SuggestItem> items) =>
      SuggestResponseImpl(items);

  core.List<SuggestItem> get items;

  @core.override
  core.int get hashCode => core.Object.hashAll([items]);

  @core.override
  core.bool operator ==(covariant SuggestResponse other) {
    if (core.identical(this, other)) {
      return true;
    }
    return items == other.items;
  }

  @core.override
  core.String toString() {
    return "SuggestResponse(items: $items)";
  }
}
