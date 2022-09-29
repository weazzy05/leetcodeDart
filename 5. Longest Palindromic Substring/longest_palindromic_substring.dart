class Solution {
  String longestPalindrome(String s) {
    String gg = '';
    for (var i = 0; i < s.length; i++) {
      var r = i;
      var l = i;
      while (r < s.length && l >= 0 && s[r] == s[l]) {
        if (r - l + 1 > gg.length) {
          gg = s.substring(l, r + 1);
        }

        r++;
        l--;
      }

      r = i + 1;
      l = i;
      while (r < s.length && l >= 0 && s[r] == s[l]) {
        if (r - l + 1 > gg.length) {
          gg = s.substring(l, r + 1);
        }

        r++;
        l--;
      }
    }
    return gg;
  }
}

// Given a string s, return the longest palindromic substring in s.

// A string is called a palindrome string if the reverse of that string is the same as the original string.

// Input: s = "babad"
// Output: "bab"
// Explanation: "aba" is also a valid answer.