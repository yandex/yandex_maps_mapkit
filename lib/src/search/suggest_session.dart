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
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as runtime_error;
import 'package:yandex_maps_mapkit/src/search/suggest_options.dart'
    as search_suggest_options;
import 'package:yandex_maps_mapkit/src/search/suggest_response.dart'
    as search_suggest_response;

part 'suggest_session.containers.dart';
part 'suggest_session.impl.dart';

abstract class SearchSuggestSession implements ffi.Finalizable {
  /// Begin a suggest request. The current request is cancelled, if
  /// present.
  ///
  /// [text] Text to get suggestions for.
  /// [window] Current map window position.
  /// [suggestOptions] Various additional suggest parameters. See the
  /// [search_suggest_options.SuggestOptions] definition for details.
  /// [suggestListener] Function called when the result is ready.
  void suggest(
    mapkit_geometry_geometry.BoundingBox window,
    search_suggest_options.SuggestOptions suggestOptions,
    SearchSuggestSessionSuggestListener suggestListener, {
    required core.String text,
  });

  /// Cancels current suggest request and resets internal state. Next
  /// queries via this suggest session will be seen as a new suggest
  /// session from backend point of view.
  void reset();
}

abstract final class SearchSuggestSessionSuggestListener {
  factory SearchSuggestSessionSuggestListener(
      {required void Function(search_suggest_response.SuggestResponse suggest)
          onResponse,
      required void Function(runtime_error.Error error) onError}) {
    return SearchSuggestSessionSuggestListenerImpl(
      onResponse: onResponse,
      onError: onError,
    );
  }

  /// Callback for results processing.
  ///
  /// [suggest] List of suggest results.
  void onResponse(search_suggest_response.SuggestResponse suggest);

  /// Callback for error processing.
  ///
  /// [error] Error information.
  void onError(runtime_error.Error error);
}
