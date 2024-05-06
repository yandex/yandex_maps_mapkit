import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:yandex_maps_mapkit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_mapkit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_mapkit/src/bindings/weak_map/weak_map.dart'
    as weak_map;

part 'region_list_updates_listener.impl.dart';

/// Listener to handle region list updated
/// @attention This feature is not available in the free MapKit version.
abstract class OfflineMapRegionListUpdatesListener {
  void onListUpdated();
}
