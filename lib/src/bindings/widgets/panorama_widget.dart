import 'package:yandex_maps_mapkit/src/bindings/widgets/platform_view_widget.dart';
import 'package:yandex_maps_mapkit/src/places/panorama/player.dart';
import 'package:yandex_maps_mapkit/src/places/places.dart';

class PanoramaWidget extends PlatformViewWidget {
  PanoramaWidget({
    super.key,
    super.platformViewType,
    super.textDirection,
    super.gestureRecognizers,
    super.hitTestBehavior,
    required this.onPanoramaCreated,
    this.scale,
  }) : super(
          onViewCreated: (view) {
            final panorama = scale == null
                ? PlacesFactory.instance.createPanoramaPlayer(view)
                : PlacesFactory.instance
                    .createPanoramaPlayerWithScale(view, scaleFactor: scale);
            onPanoramaCreated(panorama);

            return true;
          },
        );

  final void Function(PanoramaPlayer) onPanoramaCreated;
  final double? scale;
}
