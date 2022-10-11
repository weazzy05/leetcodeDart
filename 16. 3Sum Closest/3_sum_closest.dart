import 'dart:math';

class Solution {
  int threeSumClosest(List<int> nums, int target) {
    int res = 0;
    nums.sort();

    int minRange = 2147483647;
    for (int i = 0; i < nums.length; i++) {
      int l = i + 1;
      int r = nums.length - 1;
      while (l < r) {
        int sum = nums[i] + nums[l] + nums[r];
        int temp = minRange;
        minRange = min(minRange, (target - sum).abs());
        if (temp != minRange) {
          res = sum;
        }
        if (sum > target) {
          r--;
        } else {
          l++;
        }
      }
    }
    return res;
  }
}
