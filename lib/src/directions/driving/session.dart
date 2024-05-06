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
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as runtime_error;

part 'session.containers.dart';
part 'session.impl.dart';

/// Driving session information.
abstract class DrivingSession implements ffi.Finalizable {
  /// Cancels the driving session.
  void cancel();

  /// Tries to create a driving session again.
  void retry(DrivingSessionRouteListener routeListener);
}

abstract final class DrivingSessionRouteListener {
  factory DrivingSessionRouteListener(
      {required void Function(
              core.List<directions_driving_route.DrivingRoute> routes)
          onDrivingRoutes,
      required void Function(runtime_error.Error error) onDrivingRoutesError}) {
    return DrivingSessionRouteListenerImpl(
      onDrivingRoutes: onDrivingRoutes,
      onDrivingRoutesError: onDrivingRoutesError,
    );
  }

  /// Happens when driving routes are generated.
  void onDrivingRoutes(core.List<directions_driving_route.DrivingRoute> routes);

  /// Happens when there is an error.
  void onDrivingRoutesError(runtime_error.Error error);
}

/// Driving session summary.
abstract class DrivingSummarySession implements ffi.Finalizable {
  /// Cancels route summary generation.
  void cancel();

  /// Tries to generate a driving session summary again.
  void retry(DrivingSummarySessionSummaryListener summaryListener);
}

abstract final class DrivingSummarySessionSummaryListener {
  factory DrivingSummarySessionSummaryListener(
      {required void Function(
              core.List<directions_driving_route.DrivingSummary> summaries)
          onDrivingSummaries,
      required void Function(runtime_error.Error error)
          onDrivingSummariesError}) {
    return DrivingSummarySessionSummaryListenerImpl(
      onDrivingSummaries: onDrivingSummaries,
      onDrivingSummariesError: onDrivingSummariesError,
    );
  }

  /// Happens when the summaries are generated.
  void onDrivingSummaries(
      core.List<directions_driving_route.DrivingSummary> summaries);

  /// Happens when there is an error.
  void onDrivingSummariesError(runtime_error.Error error);
}
