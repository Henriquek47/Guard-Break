import 'dart:math';

import '../api/pokemon_repo.dart';
import '../models/pokemon_model.dart';
import '../objects/world_object.dart';
import 'game_input.dart';
import 'game_object.dart';

class GameManager {
  List<GameObject> activeObjects = [];
  GameInput _gameInput = GameInput();
  PokemonModel? pokemonInimigo;
  PokemonModel? pokemonAlidado;

  Future<void> loadPokemons() async {
    pokemonAlidado = await getPokemon('pikachu');
    pokemonInimigo = await getPokemon('charmeleon');
  }

  Future<void> gameLoop() async {
    const int fps = 60;
    const int msPerFrame =
        1000 ~/ fps; // Milissegundos por quadro (~16ms para 60 FPS)

    final Stopwatch stopwatch = Stopwatch()..start();
    int previousMs = stopwatch.elapsedMilliseconds;

    WorldObject worldObject = WorldObject();
    activeObjects.add(worldObject);
    _gameInput.initInputHandler();

    try {
      while (true) {
        int currentMs = stopwatch.elapsedMilliseconds;
        int elapsedMs = currentMs - previousMs;

        // Converte o tempo decorrido para segundos (delta time)
        double deltaTime = elapsedMs / 1000.0;

        _mainUpdate(deltaTime, worldObject);

        // Calcula quanto tempo do quadro já passou e quanto falta para dormir
        int frameTimeMs = stopwatch.elapsedMilliseconds - currentMs;
        int sleepTimeMs = max(0, msPerFrame - frameTimeMs);

        // Pausa a execução para manter o FPS constante
        await Future.delayed(Duration(milliseconds: sleepTimeMs));

        previousMs = currentMs;
      }
    } finally {
      await _gameInput.resetInputHandler();
    }
  }

  void _mainUpdate(double deltaTime, WorldObject worldObject) {
    _gameInput.processInput(worldObject.playerObject);
    for (var object in activeObjects) {
      object.update(deltaTime);
    }
  }
}
