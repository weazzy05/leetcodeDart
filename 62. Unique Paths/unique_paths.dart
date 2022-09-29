class Solution {
  List<List<int>> list = [];

  int uniquePaths(int m, int n) {
    for (int i = 0; i < m; i++) {
      list.add([]);
      for (int j = 0; j < n; j++) {
        list[i].add(0);
      }
    }
    return helper(m - 1, n - 1);
  }

  int helper(int m, int n) {
    if (m < 0 || n < 0) return 0;
    if (n == 0 && m == 0) return 1;
    if (list[m][n] != 0) return list[m][n];
    list[m][n] = helper(m - 1, n) + helper(m, n - 1);
    return list[m][n];
  }
}

///https://leetcode.com/problems/unique-paths/