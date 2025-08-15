import 'dart:async';
import 'dart:io';

import '../objects/player_object.dart';
import 'inputs/attack_input.dart';

class GameInput {
  final List<int> _inputQueue = [];
  final prevLineMode = stdin.lineMode;
  final prevEchoMode = stdin.echoMode;

  void initInputHandler() {
    stdin
      ..lineMode = false
      ..echoMode = false;
    stdin.listen((bytes) {
      _inputQueue.addAll(bytes);
    });
  }

  Future<void> resetInputHandler() async {
    stdin
      ..lineMode = prevLineMode
      ..echoMode = prevEchoMode;
  }

  void processInput(PlayerObject player) {
    while (_inputQueue.isNotEmpty) {
      final code = _inputQueue.removeAt(0);
      if (code == 113) {
        //tecla q
        AttackInput().execute(player);
      }
    }
  }
}
