import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_mapkit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as runtime_error;

part 'service.containers.dart';
part 'service.impl.dart';

/// The interface that handles panoramas.
abstract class PanoramaService implements ffi.Finalizable {
  /// Requests the ID of the panorama that is closest to the specified
  /// position.
  ///
  /// [position] Position to find the nearest panoramaId to.
  /// [searchListener] Receives the panorama search result.
  ///
  /// Return Session handle that should be stored until searchListener is
  /// notified.
  PanoramaServiceSearchSession findNearest(mapkit_geometry_point.Point position,
      PanoramaServiceSearchListener searchListener);
}

abstract final class PanoramaServiceSearchListener {
  factory PanoramaServiceSearchListener(
      {required void Function(core.String panoramaId) onPanoramaSearchResult,
      required void Function(runtime_error.Error error)
          onPanoramaSearchError}) {
    return PanoramaServiceSearchListenerImpl(
      onPanoramaSearchResult: onPanoramaSearchResult,
      onPanoramaSearchError: onPanoramaSearchError,
    );
  }

  /// Callback for panoramaId result.
  ///
  /// [panoramaId] The ID of the nearest panorama for the requested
  /// position.
  void onPanoramaSearchResult(core.String panoramaId);

  /// Callback for error processing.
  ///
  /// [error] Error description.
  void onPanoramaSearchError(runtime_error.Error error);
}

/// Session for receiving the result of the findNearest() method.
///
/// Should be stored until the listener is notified. Can be used to
/// cancel the active request. Can be used to retry the last request (for
/// example, if it failed).
abstract class PanoramaServiceSearchSession implements ffi.Finalizable {
  /// Retries the last request.
  void retry(PanoramaServiceSearchListener searchListener);

  /// Cancels the active request.
  void cancel();
}
