import '../api/pokemon_repo.dart';
import '../engine/game_object.dart';
import 'enemy_object.dart';
import 'player_object.dart';

class WorldObject implements GameObject {
  PlayerObject playerObject = PlayerObject();
  EnemyObject enemyObject = EnemyObject();

  Future<void> init() async {
    playerObject.pokemon = await getPokemon('pikachu');
    enemyObject.pokemon = await getPokemon('charmeleon');
  }

  @override
  void update(double deltaTime) {
    playerObject.update(deltaTime);
    enemyObject.update(deltaTime);
  }
}
