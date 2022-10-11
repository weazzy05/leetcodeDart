class Solution {
  bool checkSubarraySum(List<int> nums, int k) {
    Map<int, int> map = {0: -1};
    int sum = 0;
    for (int i = 0; i < nums.length; i++) {
      sum += nums[i];
      sum = sum % k;
      int? prev = map[sum];
      if (prev != null) {
        if (i - prev > 1) {
          return true;
        }
      } else {
        map[sum] = i;
      }
    }
    return false;
  }
}
//https://leetcode.com/problems/continuous-subarray-sum/submissions/