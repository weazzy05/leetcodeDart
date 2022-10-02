import 'dart:math';

class Solution {
  int maxPower(String s) {
    int maxS = 1;
    int l = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i] != s[l]) {
        maxS = max(maxS, i - l);
        l = i;
      }
    }
    maxS = max(maxS, s.length - l);
    return maxS;
  }
}
