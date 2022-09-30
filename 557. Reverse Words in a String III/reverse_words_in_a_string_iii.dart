class Solution {
  String reverseWords(String s) {
    final ss = s.split(' ');
    for (var i = 0; i < ss.length; i++) {
      ss[i] = ss[i].split('').reversed.join('');
    }
    return (ss.join(' '));
  }
}

///https://leetcode.com/problems/reverse-words-in-a-string-iii/