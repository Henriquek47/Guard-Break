import '../engine/game_object.dart';
import '../models/pokemon_model.dart';

class EnemyObject implements GameObject {
  PokemonModel? pokemon;

  @override
  void update(double deltaTime) {}

  void takeDamage(int damage) {}

  //Criar uma funcao de parry aqui
}
