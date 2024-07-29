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
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_mapkit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/direction.dart'
    as mapkit_geometry_direction;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_mapkit/src/mapkit/geometry/span.dart'
    as mapkit_geometry_span;
import 'package:yandex_maps_mapkit/src/mapkit/logo/logo.dart'
    as mapkit_logo_logo;
import 'package:yandex_maps_mapkit/src/places/panorama/company_tap_info.dart'
    as places_panorama_company_tap_info;
import 'package:yandex_maps_mapkit/src/places/panorama/historical_panorama.dart'
    as places_panorama_historical_panorama;
import 'package:yandex_maps_mapkit/src/places/panorama/panorama_description.dart'
    as places_panorama_panorama_description;
import 'package:yandex_maps_mapkit/src/runtime/error.dart' as runtime_error;

part 'player.containers.dart';
part 'player.impl.dart';

/// Listener to handle the panorama being opened or changed.
abstract class PanoramaChangeListener {
  /// Called if the panorama was opened or changed by the user. You can get
  /// the panoramaId by using the panoramaId() method.
  ///
  /// [player] Panorama player that sent the event.
  void onPanoramaChanged(PanoramaPlayer player);
}

/// Listener to handle the change in panorama direction.
abstract class PanoramaDirectionChangeListener {
  /// Called if the panorama direction was changed by the user or by the
  /// setDirection() method.
  ///
  /// [player] Panorama player that sent the event.
  void onPanoramaDirectionChanged(PanoramaPlayer player);
}

/// Listener to handle the change in panorama span.
abstract class PanoramaSpanChangeListener {
  /// Called if the user changed the zoom level or the span has been
  /// changed by the setSpan() method.
  ///
  /// [player] Panorama player that sent the event.
  void onPanoramaSpanChanged(PanoramaPlayer player);
}

/// Listener to handle the taps on company text and icon.
abstract class PanoramaCompanyTapListener {
  /// Called if the user tapped on company icon or text below it.
  ///
  /// [player] Panorama player that sent the event.
  /// [info] Information about tapped company.
  void onCompanyTap(PanoramaPlayer player,
      places_panorama_company_tap_info.CompanyTapInfo info);
}

/// Listener to handle possible errors.
abstract class PanoramaErrorListener {
  /// Error notification listener for the panoramaOpen class. Called if the
  /// panorama could not be opened.
  void onPanoramaOpenError(PanoramaPlayer player, runtime_error.Error error);
}

/// Panorama player that is used to open panoramas.
abstract class PanoramaPlayer implements ffi.Finalizable {
  /// Yandex logo object.
  mapkit_logo_logo.Logo get logo;

  /// Opens the panorama with the given ID.
  ///
  /// [panoramaId] The panoramaId that specifies the panorama to open. You
  /// can get the panoramaId by using the PanoramaService methods.
  void openPanorama(core.String panoramaId);

  /// Opens the panorama from the local datasource.
  ///
  /// The class maintains a strong reference to the object in
  /// the 'tileImageProvider' parameter until it (the class) is invalidated.
  ///
  /// The class maintains a strong reference to the object in
  /// the 'iconImageProvider' parameter until it (the class) is invalidated.
  ///
  /// The class does not retain the object in the 'userPanoramaEventListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [panoramaDescription] Initialize this struct to open panorama
  /// [tileImageProvider] The tile datasource
  /// [iconImageProvider] The icon datasource
  /// [userPanoramaEventListener] The user panorama notification listener
  void openUserPanoramaWithLocalDataSource(
      places_panorama_panorama_description.PanoramaDescription
          panoramaDescription,
      places_panorama_panorama_description.PanoramaTileImageFactory
          tileImageProvider,
      places_panorama_panorama_description.PanoramaIconImageFactory
          iconImageProvider,
      places_panorama_panorama_description.PanoramaUserPanoramaEventListener
          userPanoramaEventListener);

  /// Opens the panorama from the network datasource.
  ///
  /// The class maintains a strong reference to the object in
  /// the 'tileUrlProvider' parameter until it (the class) is invalidated.
  ///
  /// The class maintains a strong reference to the object in
  /// the 'iconUrlProvider' parameter until it (the class) is invalidated.
  ///
  /// The class does not retain the object in the 'userPanoramaEventListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [panoramaDescription] Initialize this struct to open panorama
  /// [tileUrlProvider] The network tile datasource
  /// [iconUrlProvider] The netwokr icon datasource
  /// [userPanoramaEventListener] The user panorama notification listener
  void openUserPanoramaWithNetworkDataSource(
      places_panorama_panorama_description.PanoramaDescription
          panoramaDescription,
      places_panorama_panorama_description.PanoramaTileUrlProvider
          tileUrlProvider,
      places_panorama_panorama_description.PanoramaIconUrlProvider
          iconUrlProvider,
      places_panorama_panorama_description.PanoramaUserPanoramaEventListener
          userPanoramaEventListener);

