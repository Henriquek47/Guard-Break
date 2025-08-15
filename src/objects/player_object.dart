import '../engine/game_object.dart';
import 'target_object.dart';

class PlayerObject implements GameObject {
  TargetObject? targetObject;

  @override
  void update(double deltaTime) {}

  void attack() {
    targetObject?.takeDamage(10);
  }
}
