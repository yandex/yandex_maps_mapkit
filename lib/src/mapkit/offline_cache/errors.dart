import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/async.dart'
    show runWithBlockUi;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_mapkit/src/runtime/local_error.dart'
    as runtime_local_error;

part 'errors.containers.dart';
part 'errors.impl.dart';

/// Cache path doesn't exist or there no read permissions.
abstract class CachePathUnavailable
    implements runtime_local_error.LocalError, ffi.Finalizable {
  /// Usable only in [runWithBlockUi] or listener handlers.
  core.bool isValid();
}
