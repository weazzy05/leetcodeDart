import 'dart:math';

class Solution {
  bool canJump(List<int> nums) {
    int reach = 0;
    for (int i = 0; i < nums.length; i++) {
      if (i > reach) return false;
      reach = max(reach, i + nums[i]);
    }
    return true;
  }
}


///https://leetcode.com/problems/jump-game/