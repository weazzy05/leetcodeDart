class Solution {
  void moveZeroes(List<int> nums) {
    int leftRef = 0;
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        int temp = nums[i];
        nums[i] = nums[leftRef];
        nums[leftRef] = temp;
        leftRef += 1;
      }
    }
    return;
  }
}

//https://leetcode.com/problems/move-zeroes/