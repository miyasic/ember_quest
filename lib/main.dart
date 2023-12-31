import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_template/ember_quest.dart';

import 'overlays/game_over.dart';
import 'overlays/main_menu.dart';

void main() {
  final game = EmberQuestGame.new;
  runApp(
    GameWidget<EmberQuestGame>.controlled(
      gameFactory: game,
      overlayBuilderMap: {
        'MainMenu': (_, game) => MainMenu(game: game),
        'GameOver': (_, game) => GameOver(game: game),
      },
      initialActiveOverlays: const ['MainMenu'],
    ),
  );
}
