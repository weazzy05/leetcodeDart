class Solution {
  int firstBadVersion(int n) {
    int l = 1;
    int r = n;
    while (l <= r) {
      int m = (l + r) ~/ 2;
      if (isBadVersion(m)) {
        r = m - 1;
      } else {
        l = m + 1;
      }
    }
    return l;
  }

  bool isBadVersion(int z) {
    return true;
  }
}

// https://leetcode.com/problems/first-bad-version/