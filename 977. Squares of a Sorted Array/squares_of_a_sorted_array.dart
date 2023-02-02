class Solution {
  List<int> sortedSquares2(List<int> nums) {
    int n = nums.length;
    List<int> res = List.generate(n, (_) => 0);
    int l = 0;
    int r = n - 1;
    for (int i = n - 1; i >= 0; i--) {
      if (nums[l].abs() > nums[r].abs()) {
        res[i] = nums[l] * nums[l];
        l++;
      } else {
        res[i] = nums[r] * nums[r];
        r--;
      }
    }
    return res;
  }
}

//https://leetcode.com/problems/squares-of-a-sorted-array/