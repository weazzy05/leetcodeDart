class Solution {
  bool isOneEditDistance(String s, String t) {
    int n = s.length;
    int m = t.length;
    int i = 0;
    int j = 0;
    int count = 0;
    if ((m - n).abs() > 1) return false;

    while (i < n && j < m) {
      if (s[i] != s[j]) {
        if (count == 1) {
          return false;
        }
        if (n > m) {
          i++;
        } else if (m > n) {
          j++;
        } else {
          i++;
          j++;
        }
        count++;
      } else {
        i++;
        j++;
      }
    }

    if (i < n || j < m) {
      count++;
    }
    return count == 1;
  }
}

//https://leetcode.com/problems/one-edit-distance/