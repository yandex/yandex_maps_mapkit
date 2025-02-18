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

/// A single suggested item.
abstract final class SuggestItem implements ffi.Finalizable {
  factory SuggestItem(
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
          SuggestItemBusinessContext? businessContext) =>
      SuggestItemImpl(
          type,
          title,
          subtitle,
          tags,
          searchText,
          displayText,
          uri,
          link,
          distance,
          isPersonal,
          action,
          logId,
          isOffline,
          isWordItem,
          properties,
          center,
          businessContext);

  SuggestItem._();

  /// Suggested object type.
  SuggestItemType get type;

  /// Short object name.
  mapkit_spannable_string.SpannableString get title;

  /// If type is TOPONYM returns reversed toponym hierarchy, if type is
  /// BUSINESS returns business address.
  ///
  mapkit_spannable_string.SpannableString? get subtitle;

  /// Additional free-form data for suggest item. If type is TOPONYM,
  /// returns toponym kind (house/street/locality/...). If type is
  /// BUSINESS, returns category class (drugstores/restaurants/...).
  core.List<core.String> get tags;

  /// Text to search for.
  core.String get searchText;

  /// Text to display if searchText is too technical to display.
  ///
  core.String? get displayText;

  /// Element uri, if applicable.
  ///
  core.String? get uri;

  /// Element link, if applicable.
  ///
  core.String? get link;

  /// Optional distance localized value.
  ///
  mapkit_localized_value.LocalizedValue? get distance;

  /// If the suggested item respects personalization.
  core.bool get isPersonal;

  /// Action to perform on click/tap/enter.
  SuggestItemAction get action;

  /// Id for request logging.
  ///
  core.String? get logId;

  /// Item is from offline search.
  core.bool get isOffline;

  /// Item is a word suggest item.
  core.bool get isWordItem;

  /// Additional item properties.
  core.List<runtime_key_value_pair.KeyValuePair> get properties;

  /// Position of object.
  ///
  mapkit_geometry_point.Point? get center;

  /// Detailed subtype of the Business type
  ///
  SuggestItemBusinessContext? get businessContext;

  @core.override
  core.int get hashCode => core.Object.hashAll([
        type,
        title,
        subtitle,
        tags,
        searchText,
        displayText,
        uri,
        link,
        distance,
        isPersonal,
        action,
        logId,
        isOffline,
        isWordItem,
        properties,
        center,
        businessContext
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
        link == other.link &&
        distance == other.distance &&
        isPersonal == other.isPersonal &&
        action == other.action &&
        logId == other.logId &&
        isOffline == other.isOffline &&
        isWordItem == other.isWordItem &&
        properties == other.properties &&
        center == other.center &&
        businessContext == other.businessContext;
  }

  @core.override
  core.String toString() {
    return "SuggestItem(type: $type, title: $title, subtitle: $subtitle, tags: $tags, searchText: $searchText, displayText: $displayText, uri: $uri, link: $link, distance: $distance, isPersonal: $isPersonal, action: $action, logId: $logId, isOffline: $isOffline, isWordItem: $isWordItem, properties: $properties, center: $center, businessContext: $businessContext)";
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

  /// Web link or deep link
  Link,
  ;
}

/// Action to be performed when user selected suggest item.
enum SuggestItemAction {
  /// Immediately search for `text`.
  Search,

  /// Substitute query by `text` for further editing.
  Substitute,

  /// Exit suggest session and open link
  FollowLink,
  ;
}

/// More detailed info about type=Business response
enum SuggestItemBusinessContext {
  BusinessContextUnknown,
  BusinessContextOrg1,
  BusinessContextRubric,
  BusinessContextChain,
  ;
}

/// A suggest response
abstract final class SuggestResponse implements ffi.Finalizable {
  factory SuggestResponse(core.List<SuggestItem> items) =>
      SuggestResponseImpl(items);

  SuggestResponse._();

  /// Suggest items.
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
