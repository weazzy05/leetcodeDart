import 'dart:math';

class Solution {
  int longestOnes(List<int> nums, int k) {
    int ZeroCount = 0;
    int l = 0;
    int maxRes = 0;
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == 0) ZeroCount++;
      while (ZeroCount > k) {
        if (nums[l++] == 0) ZeroCount--;
      }

      if (ZeroCount <= k) {
        maxRes = max(maxRes, i - l + 1);
      }
    }
    return maxRes;
  }
}
//https://leetcode.com/problems/max-consecutive-ones-iii/submissions/