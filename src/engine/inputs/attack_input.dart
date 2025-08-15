import '../../objects/player_object.dart';
import 'i_command_input.dart';

class AttackInput implements CommandInput {
  @override
  void execute(PlayerObject player) {
    player.attack();
  }
}
