import 'dart:math';

class Solution {
  int lengthOfLongestSubstring(String s) {
    int res = 0;
    int l = 0;
    Set<String> set = Set();
    for (var i = 0; i < s.length; i++) {
      while (set.contains(s[i])) {
        set.remove(s[l]);
        l++;
      }
      set.add(s[i]);
      res = max(res, i - l + 1);
    }
    return res;
  }
}

// Учитывая строку s, найдите длину самой длинной подстроки без повторяющихся символов.

// Input: s = "abcabcbb"
// Output: 3
// Explanation: The answer is "abc", with the length of 3.