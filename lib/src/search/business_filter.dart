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
import 'package:yandex_maps_mapkit/src/mapkit/image.dart' as mapkit_image;
import 'package:yandex_maps_mapkit/src/search/feature.dart' as search_feature;

part 'business_filter.containers.dart';
part 'business_filter.impl.dart';

/// A filter that could be applied to search results.
///
/// Filters can be either boolean (that is Wi-Fi availability in a cafe)
/// or enumerated (that is cuisine type in a restaurant). Enumerated
/// filters support multiple selected values (OR-combined), to search,
/// for example, for restaurants with Armenian or Georgian cuisine at
/// once.
///
/// This class is used in two separate ways: server response contains all
/// filters applicable to current search request and client can use some
/// of these filters to get more specific results in the following search
/// requests
abstract final class SearchBusinessFilter implements ffi.Finalizable {
  factory SearchBusinessFilter(
          core.String id,
          core.String? name,
          core.bool? disabled,
          mapkit_image.Image? iconLight,
          mapkit_image.Image? iconDark,
          core.bool? singleSelect,
          SearchBusinessFilterValues values) =>
      SearchBusinessFilterImpl(
          id, name, disabled, iconLight, iconDark, singleSelect, values);

  SearchBusinessFilter._();

  /// Filter id.
  core.String get id;

  /// Human-readable filter name.
  ///
  core.String? get name;

  /// The filter should not be used by the client, because filter is either
  /// used already (selected:true, disabled:true) or nothing would be found
  /// (selected:false, disabled:true).
  ///
  core.bool? get disabled;
  mapkit_image.Image? get iconLight;
  mapkit_image.Image? get iconDark;

  /// Only one of multiple available values should be selected.
  ///
  core.bool? get singleSelect;

  /// Filter values.
  SearchBusinessFilterValues get values;

  @core.override
  core.int get hashCode => core.Object.hashAll(
      [id, name, disabled, iconLight, iconDark, singleSelect, values]);

  @core.override
  core.bool operator ==(covariant SearchBusinessFilter other) {
    if (core.identical(this, other)) {
      return true;
    }
    return id == other.id &&
        name == other.name &&
        disabled == other.disabled &&
        iconLight == other.iconLight &&
        iconDark == other.iconDark &&
        singleSelect == other.singleSelect &&
        values == other.values;
  }

  @core.override
  core.String toString() {
    return "SearchBusinessFilter(id: $id, name: $name, disabled: $disabled, iconLight: $iconLight, iconDark: $iconDark, singleSelect: $singleSelect, values: $values)";
  }
}

/// Value for boolean filters.

final class SearchBusinessFilterBooleanValue {
  /// Filter value. Set in server reponse for selected filters.
  final core.bool value;

  /// Selected marker. Set in server response for selected filters.
  ///
  final core.bool? selected;

