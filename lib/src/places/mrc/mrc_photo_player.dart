import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;

part 'mrc_photo_player.containers.dart';
part 'mrc_photo_player.impl.dart';

/// @nodoc
abstract class MrcPhotoPlayer implements ffi.Finalizable {
  /// Current photo ID. Set to null after reset.
  ///
  core.String? get photoId;

  /// Closes the opened photo and stops all player actions.
  void reset();

  /// Shows transition arrows and allows switching photos.
  void enableMove();

  /// Hides transition arrows and disallows switching photos.
  void disableMove();

  /// Checks if switching photos is enabled.
  core.bool moveEnabled();

  core.bool isValid();
}
