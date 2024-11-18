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

part 'business_rating_1x_object_metadata.containers.dart';
part 'business_rating_1x_object_metadata.impl.dart';

/// Snippet for company ratings. Score from 0 to 5.
abstract final class SearchBusinessRating1xObjectMetadata
    extends mapkit_base_metadata.BaseMetadata implements ffi.Finalizable {
  factory SearchBusinessRating1xObjectMetadata(
          core.int ratings, core.int reviews, core.double? score) =>
      SearchBusinessRating1xObjectMetadataImpl(ratings, reviews, score);

  /// Total number of ratings.
  core.int get ratings;

  /// Total number of reviews.
  core.int get reviews;

  /// Average rating score for the company (0 to 5).
  ///
  core.double? get score;

  @core.override
  core.int get hashCode => core.Object.hashAll([ratings, reviews, score]);

  @core.override
  core.bool operator ==(covariant SearchBusinessRating1xObjectMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return ratings == other.ratings &&
        reviews == other.reviews &&
        score == other.score;
  }

  @core.override
  core.String toString() {
    return "SearchBusinessRating1xObjectMetadata(ratings: $ratings, reviews: $reviews, score: $score)";
  }

  static final struct_factory
      .StructFactory<SearchBusinessRating1xObjectMetadata> factory =
      const _SearchBusinessRating1xObjectMetadataFactory();
}
