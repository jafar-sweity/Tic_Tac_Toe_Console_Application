class Print {
  final List<String> c = List.filled(9, ' ');

  void display() {
    print('\n${c[0]} | ${c[1]} | ${c[2]}');
    print('--+---+--');
    print('${c[3]} | ${c[4]} | ${c[5]}');
    print('--+---+--');
    print('${c[6]} | ${c[7]} | ${c[8]}');
    print('\n');
  }

  bool isFull() => c.every((cell) => cell != ' ');

  bool isEmpty(int index) => c[index] == ' ';

  void update(int index, String marker) {
    c[index] = marker;
  }

  bool checkWinner(String player) {
    List<List<int>> possible_to_win = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ];
    

    for (var comb in possible_to_win) {
      if (c[comb[0]] == player &&
          c[comb[1]] == player &&
          c[comb[2]] == player) {
        return true;
      }
    }
    return false;
  }
}
