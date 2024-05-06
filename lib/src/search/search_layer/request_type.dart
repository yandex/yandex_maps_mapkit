import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'request_type.containers.dart';
part 'request_type.impl.dart';

/// Type of search layer's search requests.
enum RequestType {
  /// Primary request initiated via new query methods.
  NewQuery,

  /// Manual resubmit on search layer.
  ManualResubmit,

  /// Request to fetch next page of results.
  FetchNextPage,

  /// Request was initiated by map moved via API call.
  MapMoveByApp,

  /// Request was initiated by map moved via user gesture.
  MapMoveByGesture,
  ;
}
