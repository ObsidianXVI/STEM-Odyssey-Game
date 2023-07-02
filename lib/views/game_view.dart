part of game.views;

class GameView extends StatelessWidget {
  const GameView();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GameWidget(
        game: OdysseyGame(),
      ),
    );
  }
}

class OdysseyGame extends FlameGame {
  final RouterComponent routerComponent = RouterComponent(
    initialRoute: 'fullmap',
    routes: {
      'fullmap': Route(Fullmap.new),
    },
  );
  @override
  Future<void> onLoad() async {
    addAll([
      routerComponent,
      // mcSprite
    ]);
  }
}
