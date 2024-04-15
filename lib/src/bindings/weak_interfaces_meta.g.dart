import 'package:yandex_maps_mapkit/src/directions/driving/driving_router.dart'
    as src_directions_driving_driving_router;
import 'package:yandex_maps_mapkit/src/directions/directions.dart'
    as src_directions_directions;
import 'package:yandex_maps_mapkit/src/search/search_layer/search_layer.dart'
    as src_search_search_layer_search_layer;
import 'package:yandex_maps_mapkit/src/search/search.dart' as src_search_search;
import 'package:yandex_maps_mapkit/src/search/error.dart' as src_search_error;
import 'package:yandex_maps_mapkit/src/transport/time/adjusted_clock.dart'
    as src_transport_time_adjusted_clock;
import 'package:yandex_maps_mapkit/src/transport/transport.dart'
    as src_transport_transport;
import 'package:yandex_maps_mapkit/src/places/panorama/player.dart'
    as src_places_panorama_player;
import 'package:yandex_maps_mapkit/src/places/panorama/panorama_layer.dart'
    as src_places_panorama_panorama_layer;
import 'package:yandex_maps_mapkit/src/places/panorama/errors.dart'
    as src_places_panorama_errors;
import 'package:yandex_maps_mapkit/src/places/mrc/mrc_photo_player.dart'
    as src_places_mrc_mrc_photo_player;
import 'package:yandex_maps_mapkit/src/places/mrc/mrc_photo_track_player.dart'
    as src_places_mrc_mrc_photo_track_player;
import 'package:yandex_maps_mapkit/src/places/places.dart' as src_places_places;
import 'package:yandex_maps_mapkit/src/runtime/network/errors.dart'
    as src_runtime_network_errors;
import 'package:yandex_maps_mapkit/src/runtime/local_error.dart'
    as src_runtime_local_error;
import 'package:yandex_maps_mapkit/src/runtime/i18n/i18n_manager.dart'
    as src_runtime_i18n_i18n_manager;
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as src_runtime_error;
import 'package:yandex_maps_mapkit/src/mapkit/location/error.dart'
    as src_mapkit_location_error;
import 'package:yandex_maps_mapkit/src/mapkit/user_location/user_location.dart'
    as src_mapkit_user_location_user_location;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geo/projection.dart'
    as src_mapkit_geometry_geo_projection;
import 'package:yandex_maps_mapkit/src/mapkit/storage/storage_manager.dart'
    as src_mapkit_storage_storage_manager;
import 'package:yandex_maps_mapkit/src/mapkit/layers/data_source.dart'
    as src_mapkit_layers_data_source;
import 'package:yandex_maps_mapkit/src/mapkit/layers/layer.dart'
    as src_mapkit_layers_layer;
import 'package:yandex_maps_mapkit/src/mapkit/layers/geo_object_tap_event.dart'
    as src_mapkit_layers_geo_object_tap_event;
import 'package:yandex_maps_mapkit/src/mapkit/layers/data_source_layer.dart'
    as src_mapkit_layers_data_source_layer;
import 'package:yandex_maps_mapkit/src/mapkit/layers/object_event.dart'
    as src_mapkit_layers_object_event;
import 'package:yandex_maps_mapkit/src/mapkit/logo/logo.dart'
    as src_mapkit_logo_logo;
import 'package:yandex_maps_mapkit/src/mapkit/map/arrow.dart'
    as src_mapkit_map_arrow;
import 'package:yandex_maps_mapkit/src/mapkit/map/map_object.dart'
    as src_mapkit_map_map_object;
import 'package:yandex_maps_mapkit/src/mapkit/map/map_object_collection.dart'
    as src_mapkit_map_map_object_collection;
import 'package:yandex_maps_mapkit/src/mapkit/map/map.dart'
    as src_mapkit_map_map;
import 'package:yandex_maps_mapkit/src/mapkit/map/camera_bounds.dart'
    as src_mapkit_map_camera_bounds;
import 'package:yandex_maps_mapkit/src/mapkit/map/base_map_object_collection.dart'
    as src_mapkit_map_base_map_object_collection;
import 'package:yandex_maps_mapkit/src/mapkit/map/circle.dart'
    as src_mapkit_map_circle;
import 'package:yandex_maps_mapkit/src/mapkit/map/composite_icon.dart'
    as src_mapkit_map_composite_icon;
import 'package:yandex_maps_mapkit/src/mapkit/map/placemark.dart'
    as src_mapkit_map_placemark;
import 'package:yandex_maps_mapkit/src/mapkit/map/tile_data_source_builder.dart'
    as src_mapkit_map_tile_data_source_builder;
import 'package:yandex_maps_mapkit/src/mapkit/map/cluster.dart'
    as src_mapkit_map_cluster;
import 'package:yandex_maps_mapkit/src/mapkit/map/map_window.dart'
    as src_mapkit_map_map_window;
import 'package:yandex_maps_mapkit/src/mapkit/map/clusterized_placemark_collection.dart'
    as src_mapkit_map_clusterized_placemark_collection;