  /// Opened the panorama with the given ID.
  /// Return PanoramaId of the currently opened panorama. Empty if no
  /// panorama is open.
  core.String panoramaId();

  /// Geo position of current panorama.
  /// Return Geo position of the currently opened panorama. Empty if no
  /// panorama is open.
  mapkit_geometry_point.Point position();

  /// Sets the view direction to the center of the given geo position.
  ///
  /// [position] The position to look at.
  void lookAt(mapkit_geometry_point.Point position);

  /// View direction of the opened panorama.
  /// Return View direction of the opened panorama. Empty if no panorama is
  /// open.
  mapkit_geometry_direction.Direction direction();

  /// Sets the view direction bearing and tilt.
  ///
  /// [direction] View direction.
  void setDirection(mapkit_geometry_direction.Direction direction);

  /// View span of the opened panorama.
  /// Return Current view span of the opened panorama. May be different
  /// from the span provided by the setSpan(span) method.
  mapkit_geometry_span.Span span();

  /// Sets the view area span. Invalid values are adjusted by the player to
  /// the closest valid values.
  ///
  /// [span] View area span. May be adjusted by the player.
  void setSpan(mapkit_geometry_span.Span span);

  /// Closes the opened panorama and stops all player actions.
  void reset();

  /// Return panoramas published earlier at the current panorama position.
  /// Result is updated on the [PanoramaChangeListener] callback
  core.List<places_panorama_historical_panorama.HistoricalPanorama>
      historicalPanoramas();

  /// Enables player zoom controls.
  void enableZoom();

  /// Disables player zoom controls.
  void disableZoom();

  /// Checks if zoom controls are enabled.
  core.bool zoomEnabled();

  /// Shows transition arrows and allows switching panoramas.
  void enableMove();

  /// Hides transition arrows and disallows switching panoramas.
  void disableMove();

  /// Checks if switching panoramas is enabled.
  core.bool moveEnabled();

  /// Allows the user to rotate panoramas.
  void enableRotation();

  /// Disallows the user to rotate panoramas.
  void disableRotation();

  /// Checks if player rotation is enabled.
  core.bool rotationEnabled();

  /// Allows markers (house numbers, railway stations, airports) to be
  /// shown.
  void enableMarkers();

  /// Disallows markers (house numbers, railway stations, airports) to be
  /// shown.
  void disableMarkers();

  /// Checks if markers are enabled.
  core.bool markersEnabled();

  /// Allows companies (company names and icons) to be shown.
  void enableCompanies();

  /// Disallows companies (company names and icons) to be shown.
  void disableCompanies();

  /// Checks if companies are enabled.
  core.bool companiesEnabled();

  /// Adds a panorama change listener.
  ///
  /// The class does not retain the object in the 'panoramaChangeListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [panoramaChangeListener] Panorama change listener.
  void addPanoramaChangeListener(PanoramaChangeListener panoramaChangeListener);

  /// Removes the panorama change listener.
  ///
  /// [panoramaChangeListener] The panorama change listener to remove.
  void removePanoramaChangeListener(
      PanoramaChangeListener panoramaChangeListener);

  /// Adds direction listener.
  ///
  /// The class does not retain the object in the 'directionChangeListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [directionChangeListener] Panorama direction listener.
  void addDirectionChangeListener(
      PanoramaDirectionChangeListener directionChangeListener);

  /// Removes the direction listener.
  ///
  /// [directionChangeListener] The panorama direction listener to remove.
  void removeDirectionChangeListener(
      PanoramaDirectionChangeListener directionChangeListener);

  /// Adds span listener.
  ///
  /// The class does not retain the object in the 'spanChangeListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [spanChangeListener] Panorama span listener.
  void addSpanChangeListener(PanoramaSpanChangeListener spanChangeListener);

  /// Removes span listener.
  ///
  /// [spanChangeListener] The span listener to remove.
  void removeSpanChangeListener(PanoramaSpanChangeListener spanChangeListener);

  /// Adds company tap listener.
  ///
  /// The class does not retain the object in the 'companyTapListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [companyTapListener] Company tap listener.
  void addCompanyTapListener(PanoramaCompanyTapListener companyTapListener);

  /// Removes company tap listener.
  ///
  /// [companyTapListener] The company tap listener to remove.
  void removeCompanyTapListener(PanoramaCompanyTapListener companyTapListener);

  /// Adds error listener.
  ///
  /// The class does not retain the object in the 'errorListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  ///
  /// [errorListener] Listeners that notify when a panorama failed to open.
  void addErrorListener(PanoramaErrorListener errorListener);

  /// Removes error listener.
  ///
  /// [errorListener] The listener to remove.
  void removeErrorListener(PanoramaErrorListener errorListener);

  /// Allows showing loading wheels.
  void enableLoadingWheel();

  /// Disallows showing loading wheels.
  void disableLoadingWheel();

  /// Checks if loading wheels can be shown while the panorama is opening.
  core.bool loadingWheelEnabled();

  /// Called when a memory warning happens.
  void onMemoryWarning();

  core.bool isValid();
}
