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

  core.String get id;
  core.String? get name;
  core.bool? get disabled;
  mapkit_image.Image? get iconLight;
  mapkit_image.Image? get iconDark;
  core.bool? get singleSelect;
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

final class SearchBusinessFilterBooleanValue {
  final core.bool value;
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

abstract final class SearchBusinessFilterEnumValue implements ffi.Finalizable {
  factory SearchBusinessFilterEnumValue(
          search_feature.SearchFeatureEnumValue value,
          core.bool? selected,
          core.bool? disabled) =>
      SearchBusinessFilterEnumValueImpl(value, selected, disabled);

  search_feature.SearchFeatureEnumValue get value;
  core.bool? get selected;
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

final class SearchBusinessFilterRangeValue {
  final core.double from;
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

final class SearchBusinessFilterDateValue {
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

abstract final class SearchFilterSet implements ffi.Finalizable {
  factory SearchFilterSet(core.List<core.String> ids) =>
      SearchFilterSetImpl(ids);

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
