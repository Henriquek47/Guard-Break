import '../engine/game_object.dart';
import 'enemy_object.dart';
import 'player_object.dart';

class WorldObject implements GameObject {
  PlayerObject playerObject = PlayerObject();
  EnemyObject enemyObject = EnemyObject();

  @override
  void update(double deltaTime) {
    playerObject.update(deltaTime);
    enemyObject.update(deltaTime);
  }
}
