class Solution {
  void backTracking2(int n, int open, int close, String str) {
    if (str.length == 2 * n && open == close) {
      res.add(str);
      return;
    }
    if (open < n) backTracking2(n, open + 1, close, str + '(');

    if (close < open) {
      backTracking2(n, open, close + 1, str + ')');
    }
  }

  List<String> generateParenthesis(int n) {
    backTracking2(n, 0, 0, '');
    return res;
  }

  List<String> res = [];
}

// Учитывая n пар круглых скобок, напишите функцию для генерации всех комбинаций правильно сформированных круглых скобок.
// Example 1:

// Input: n = 3
// Output: ["((()))","(()())","(())()","()(())","()()()"]
// Example 2:

// Input: n = 1
// Output: ["()"]