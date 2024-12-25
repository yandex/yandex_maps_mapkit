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

part 'personal_suggest_session.containers.dart';
part 'personal_suggest_session.impl.dart';

/// Interface to handle remove all user personalized suggest request.
/// Allows request cancellation and retry.
abstract class SearchDeleteAllPersonalSuggestSession
    implements ffi.Finalizable {
  /// Cancels the current request.
  void cancel();

  /// Retries the last request. If there is an active request, it is
  /// cancelled.
  ///
  /// [personalSuggestListener] Listener to handle result.
  void retry(PersonalSuggestListener personalSuggestListener);
}

abstract final class PersonalSuggestListener {
  factory PersonalSuggestListener(
      {required void Function() onPersonalSuggestSuccess,
      required void Function(runtime_error.Error error)
          onPersonalSuggestError}) {
    return PersonalSuggestListenerImpl(
      onPersonalSuggestSuccess: onPersonalSuggestSuccess,
      onPersonalSuggestError: onPersonalSuggestError,
    );
  }

  /// Callback for result processing.
  void onPersonalSuggestSuccess();

  /// Callback for error processing.
  ///
  /// [error] Error information.
  void onPersonalSuggestError(runtime_error.Error error);
}
