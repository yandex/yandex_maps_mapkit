import 'package:yandex_maps_mapkit/src/directions/carparks/carparks_layer.dart'
    as directions;
import 'package:yandex_maps_mapkit/src/directions/directions.dart'
    as directions;
import 'package:yandex_maps_mapkit/src/directions/driving/driving_router.dart'
    as directions;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/geo/projection.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/layers/data_source.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/layers/data_source_layer.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/layers/geo_object_tap_event.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/layers/layer.dart' as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/layers/object_event.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/location/error.dart' as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/logo/logo.dart' as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/arrow.dart' as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/base_data_source_builder.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/base_map_object_collection.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/camera_bounds.dart' as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/circle.dart' as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/cluster.dart' as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/clusterized_placemark_collection.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/composite_icon.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/map.dart' as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/map_object.dart' as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/map_object_collection.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/map_window.dart' as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/model.dart' as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/placemark.dart' as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/placemark_animation.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/placemarks_styler.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/polygon.dart' as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/polyline.dart' as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/map/tile_data_source_builder.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/mapkit.dart' as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/offline_cache/errors.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/offline_cache/offline_cache_manager.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/road_events_layer/style_provider.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/storage/storage_manager.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/traffic/traffic_layer.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/mapkit/user_location/user_location.dart'
    as mapkit;
import 'package:yandex_maps_mapkit/src/places/mrc/mrc_photo_player.dart'
    as places;
import 'package:yandex_maps_mapkit/src/places/mrc/mrc_photo_track_player.dart'
    as places;
import 'package:yandex_maps_mapkit/src/places/panorama/errors.dart' as places;
import 'package:yandex_maps_mapkit/src/places/panorama/panorama_layer.dart'
    as places;
import 'package:yandex_maps_mapkit/src/places/panorama/player.dart' as places;
import 'package:yandex_maps_mapkit/src/places/places.dart' as places;
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as runtime;
import 'package:yandex_maps_mapkit/src/runtime/i18n/i18n_manager.dart'
    as runtime;
import 'package:yandex_maps_mapkit/src/runtime/local_error.dart' as runtime;
import 'package:yandex_maps_mapkit/src/runtime/network/errors.dart' as runtime;
import 'package:yandex_maps_mapkit/src/search/error.dart' as search;
import 'package:yandex_maps_mapkit/src/search/search.dart' as search;
import 'package:yandex_maps_mapkit/src/search/search_layer/search_layer.dart'
    as search;
import 'package:yandex_maps_mapkit/src/transport/time/adjusted_clock.dart'
    as transport;
import 'package:yandex_maps_mapkit/src/transport/transport.dart' as transport;

