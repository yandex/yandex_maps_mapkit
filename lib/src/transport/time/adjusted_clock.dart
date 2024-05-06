import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;

part 'adjusted_clock.containers.dart';
part 'adjusted_clock.impl.dart';

abstract class AdjustedClock implements ffi.Finalizable {
  /// This method returns the time that has been synchronized with Yandex
  /// servers. Use it if you don't trust the time on the local device
  /// because the user could have set it incorrectly. If time
  /// synchronization has failed or not yet finished, the returned value
  /// equals the local device's time.
  /// Return POSIX time. For more information, see
  /// https://en.wikipedia.org/wiki/Unix_time.
  core.DateTime now();

  /// Notifies AdjustedClock when the application resumes the foreground
  /// state.
  void resume();

  /// Notifies AdjustedClock when the application pauses and goes to the
  /// background.
  void pause();
}