import 'package:yandex_maps_mapkit/src/mapkit/map/polyline.dart'
    as src_mapkit_map_polyline;
import 'package:yandex_maps_mapkit/src/mapkit/map/placemark_animation.dart'
    as src_mapkit_map_placemark_animation;
import 'package:yandex_maps_mapkit/src/mapkit/map/polygon.dart'
    as src_mapkit_map_polygon;
import 'package:yandex_maps_mapkit/src/mapkit/map/placemarks_styler.dart'
    as src_mapkit_map_placemarks_styler;
import 'package:yandex_maps_mapkit/src/mapkit/traffic/traffic_layer.dart'
    as src_mapkit_traffic_traffic_layer;
import 'package:yandex_maps_mapkit/src/mapkit/mapkit.dart' as src_mapkit_mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/road_events_layer/style_provider.dart'
    as src_mapkit_road_events_layer_style_provider;
import 'package:yandex_maps_mapkit/src/mapkit/road_events_layer/road_events_layer.dart'
    as src_mapkit_road_events_layer_road_events_layer;
import 'package:yandex_maps_mapkit/src/mapkit/offline_cache/offline_cache_manager.dart'
    as src_mapkit_offline_cache_offline_cache_manager;
import 'package:yandex_maps_mapkit/src/mapkit/offline_cache/errors.dart'
    as src_mapkit_offline_cache_errors;

