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
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as runtime_error;
import 'package:yandex_maps_mapkit/src/transport/bicycle/route.dart'
    as transport_bicycle_route;
import 'package:yandex_maps_mapkit/src/transport/bicycle/summary.dart'
    as transport_bicycle_summary;

part 'session.containers.dart';
part 'session.impl.dart';

/// Handler for an async request for bicycle routes.
abstract class BicycleSession implements ffi.Finalizable {
  /// Tries to cancel the current request for bicycle routes.
  void cancel();

  /// Retries the request for bicycle routes using the specified callback.
  void retry(BicycleSessionRouteListener routeListener);
}

abstract final class BicycleSessionRouteListener {
  factory BicycleSessionRouteListener(
      {required void Function(
              core.List<transport_bicycle_route.BicycleRoute> routes)
          onBicycleRoutes,
      required void Function(runtime_error.Error error) onBicycleRoutesError}) {
    return BicycleSessionRouteListenerImpl(
      onBicycleRoutes: onBicycleRoutes,
      onBicycleRoutesError: onBicycleRoutesError,
    );
  }

  void onBicycleRoutes(core.List<transport_bicycle_route.BicycleRoute> routes);
  void onBicycleRoutesError(runtime_error.Error error);
}

/// Handler for an async request for a summary of bicycle routes.
abstract class BicycleSummarySession implements ffi.Finalizable {
  /// Tries to cancel the current request for a summary of mass transit
  /// routes.
  void cancel();

  /// Retries the request for a summary of mass transit routes, using the
  /// specified callback.
  void retry(BicycleSummarySessionSummaryListener summaryListener);
}

abstract final class BicycleSummarySessionSummaryListener {
  factory BicycleSummarySessionSummaryListener(
      {required void Function(
              core.List<transport_bicycle_summary.BicycleSummary> routes)
          onBicycleSummaries,
      required void Function(runtime_error.Error error)
          onBicycleSummariesError}) {
    return BicycleSummarySessionSummaryListenerImpl(
      onBicycleSummaries: onBicycleSummaries,
      onBicycleSummariesError: onBicycleSummariesError,
    );
  }

  /// Mass bicycle summaries are generated.
  void onBicycleSummaries(
      core.List<transport_bicycle_summary.BicycleSummary> routes);

  /// There was an error with generating bicycle summaries.
  void onBicycleSummariesError(runtime_error.Error error);
}
