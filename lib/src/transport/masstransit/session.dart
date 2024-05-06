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
import 'package:yandex_maps_mapkit/src/transport/masstransit/route.dart'
    as transport_masstransit_route;
import 'package:yandex_maps_mapkit/src/transport/masstransit/summary.dart'
    as transport_masstransit_summary;

part 'session.containers.dart';
part 'session.impl.dart';

/// Handler for an async request for mass transit routes.
abstract class MasstransitSession implements ffi.Finalizable {
  /// Tries to cancel the current request for mass transit routes.
  void cancel();

  /// Retries the request for mass transit routes using the specified
  /// callback.
  void retry(RouteHandler routeListener);
}

abstract final class RouteHandler {
  factory RouteHandler(
      {required void Function(
              core.List<transport_masstransit_route.MasstransitRoute> routes)
          onMasstransitRoutes,
      required void Function(runtime_error.Error error)
          onMasstransitRoutesError}) {
    return RouteHandlerImpl(
      onMasstransitRoutes: onMasstransitRoutes,
      onMasstransitRoutesError: onMasstransitRoutesError,
    );
  }

  /// The route is generated.
  void onMasstransitRoutes(
      core.List<transport_masstransit_route.MasstransitRoute> routes);

  /// An error occurred while generating the route.
  void onMasstransitRoutesError(runtime_error.Error error);
}

/// Handler for an async request for a summary of mass transit routes.
abstract class MasstransitSummarySession implements ffi.Finalizable {
  /// Tries to cancel the current request for a summary of mass transit
  /// routes.
  void cancel();

  /// Retries the request for a summary of mass transit routes, using the
  /// specified callback.
  void retry(SummaryHandler summaryListener);
}

abstract final class SummaryHandler {
  factory SummaryHandler(
      {required void Function(
              core.List<transport_masstransit_summary.MasstransitSummary>
                  routes)
          onMasstransitSummaries,
      required void Function(runtime_error.Error error)
          onMasstransitSummariesError}) {
    return SummaryHandlerImpl(
      onMasstransitSummaries: onMasstransitSummaries,
      onMasstransitSummariesError: onMasstransitSummariesError,
    );
  }

  /// Mass transit summaries are generated.
  void onMasstransitSummaries(
      core.List<transport_masstransit_summary.MasstransitSummary> routes);

  /// There was an error with generating mass transit summaries.
  void onMasstransitSummariesError(runtime_error.Error error);
}
