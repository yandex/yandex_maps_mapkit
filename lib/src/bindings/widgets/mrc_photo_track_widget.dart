import 'package:yandex_maps_mapkit/src/bindings/widgets/platform_view_widget.dart';
import 'package:yandex_maps_mapkit/src/places/mrc/mrc_photo_track_player.dart';
import 'package:yandex_maps_mapkit/src/places/places.dart';

class MrcPhotoTrackWidget extends PlatformViewWidget {
  MrcPhotoTrackWidget({
    super.key,
    super.platformViewType,
    super.textDirection,
    super.gestureRecognizers,
    super.hitTestBehavior,
    required this.onPlayerCreated,
  }) : super(
          onViewCreated: (view) {
            final player =
                PlacesFactory.instance.createMrcPhotoTrackPlayer(view);
            onPlayerCreated(player);

            return true;
          },
        );

  final void Function(MrcPhotoTrackPlayer) onPlayerCreated;
}
