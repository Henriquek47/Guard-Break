import '../engine/game_object.dart';
import '../models/pokemon_model.dart';
import 'enemy_object.dart';

class PlayerObject implements GameObject {
  EnemyObject? enemyObject;
  PokemonModel? pokemon;

  @override
  void update(double deltaTime) {}

  void attack() {
    final currentPokemon = pokemon;
    if (currentPokemon == null) return;
    // Aqui tu tem que fazer o cooldown do ataque do Player
    // Tbm fazer o delay de ataque de 500 milisegundos antes de realmente atacar
    // Verificar se o parry do inimigo bloqueou antes de atacar
    enemyObject?.takeDamage(currentPokemon.baseAttack);
  }
}
