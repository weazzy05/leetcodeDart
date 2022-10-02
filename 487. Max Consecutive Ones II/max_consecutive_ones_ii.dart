import 'dart:math';

class Solution {
  int longestSubarray(List<int> nums) {
    int beforeZeroOnes = 0;
    int afterZeroOnes = 0;
    int res = 0;
    for (int i = 0; i < nums.length; i++) {
      afterZeroOnes++;
      if (nums[i] == 0) {
        beforeZeroOnes = afterZeroOnes;
        afterZeroOnes = 0;
      }
      res = max(res, beforeZeroOnes + afterZeroOnes);
    }
    return res;
  }
}

//https://leetcode.com/problems/max-consecutive-ones-ii/