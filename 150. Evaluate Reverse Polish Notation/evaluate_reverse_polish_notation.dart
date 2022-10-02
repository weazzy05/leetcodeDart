class Solution {
  int evalRPN(List<String> tokens) {
    List<int> stack = [];
    for (var elem in tokens) {
      int? tryInt = int.tryParse(elem);
      if (tryInt != null) {
        stack.add(tryInt);
      } else {
        if (elem == '+') {
          stack[stack.length - 2] =
              stack[stack.length - 2] + stack[stack.length - 1];
          stack.removeLast();
        } else if (elem == '-') {
          stack[stack.length - 2] =
              stack[stack.length - 2] - stack[stack.length - 1];
          stack.removeLast();
        } else if (elem == '*') {
          stack[stack.length - 2] =
              stack[stack.length - 2] * stack[stack.length - 1];
          stack.removeLast();
        } else if (elem == '/') {
          stack[stack.length - 2] =
              stack[stack.length - 2] ~/ stack[stack.length - 1];
          stack.removeLast();
        }
      }
    }
    return stack.first;
  }
}

//https://leetcode.com/problems/evaluate-reverse-polish-notation/