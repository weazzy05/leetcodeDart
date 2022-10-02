class Solution {
  int numIslands(List<List<String>> grid) {
    int res = 0;
    for (int i = 0; i < grid.length; i++) {
      for (int j = 0; j < grid[0].length; j++) {
        if (grid[i][j] == '1') {
          res++;
          dfs(grid, i, j);
        }
      }
    }
    return res;
  }

  void dfs(List<List<String>> list, int i, int j) {
    if (i < 0 ||
        j < 0 ||
        i >= list.length ||
        j >= list[0].length ||
        list[i][j] == '0') {
      return;
    }

    list[i][j] = '0';

    dfs(list, i, j - 1);
    dfs(list, i, j + 1);
    dfs(list, i - 1, j);
    dfs(list, i + 1, j);
  }
}
