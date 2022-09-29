class Solution {
  List<List<int>> generate(int numRows) {
    List<List<int>> ans = [
      [1]
    ];
    for (var i = 1; i < numRows; i++) {
      ans.add(generateArray(ans[i - 1]));
    }
    return ans;
  }

  List<int> generateArray(List<int> a) {
    List<int> ans = [1, 1];
    for (var i = 1; i < a.length; i++) {
      ans.insert(i, a[i] + a[i - 1]);
    }
    return ans;
  }
}

//https://leetcode.com/problems/pascals-triangle/