import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;

part 'carparks_layer.containers.dart';
part 'carparks_layer.impl.dart';

abstract class CarparksLayer implements ffi.Finalizable {
  /// Indicates whether the layer is displayed on a map.
  core.bool isVisible();

  /// Display or hide the layer on a map.
  void setVisible(core.bool on);

  /// Applies JSON style transformations to the carparks layer. Same as
  /// setCarparksStyle(0, style). Set to empty string to clear previous
  /// styling. Returns true if the style was successfully parsed; false
  /// otherwise. If the return value is false, the current carparks style
  /// remains unchanged.
  core.bool setCarparksStyle(core.String style);

  /// Applies JSON style transformations to the carparks layer. Replaces
  /// previous styling with the specified ID (if such exists). Stylings are
  /// applied in an ascending order. Set to empty string to clear previous
  /// styling with the specified ID. Returns true if the style was
  /// successfully parsed; false otherwise. If the return value is false,
  /// the current carparks style remains unchanged.
  core.bool setCarparksStyleWithId({
    required core.int id,
    required core.String style,
  });

  /// Resets all JSON style transformations applied to the carparks layer.
  void resetCarparksStyles();

  core.bool isValid();
}
