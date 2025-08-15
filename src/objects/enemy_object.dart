import '../engine/game_object.dart';
import 'target_object.dart';

class EnemyObject implements GameObject, TargetObject {
  @override
  void update(double deltaTime) {}

  @override
  void takeDamage(int damage) {}
}
