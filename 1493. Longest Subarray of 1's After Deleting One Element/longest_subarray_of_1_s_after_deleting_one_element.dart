import 'dart:math';

class Solution {
  int longestSubarray(List<int> nums) {
    int beforeZeroOnes = 0;
    int afterZeroOnes = 0;
    int res = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == 1) {
        afterZeroOnes++;
      } else {
        beforeZeroOnes = afterZeroOnes;
        afterZeroOnes = 0;
      }
      res = max(res, beforeZeroOnes + afterZeroOnes);
    }
    return res == nums.length ? res - 1 : res;
  }
}

//https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/