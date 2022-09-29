class Solution {
  bool isValidSudoku(List<List<String>> board) {
    List<Set> rowSet = List.generate(9, (_) => {});
    List<Set> columnSet = List.generate(9, (_) => {});
    List<Set> boxSet = List.generate(9, (_) => {});

    for (var i = 0; i < board.length; i++) {
      int lengthRow = board[i].length;
      for (var j = 0; j < lengthRow; j++) {
        if (board[i][j] != '.') {
          int target = int.parse(board[i][j]);
          int boxIndex = 3 * (i ~/ 3) + (j ~/ 3);
          if (!isUniqueElement(rowSet, i, target) ||
              !isUniqueElement(columnSet, j, target) ||
              !isUniqueElement(boxSet, boxIndex, target)) {
            return false;
          }
        }
      }
    }
    return true;
  }

  bool isUniqueElement(List<Set> set, int index, int target) {
    return set[index].contains(target) == true ? false : set[index].add(target);
  }
}

// Определите, допустима ли доска для судоку размером 9 х 9 дюймов. 
// Только заполненные ячейки должны быть проверены в соответствии со следующими правилами:

// Каждая строка должна содержать цифры 1-9 без повторения.
// Каждый столбец должен содержать цифры 1-9 без повторения.
// Каждое из девяти вложенных полей сетки размером 3 х 3 должно содержать цифры 1-9 без повторения.
// Примечание:

// Доска для судоку (частично заполненная) может быть действительной, но не обязательно разрешимой.
// Только заполненные ячейки должны быть проверены в соответствии с упомянутыми правилами.


// Input: board = 
// [["5","3",".",".","7",".",".",".","."]
// ,["6",".",".","1","9","5",".",".","."]
// ,[".","9","8",".",".",".",".","6","."]
// ,["8",".",".",".","6",".",".",".","3"]
// ,["4",".",".","8",".","3",".",".","1"]
// ,["7",".",".",".","2",".",".",".","6"]
// ,[".","6",".",".",".",".","2","8","."]
// ,[".",".",".","4","1","9",".",".","5"]
// ,[".",".",".",".","8",".",".","7","9"]]
// Output: true
// Example 2:

// Input: board = 
// [["8","3",".",".","7",".",".",".","."]
// ,["6",".",".","1","9","5",".",".","."]
// ,[".","9","8",".",".",".",".","6","."]
// ,["8",".",".",".","6",".",".",".","3"]
// ,["4",".",".","8",".","3",".",".","1"]
// ,["7",".",".",".","2",".",".",".","6"]
// ,[".","6",".",".",".",".","2","8","."]
// ,[".",".",".","4","1","9",".",".","5"]
// ,[".",".",".",".","8",".",".","7","9"]]
// Output: false
// Explanation: Same as Example 1, except with the 5 in the top left 
//corner being modified to 8. Since there are two 8's in the top left 3x3 sub-box, it is invalid.