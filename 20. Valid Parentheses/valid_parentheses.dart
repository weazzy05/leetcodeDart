class Solution {
  bool isValid(String s) {
    List<String> res = [];
    if (s.length % 2 == 0) {
      for (var i = 0; i < s.length; i++) {
        if (s[i] == '[' || s[i] == '{' || s[i] == '(') {
          res.add(s[i]);
        } else if (s[i] == ']') {
          if (res.isNotEmpty && res.last == '[') {
            res.removeLast();
          } else {
            return false;
          }
        } else if (s[i] == '}') {
          if (res.isNotEmpty && res.last == '{') {
            res.removeLast();
          } else {
            return false;
          }
        } else if (s[i] == ')') {
          if (res.isNotEmpty && res.last == '(') {
            res.removeLast();
          } else {
            return false;
          }
        }
      }
    } else
      return false;

    if (res.isEmpty) return true;
    return false;
  }
}

// Дана строка ы, содержащая только символы '(', ')', '{', '}', '[' и ']', определите, является ли входная строка допустимой.

// Входная строка допустима, если:

// Открытые скобки должны быть закрыты скобками того же типа.
// Открытые скобки должны быть закрыты в правильном порядке.
// Каждая закрывающая скобка имеет соответствующую открытую скобку того же типа.

// Example 1:

// Input: s = "()"
// Output: true
// Example 2:

// Input: s = "()[]{}"
// Output: true
// Example 3:

// Input: s = "(]"
// Output: false