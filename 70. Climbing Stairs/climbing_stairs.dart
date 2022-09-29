class Solution {
  Map<int, int> map = {};

  int climbStairs(int n) {
    int prev = 1;
    int curr = 1;
    int temp = 0;

    for (int i = 1; i < n; i++) {
      temp = curr;
      curr = prev + curr;
      prev = temp;
    }
    return curr;
  }

  int helper(int n) {
    if (n == 1) return 1;
    if (n == 2) return 2;

    int res = 0;

    if (map.containsKey(n)) return map[n]!;

    res = helper(n - 1) + helper(n - 2);

    map[n] = res;

    return res;
  }
}

///https://leetcode.com/problems/climbing-stairs/