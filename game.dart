import 'dart:io';
import 'print.dart';
import 'player.dart';

class TicTacToeGame {
  void start() {
    print('Hey player 1 choose what you want X or O.');
    String? m = stdin.readLineSync()?.toUpperCase();
    while (m != 'X' && m != 'O') {
      print('Invalid just X or O:');
      m = stdin.readLineSync()?.toUpperCase();
    }
    String m2 = m == 'X' ? 'O' : 'X';

    Print board = Print();
    String current = m!;
    bool end = false;

    while (!end) {
      board.display();

      int move = Player.getMove(current, board);

      board.update(move, current);

      if (board.checkWinner(current)) {
        board.display();
        print(
            '${current!= m ? "Player 1" : "Player 2"} is stupid hahahahaha!');
        end = true;
      } else if (board.isFull()) {
        board.display();
        print('The game is a draw!');
        end = true;
      } else {
        current = current == m
            ? m2
            : m; 
      }
    }

    print('agian ?????? (y/n)');
    String? agian = stdin.readLineSync();
    if (agian?.toLowerCase() == 'y') {
      start(); 
    }
  }
}
