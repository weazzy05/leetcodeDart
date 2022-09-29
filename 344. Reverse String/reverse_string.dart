class Solution {
  void reverseString(List<String> s) {
    for (var i = 0; i < s.length ~/ 2; i++) {
      String temp = s[i];
      s[i] = s[s.length - i - 1];
      s[s.length - i - 1] = temp;
    }
  }
}

//https://leetcode.com/problems/reverse-string/