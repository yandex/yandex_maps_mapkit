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
import 'package:yandex_maps_mapkit/src/mapkit/attribution.dart'
    as mapkit_attribution;
import 'package:yandex_maps_mapkit/src/mapkit/image.dart' as mapkit_image;

part 'feature.containers.dart';
part 'feature.impl.dart';

/// Describes some common feature of organizations. Can be of three
/// types:
///
/// - boolean (like on/off switch, as for free Wi-Fi availability).
///
/// - enumerated (can have multiple values at once, like cuisine types in
/// a cafe).
///
/// - text (like enumerated but with any strings instead of predefined
/// values).
abstract final class SearchFeature implements ffi.Finalizable {
  factory SearchFeature(
          core.String id,
          SearchFeatureVariantValue value,
          core.String? name,
          core.String? aref,
          mapkit_image.Image? iconLight,
          mapkit_image.Image? iconDark) =>
      SearchFeatureImpl(id, value, name, aref, iconLight, iconDark);

  SearchFeature._();

  /// Machine readable feature identifier.
  core.String get id;

  /// Feature value (depends on feature type).
  SearchFeatureVariantValue get value;

  /// Human readable localized representation.
  ///
  core.String? get name;

  /// Reference to information source providing given feature (see
  /// [mapkit_attribution.Attribution])
  ///
  core.String? get aref;
  mapkit_image.Image? get iconLight;
  mapkit_image.Image? get iconDark;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([id, value, name, aref, iconLight, iconDark]);

  @core.override
  core.bool operator ==(covariant SearchFeature other) {
    if (core.identical(this, other)) {
      return true;
    }
    return id == other.id &&
        value == other.value &&
        name == other.name &&
        aref == other.aref &&
        iconLight == other.iconLight &&
        iconDark == other.iconDark;
  }

  @core.override
  core.String toString() {
    return "SearchFeature(id: $id, value: $value, name: $name, aref: $aref, iconLight: $iconLight, iconDark: $iconDark)";
  }
}

/// Value for enumerated features.
abstract final class SearchFeatureEnumValue implements ffi.Finalizable {
  factory SearchFeatureEnumValue(core.String id, core.String name,
          core.String? imageUrlTemplate, core.List<core.String> tags) =>
      SearchFeatureEnumValueImpl(id, name, imageUrlTemplate, tags);

  SearchFeatureEnumValue._();

  /// Machine readable value identifier.
  core.String get id;

  /// Human readable localized representation.
  core.String get name;

  /// urlTemplate for the image. Available sizes are listed here:
  /// http://api.yandex.ru/fotki/doc/format-ref/f-img.xml
  ///
  core.String? get imageUrlTemplate;
  core.List<core.String> get tags;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([id, name, imageUrlTemplate, tags]);

  @core.override
  core.bool operator ==(covariant SearchFeatureEnumValue other) {
    if (core.identical(this, other)) {
      return true;
    }
    return id == other.id &&
        name == other.name &&
        imageUrlTemplate == other.imageUrlTemplate &&
        tags == other.tags;
  }

  @core.override
  core.String toString() {
    return "SearchFeatureEnumValue(id: $id, name: $name, imageUrlTemplate: $imageUrlTemplate, tags: $tags)";
  }
}

final class SearchFeatureBooleanValue {
  final core.bool value;

  const SearchFeatureBooleanValue({
    required this.value,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([value]);

  @core.override
  core.bool operator ==(covariant SearchFeatureBooleanValue other) {
    if (core.identical(this, other)) {
      return true;
    }
    return value == other.value;
  }

  @core.override
  core.String toString() {
    return "SearchFeatureBooleanValue(value: $value)";
  }
}

/// A variant combining possible feature values.
final class SearchFeatureVariantValue {
  const SearchFeatureVariantValue.fromBooleanValue(
      SearchFeatureBooleanValue booleanValue)
      : _value = booleanValue;

  const SearchFeatureVariantValue.fromVectorString(
      core.List<core.String> textValue)
      : _value = textValue;

  const SearchFeatureVariantValue.fromVectorEnumValue(
      core.List<SearchFeatureEnumValue> enumValue)
      : _value = enumValue;

  SearchFeatureBooleanValue? asBooleanValue() {
    if (_value is SearchFeatureBooleanValue) {
      return _value;
    }
    return null;
  }

  core.List<core.String>? asVectorString() {
    if (_value is core.List<core.String>) {
      return _value;
    }
    return null;
  }

  core.List<SearchFeatureEnumValue>? asVectorEnumValue() {
    if (_value is core.List<SearchFeatureEnumValue>) {
      return _value;
    }
    return null;
  }

  /// Applies the passed function to the variant value.
  void when({
    required void Function(SearchFeatureBooleanValue value) onBooleanValue,
    required void Function(core.List<core.String> value) onVectorString,
    required void Function(core.List<SearchFeatureEnumValue> value)
        onVectorEnumValue,
  }) {
    if (_value is SearchFeatureBooleanValue) {
      return onBooleanValue(_value as SearchFeatureBooleanValue);
    }
    if (_value is core.List<core.String>) {
      return onVectorString(_value as core.List<core.String>);
    }
    if (_value is core.List<SearchFeatureEnumValue>) {
      return onVectorEnumValue(_value as core.List<SearchFeatureEnumValue>);
    }
    assert(false);
  }

  final core.dynamic _value;
}

/// Collection of features.
abstract final class SearchFeatureSet implements ffi.Finalizable {
  factory SearchFeatureSet(core.List<core.String> ids) =>
      SearchFeatureSetImpl(ids);

  SearchFeatureSet._();

  /// IDs for features in the collection.
  core.List<core.String> get ids;

  @core.override
  core.int get hashCode => core.Object.hashAll([ids]);

  @core.override
  core.bool operator ==(covariant SearchFeatureSet other) {
    if (core.identical(this, other)) {
      return true;
    }
    return ids == other.ids;
  }

  @core.override
  core.String toString() {
    return "SearchFeatureSet(ids: $ids)";
  }
}

/// Group of features.
abstract final class SearchFeatureGroup implements ffi.Finalizable {
  factory SearchFeatureGroup(core.String? name, core.List<core.String> ids) =>
      SearchFeatureGroupImpl(name, ids);

  SearchFeatureGroup._();

  /// Group name.
  ///
  core.String? get name;

  /// IDs for features in the group.
  core.List<core.String> get ids;

  @core.override
  core.int get hashCode => core.Object.hashAll([name, ids]);

  @core.override
  core.bool operator ==(covariant SearchFeatureGroup other) {
    if (core.identical(this, other)) {
      return true;
    }
    return name == other.name && ids == other.ids;
  }

  @core.override
  core.String toString() {
    return "SearchFeatureGroup(name: $name, ids: $ids)";
  }
}
