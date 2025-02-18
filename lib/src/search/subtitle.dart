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
import 'package:yandex_maps_mapkit/src/bindings/common/struct_factory.dart'
    as struct_factory;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/base_metadata.dart'
    as mapkit_base_metadata;
import 'package:yandex_maps_mapkit/src/runtime/key_value_pair.dart'
    as runtime_key_value_pair;

part 'subtitle.containers.dart';
part 'subtitle.impl.dart';

/// Separate subtitle of a certain type.
abstract final class SearchSubtitleItem implements ffi.Finalizable {
  factory SearchSubtitleItem(core.String type, core.String? text,
          core.List<runtime_key_value_pair.KeyValuePair> properties) =>
      SearchSubtitleItemImpl(type, text, properties);

  SearchSubtitleItem._();

  /// Subtitle type. For example, "exchange".
  core.String get type;

  /// Short summary text. For example, "USD 57.69/57.3".
  ///
  core.String? get text;

  /// Detailed subtitle info. For example, \[ {"key": "currency", "value":
  /// "USD"}, {"key": "buy", "value": "57.3"}, {"key": "sell", "value":
  /// "57.69"} \].
  core.List<runtime_key_value_pair.KeyValuePair> get properties;

  @core.override
  core.int get hashCode => core.Object.hashAll([type, text, properties]);

  @core.override
  core.bool operator ==(covariant SearchSubtitleItem other) {
    if (core.identical(this, other)) {
      return true;
    }
    return type == other.type &&
        text == other.text &&
        properties == other.properties;
  }

  @core.override
  core.String toString() {
    return "SearchSubtitleItem(type: $type, text: $text, properties: $properties)";
  }
}

/// Subtitle snippet.
abstract final class SearchSubtitleMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory SearchSubtitleMetadata(core.List<SearchSubtitleItem> subtitleItems,
          core.List<SearchSubtitleItem> serpSubtitleItems) =>
      SearchSubtitleMetadataImpl(subtitleItems, serpSubtitleItems);

  SearchSubtitleMetadata._();

  /// List of subtitles.
  core.List<SearchSubtitleItem> get subtitleItems;

  /// List of subtitles to be displayed in SERP.
  core.List<SearchSubtitleItem> get serpSubtitleItems;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([subtitleItems, serpSubtitleItems]);

  @core.override
  core.bool operator ==(covariant SearchSubtitleMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return subtitleItems == other.subtitleItems &&
        serpSubtitleItems == other.serpSubtitleItems;
  }

  @core.override
  core.String toString() {
    return "SearchSubtitleMetadata(subtitleItems: $subtitleItems, serpSubtitleItems: $serpSubtitleItems)";
  }

  static final struct_factory.StructFactory<SearchSubtitleMetadata> factory =
      const _SearchSubtitleMetadataFactory();
}
