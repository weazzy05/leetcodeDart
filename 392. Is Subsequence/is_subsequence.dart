class Solution {
  bool isSubsequence(String s, String t) {
    int lS = 0;
    if (s.length > t.length) return false;
    for (var i = 0; i < t.length; i++) {
      if (lS == s.length) return true;
      if (s[lS] == t[i]) lS++;
    }
    return lS == s.length;
  }
}