const weakInterfacesMeta = {
  'directions.Directions': directions.DirectionsImpl.fromNativePtrImpl,
  'directions.carparks.CarparksLayer':
      directions.CarparksLayerImpl.fromNativePtrImpl,
  'directions.driving.TooComplexAvoidedZonesError':
      directions.DrivingTooComplexAvoidedZonesErrorImpl.fromNativePtrImpl,
  'mapkit.MapKit': mapkit.MapKitImpl.fromNativePtrImpl,
  'mapkit.geometry.geo.Projection': mapkit.ProjectionImpl.fromNativePtrImpl,
  'mapkit.layers.BaseDataSource': mapkit.BaseDataSourceImpl.fromNativePtrImpl,
  'mapkit.layers.DataSource': mapkit.DataSourceImpl.fromNativePtrImpl,
  'mapkit.layers.DataSourceLayer': mapkit.DataSourceLayerImpl.fromNativePtrImpl,
  'mapkit.layers.GeoObjectTapEvent':
      mapkit.GeoObjectTapEventImpl.fromNativePtrImpl,
  'mapkit.layers.Layer': mapkit.LayerImpl.fromNativePtrImpl,
  'mapkit.layers.ObjectEvent': mapkit.ObjectEventImpl.fromNativePtrImpl,
  'mapkit.layers.TileDataSource': mapkit.TileDataSourceImpl.fromNativePtrImpl,
  'mapkit.location.LocationUnavailableError':
      mapkit.LocationUnavailableErrorImpl.fromNativePtrImpl,
  'mapkit.logo.Logo': mapkit.LogoImpl.fromNativePtrImpl,
  'mapkit.map.Arrow': mapkit.ArrowImpl.fromNativePtrImpl,
  'mapkit.map.BaseDataSourceBuilder':
      mapkit.BaseDataSourceBuilderImpl.fromNativePtrImpl,
  'mapkit.map.BaseMapObjectCollection':
      mapkit.BaseMapObjectCollectionImpl.fromNativePtrImpl,
  'mapkit.map.BaseTileDataSourceBuilder':
      mapkit.BaseTileDataSourceBuilderImpl.fromNativePtrImpl,
  'mapkit.map.CameraBounds': mapkit.CameraBoundsImpl.fromNativePtrImpl,
  'mapkit.map.CircleMapObject': mapkit.CircleMapObjectImpl.fromNativePtrImpl,
  'mapkit.map.Cluster': mapkit.ClusterImpl.fromNativePtrImpl,
  'mapkit.map.ClusterizedPlacemarkCollection':
      mapkit.ClusterizedPlacemarkCollectionImpl.fromNativePtrImpl,
  'mapkit.map.CompositeIcon': mapkit.CompositeIconImpl.fromNativePtrImpl,
  'mapkit.map.Map': mapkit.MapImpl.fromNativePtrImpl,
  'mapkit.map.MapObject': mapkit.MapObjectImpl.fromNativePtrImpl,
  'mapkit.map.MapObjectCollection':
      mapkit.MapObjectCollectionImpl.fromNativePtrImpl,
  'mapkit.map.MapWindow': mapkit.MapWindowImpl.fromNativePtrImpl,
  'mapkit.map.Model': mapkit.ModelImpl.fromNativePtrImpl,
  'mapkit.map.PlacemarkAnimation':
      mapkit.PlacemarkAnimationImpl.fromNativePtrImpl,
  'mapkit.map.PlacemarkMapObject':
      mapkit.PlacemarkMapObjectImpl.fromNativePtrImpl,
  'mapkit.map.PlacemarksStyler': mapkit.PlacemarksStylerImpl.fromNativePtrImpl,
  'mapkit.map.PolygonMapObject': mapkit.PolygonMapObjectImpl.fromNativePtrImpl,
  'mapkit.map.PolylineMapObject':
      mapkit.PolylineMapObjectImpl.fromNativePtrImpl,
  'mapkit.map.TileDataSourceBuilder':
      mapkit.TileDataSourceBuilderImpl.fromNativePtrImpl,
  'mapkit.offline_cache.CachePathUnavailable':
      mapkit.CachePathUnavailableImpl.fromNativePtrImpl,
  'mapkit.offline_cache.OfflineCacheManager':
      mapkit.OfflineCacheManagerImpl.fromNativePtrImpl,
  'mapkit.road_events_layer.RoadEventStyle':
      mapkit.RoadEventsLayerRoadEventStyleImpl.fromNativePtrImpl,
  'mapkit.road_events_layer.RoadEventStylingProperties':
      mapkit.RoadEventsLayerRoadEventStylingPropertiesImpl.fromNativePtrImpl,
  'mapkit.storage.StorageManager': mapkit.StorageManagerImpl.fromNativePtrImpl,
  'mapkit.traffic.TrafficLayer': mapkit.TrafficLayerImpl.fromNativePtrImpl,
  'mapkit.user_location.UserLocationAnchorChanged':
      mapkit.UserLocationAnchorChangedImpl.fromNativePtrImpl,
  'mapkit.user_location.UserLocationIconChanged':
      mapkit.UserLocationIconChangedImpl.fromNativePtrImpl,
  'mapkit.user_location.UserLocationLayer':
      mapkit.UserLocationLayerImpl.fromNativePtrImpl,
  'mapkit.user_location.UserLocationView':
      mapkit.UserLocationViewImpl.fromNativePtrImpl,
  'places.Places': places.PlacesImpl.fromNativePtrImpl,
  'places.mrc.MrcPhotoPlayer': places.MrcPhotoPlayerImpl.fromNativePtrImpl,
  'places.mrc.MrcPhotoTrackPlayer':
      places.MrcPhotoTrackPlayerImpl.fromNativePtrImpl,
  'places.panorama.NotFoundError':
      places.PanoramaNotFoundErrorImpl.fromNativePtrImpl,
  'places.panorama.PanoramaLayer': places.PanoramaLayerImpl.fromNativePtrImpl,
  'places.panorama.Player': places.PanoramaPlayerImpl.fromNativePtrImpl,
  'runtime.DiskCorruptError': runtime.DiskCorruptErrorImpl.fromNativePtrImpl,
  'runtime.DiskFullError': runtime.DiskFullErrorImpl.fromNativePtrImpl,
  'runtime.DiskWriteAccessError':
      runtime.DiskWriteAccessErrorImpl.fromNativePtrImpl,
  'runtime.Error': runtime.ErrorImpl.fromNativePtrImpl,
  'runtime.LocalError': runtime.LocalErrorImpl.fromNativePtrImpl,
  'runtime.i18n.I18nManager': runtime.I18nManagerImpl.fromNativePtrImpl,
  'runtime.network.BadRequestError':
      runtime.BadRequestErrorImpl.fromNativePtrImpl,
  'runtime.network.ForbiddenError':
      runtime.ForbiddenErrorImpl.fromNativePtrImpl,
  'runtime.network.NetworkError': runtime.NetworkErrorImpl.fromNativePtrImpl,
  'runtime.network.NotFoundError': runtime.NotFoundErrorImpl.fromNativePtrImpl,
  'runtime.network.RemoteError': runtime.RemoteErrorImpl.fromNativePtrImpl,
  'runtime.network.RequestEntityTooLargeError':
      runtime.RequestEntityTooLargeErrorImpl.fromNativePtrImpl,
  'runtime.network.UnauthorizedError':
      runtime.UnauthorizedErrorImpl.fromNativePtrImpl,
  'search.CacheUnavailableError':
      search.SearchCacheUnavailableErrorImpl.fromNativePtrImpl,
  'search.Search': search.SearchImpl.fromNativePtrImpl,
  'search.search_layer.SearchLayer': search.SearchLayerImpl.fromNativePtrImpl,
  'transport.Transport': transport.TransportImpl.fromNativePtrImpl,
  'transport.time.AdjustedClock': transport.AdjustedClockImpl.fromNativePtrImpl,
};
