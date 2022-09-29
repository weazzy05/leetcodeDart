class Solution {
  int mySqrt(int x) {
    int l = 1;
    int r = x;
    int power = x;
    while (power * power > x || (power + 1) * (power + 1) <= x) {
      power = (r + l) ~/ 2;
      if (power * power < x)
        l = power + 1;
      else if (power * power > x) r = power - 1;
    }
    return power;
  }
}

///https://leetcode.com/problems/sqrtx/