  const SearchBusinessFilterBooleanValue({
    required this.value,
    this.selected,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([value, selected]);

  @core.override
  core.bool operator ==(covariant SearchBusinessFilterBooleanValue other) {
    if (core.identical(this, other)) {
      return true;
    }
    return value == other.value && selected == other.selected;
  }

  @core.override
  core.String toString() {
    return "SearchBusinessFilterBooleanValue(value: $value, selected: $selected)";
  }
}

/// Value for enum filters.
abstract final class SearchBusinessFilterEnumValue implements ffi.Finalizable {
  factory SearchBusinessFilterEnumValue(
          search_feature.SearchFeatureEnumValue value,
          core.bool? selected,
          core.bool? disabled) =>
      SearchBusinessFilterEnumValueImpl(value, selected, disabled);

  SearchBusinessFilterEnumValue._();

  /// Filter value. Set in server response for selected filters.
  search_feature.SearchFeatureEnumValue get value;

  /// Selected marker. Set in server response for selected filters.
  ///
  core.bool? get selected;

  /// Same as [SearchBusinessFilter.disabled], but for this specific enum
  /// value.
  ///
  core.bool? get disabled;

  @core.override
  core.int get hashCode => core.Object.hashAll([value, selected, disabled]);

  @core.override
  core.bool operator ==(covariant SearchBusinessFilterEnumValue other) {
    if (core.identical(this, other)) {
      return true;
    }
    return value == other.value &&
        selected == other.selected &&
        disabled == other.disabled;
  }

  @core.override
  core.String toString() {
    return "SearchBusinessFilterEnumValue(value: $value, selected: $selected, disabled: $disabled)";
  }
}

/// Value for range filters.

final class SearchBusinessFilterRangeValue {
  /// Minimum allowed filter value.
  final core.double from;

  /// Maximum allowed filter value.
  final core.double to;

  const SearchBusinessFilterRangeValue({
    required this.from,
    required this.to,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([from, to]);

  @core.override
  core.bool operator ==(covariant SearchBusinessFilterRangeValue other) {
    if (core.identical(this, other)) {
      return true;
    }
    return from == other.from && to == other.to;
  }

  @core.override
  core.String toString() {
    return "SearchBusinessFilterRangeValue(from: $from, to: $to)";
  }
}

/// Value for date filters.

final class SearchBusinessFilterDateValue {
  /// @nodoc
  /// Dummy field to make code generation work.
  final core.int reserved;

  const SearchBusinessFilterDateValue({
    required this.reserved,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([reserved]);

  @core.override
  core.bool operator ==(covariant SearchBusinessFilterDateValue other) {
    if (core.identical(this, other)) {
      return true;
    }
    return reserved == other.reserved;
  }

  @core.override
  core.String toString() {
    return "SearchBusinessFilterDateValue(reserved: $reserved)";
  }
}

/// Possible filter values.
final class SearchBusinessFilterValues {
  const SearchBusinessFilterValues.fromVectorBooleanValue(
      core.List<SearchBusinessFilterBooleanValue> booleans)
      : _value = booleans;

  const SearchBusinessFilterValues.fromVectorEnumValue(
      core.List<SearchBusinessFilterEnumValue> enums)
      : _value = enums;

  const SearchBusinessFilterValues.fromRangeValue(
      SearchBusinessFilterRangeValue range)
      : _value = range;

  const SearchBusinessFilterValues.fromDateValue(
      SearchBusinessFilterDateValue date)
      : _value = date;

  core.List<SearchBusinessFilterBooleanValue>? asVectorBooleanValue() {
    if (_value is core.List<SearchBusinessFilterBooleanValue>) {
      return _value;
    }
    return null;
  }

  core.List<SearchBusinessFilterEnumValue>? asVectorEnumValue() {
    if (_value is core.List<SearchBusinessFilterEnumValue>) {
      return _value;
    }
    return null;
  }

  SearchBusinessFilterRangeValue? asRangeValue() {
    if (_value is SearchBusinessFilterRangeValue) {
      return _value;
    }
    return null;
  }

  SearchBusinessFilterDateValue? asDateValue() {
    if (_value is SearchBusinessFilterDateValue) {
      return _value;
    }
    return null;
  }

  /// Applies the passed function to the variant value.
  void when({
    required void Function(core.List<SearchBusinessFilterBooleanValue> value)
        onVectorBooleanValue,
    required void Function(core.List<SearchBusinessFilterEnumValue> value)
        onVectorEnumValue,
    required void Function(SearchBusinessFilterRangeValue value) onRangeValue,
    required void Function(SearchBusinessFilterDateValue value) onDateValue,
  }) {
    if (_value is core.List<SearchBusinessFilterBooleanValue>) {
      return onVectorBooleanValue(
          _value as core.List<SearchBusinessFilterBooleanValue>);
    }
    if (_value is core.List<SearchBusinessFilterEnumValue>) {
      return onVectorEnumValue(
          _value as core.List<SearchBusinessFilterEnumValue>);
    }
    if (_value is SearchBusinessFilterRangeValue) {
      return onRangeValue(_value as SearchBusinessFilterRangeValue);
    }
    if (_value is SearchBusinessFilterDateValue) {
      return onDateValue(_value as SearchBusinessFilterDateValue);
    }
    assert(false);
  }

  final core.dynamic _value;
}

/// Collection of filters.
abstract final class SearchFilterSet implements ffi.Finalizable {
  factory SearchFilterSet(core.List<core.String> ids) =>
      SearchFilterSetImpl(ids);

  SearchFilterSet._();

  /// IDs for filters in the collection.
  core.List<core.String> get ids;

  @core.override
  core.int get hashCode => core.Object.hashAll([ids]);

  @core.override
  core.bool operator ==(covariant SearchFilterSet other) {
    if (core.identical(this, other)) {
      return true;
    }
    return ids == other.ids;
  }

  @core.override
  core.String toString() {
    return "SearchFilterSet(ids: $ids)";
  }
}
