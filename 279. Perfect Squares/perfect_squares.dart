import 'dart:math';

class Solution {
  int numSquares(int n) {
    if (n <= 0) {
      return 0;
    }
    List<int> cntPerfectSquares = [0];
    while (cntPerfectSquares.length <= n) {
      int m = cntPerfectSquares.length;
      int cntSquares = 2147483647;
      for (int i = 1; i * i <= m; i++) {
        cntSquares = min(cntSquares, cntPerfectSquares[m - i * i] + 1);
      }

      cntPerfectSquares.add(cntSquares);
    }
    return cntPerfectSquares[n];
  }
}
