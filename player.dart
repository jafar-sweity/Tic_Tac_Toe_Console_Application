import 'dart:io';
import 'print.dart';

class Player {
  static int getMove(String player, Print board) {
    int? move;
    while (true) {
      print('$player, enter your move (1-9):');
      String? input = stdin.readLineSync();
      if (input == null || input.isEmpty) continue;
      move = int.tryParse(input);
      if (move == null || move < 1 || move > 9 || !board.isEmpty(move - 1)) {
        print(
            'You idiot just the board from 1 - 9 ');
      } else {
        return move - 1;
      }
    }
  }
}