const weakInterfacesMeta = {
  'directions.driving.TooComplexAvoidedZonesError':
      src_directions_driving_driving_router
          .DrivingTooComplexAvoidedZonesError.fromNativePtrImpl,
  'directions.Directions':
      src_directions_directions.Directions.fromNativePtrImpl,
  'search.search_layer.SearchLayer':
      src_search_search_layer_search_layer.SearchLayer.fromNativePtrImpl,
  'search.Search': src_search_search.Search.fromNativePtrImpl,
  'search.CacheUnavailableError':
      src_search_error.SearchCacheUnavailableError.fromNativePtrImpl,
  'transport.time.AdjustedClock':
      src_transport_time_adjusted_clock.AdjustedClock.fromNativePtrImpl,
  'transport.Transport': src_transport_transport.Transport.fromNativePtrImpl,
  'places.panorama.Player':
      src_places_panorama_player.PanoramaPlayer.fromNativePtrImpl,
  'places.panorama.PanoramaLayer':
      src_places_panorama_panorama_layer.PanoramaLayer.fromNativePtrImpl,
  'places.panorama.NotFoundError':
      src_places_panorama_errors.PanoramaNotFoundError.fromNativePtrImpl,
  'places.mrc.MrcPhotoPlayer':
      src_places_mrc_mrc_photo_player.MrcPhotoPlayer.fromNativePtrImpl,
  'places.mrc.MrcPhotoTrackPlayer': src_places_mrc_mrc_photo_track_player
      .MrcPhotoTrackPlayer.fromNativePtrImpl,
  'places.Places': src_places_places.Places.fromNativePtrImpl,
  'runtime.network.RemoteError':
      src_runtime_network_errors.RemoteError.fromNativePtrImpl,
  'runtime.network.BadRequestError':
      src_runtime_network_errors.BadRequestError.fromNativePtrImpl,
  'runtime.network.NotFoundError':
      src_runtime_network_errors.NotFoundError.fromNativePtrImpl,
  'runtime.network.RequestEntityTooLargeError':
      src_runtime_network_errors.RequestEntityTooLargeError.fromNativePtrImpl,
  'runtime.network.ForbiddenError':
      src_runtime_network_errors.ForbiddenError.fromNativePtrImpl,
  'runtime.network.UnauthorizedError':
      src_runtime_network_errors.UnauthorizedError.fromNativePtrImpl,
  'runtime.network.NetworkError':
      src_runtime_network_errors.NetworkError.fromNativePtrImpl,
  'runtime.LocalError': src_runtime_local_error.LocalError.fromNativePtrImpl,
  'runtime.DiskFullError':
      src_runtime_local_error.DiskFullError.fromNativePtrImpl,
  'runtime.DiskCorruptError':
      src_runtime_local_error.DiskCorruptError.fromNativePtrImpl,
  'runtime.DiskWriteAccessError':
      src_runtime_local_error.DiskWriteAccessError.fromNativePtrImpl,
  'runtime.i18n.I18nManager':
      src_runtime_i18n_i18n_manager.I18nManager.fromNativePtrImpl,
  'runtime.Error': src_runtime_error.Error.fromNativePtrImpl,
  'mapkit.location.LocationUnavailableError':
      src_mapkit_location_error.LocationUnavailableError.fromNativePtrImpl,
  'mapkit.user_location.UserLocationView':
      src_mapkit_user_location_user_location.UserLocationView.fromNativePtrImpl,
  'mapkit.user_location.UserLocationIconChanged':
      src_mapkit_user_location_user_location
          .UserLocationIconChanged.fromNativePtrImpl,
  'mapkit.user_location.UserLocationAnchorChanged':
      src_mapkit_user_location_user_location
          .UserLocationAnchorChanged.fromNativePtrImpl,
  'mapkit.user_location.UserLocationLayer':
      src_mapkit_user_location_user_location
          .UserLocationLayer.fromNativePtrImpl,
  'mapkit.geometry.geo.Projection':
      src_mapkit_geometry_geo_projection.Projection.fromNativePtrImpl,
  'mapkit.storage.StorageManager':
      src_mapkit_storage_storage_manager.StorageManager.fromNativePtrImpl,
  'mapkit.layers.DataSource':
      src_mapkit_layers_data_source.DataSource.fromNativePtrImpl,
  'mapkit.layers.Layer': src_mapkit_layers_layer.Layer.fromNativePtrImpl,
  'mapkit.layers.GeoObjectTapEvent': src_mapkit_layers_geo_object_tap_event
      .GeoObjectTapEvent.fromNativePtrImpl,
  'mapkit.layers.DataSourceLayer':
      src_mapkit_layers_data_source_layer.DataSourceLayer.fromNativePtrImpl,
  'mapkit.layers.ObjectEvent':
      src_mapkit_layers_object_event.ObjectEvent.fromNativePtrImpl,
  'mapkit.logo.Logo': src_mapkit_logo_logo.Logo.fromNativePtrImpl,
  'mapkit.map.Arrow': src_mapkit_map_arrow.Arrow.fromNativePtrImpl,
  'mapkit.map.MapObject': src_mapkit_map_map_object.MapObject.fromNativePtrImpl,
  'mapkit.map.MapObjectCollection': src_mapkit_map_map_object_collection
      .MapObjectCollection.fromNativePtrImpl,
  'mapkit.map.Map': src_mapkit_map_map.Map.fromNativePtrImpl,
  'mapkit.map.CameraBounds':
      src_mapkit_map_camera_bounds.CameraBounds.fromNativePtrImpl,
  'mapkit.map.BaseMapObjectCollection':
      src_mapkit_map_base_map_object_collection
          .BaseMapObjectCollection.fromNativePtrImpl,
  'mapkit.map.CircleMapObject':
      src_mapkit_map_circle.CircleMapObject.fromNativePtrImpl,
  'mapkit.map.CompositeIcon':
      src_mapkit_map_composite_icon.CompositeIcon.fromNativePtrImpl,
  'mapkit.map.PlacemarkMapObject':
      src_mapkit_map_placemark.PlacemarkMapObject.fromNativePtrImpl,
  'mapkit.map.BaseTileDataSourceBuilder':
      src_mapkit_map_tile_data_source_builder
          .BaseTileDataSourceBuilder.fromNativePtrImpl,
  'mapkit.map.TileDataSourceBuilder': src_mapkit_map_tile_data_source_builder
      .TileDataSourceBuilder.fromNativePtrImpl,
  'mapkit.map.Cluster': src_mapkit_map_cluster.Cluster.fromNativePtrImpl,
  'mapkit.map.MapWindow': src_mapkit_map_map_window.MapWindow.fromNativePtrImpl,
  'mapkit.map.ClusterizedPlacemarkCollection':
      src_mapkit_map_clusterized_placemark_collection
          .ClusterizedPlacemarkCollection.fromNativePtrImpl,
  'mapkit.map.PolylineMapObject':
      src_mapkit_map_polyline.PolylineMapObject.fromNativePtrImpl,
  'mapkit.map.PlacemarkAnimation':
      src_mapkit_map_placemark_animation.PlacemarkAnimation.fromNativePtrImpl,
  'mapkit.map.PolygonMapObject':
      src_mapkit_map_polygon.PolygonMapObject.fromNativePtrImpl,
  'mapkit.map.PlacemarksStyler':
      src_mapkit_map_placemarks_styler.PlacemarksStyler.fromNativePtrImpl,
  'mapkit.traffic.TrafficLayer':
      src_mapkit_traffic_traffic_layer.TrafficLayer.fromNativePtrImpl,
  'mapkit.MapKit': src_mapkit_mapkit.MapKit.fromNativePtrImpl,
  'mapkit.road_events_layer.RoadEventStyle':
      src_mapkit_road_events_layer_style_provider
          .RoadEventsLayerRoadEventStyle.fromNativePtrImpl,
  'mapkit.road_events_layer.RoadEventStylingProperties':
      src_mapkit_road_events_layer_style_provider
          .RoadEventsLayerRoadEventStylingProperties.fromNativePtrImpl,
  'mapkit.road_events_layer.RoadEventsLayer':
      src_mapkit_road_events_layer_road_events_layer
          .RoadEventsLayer.fromNativePtrImpl,
  'mapkit.offline_cache.OfflineCacheManager':
      src_mapkit_offline_cache_offline_cache_manager
          .OfflineCacheManager.fromNativePtrImpl,
  'mapkit.offline_cache.CachePathUnavailable':
      src_mapkit_offline_cache_errors.CachePathUnavailable.fromNativePtrImpl,
};
