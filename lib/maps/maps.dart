library game.maps;

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:stem_odyssey/utils/utils.dart';

part './fullmap.dart';

abstract class MapObject extends SpriteComponent {
  final String baseImg;

  MapObject({
    required this.baseImg,
  });

  @override
  Future<void> onLoad() async {
    sprite = Sprite(await Flame.images.load(baseImg));
    size = Vector2.all(GameConfigs.tileSize * 190);
    addAll([
/*       await mcSprite(
        Vector2(
          STEMOdyssey.tileSize * 87,
          STEMOdyssey.tileSize * 90,
        ),
      ) */
    ]);
  }
}
