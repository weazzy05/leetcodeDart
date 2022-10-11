class Solution {
  List<int> productExceptSelf(List<int> nums) {
    List<int> ans = List.filled(nums.length, 1);

    for (var i = 1; i < nums.length; i++) {
      ans[i] = ans[i - 1] * nums[i - 1];
    }
    int suffixNum = 1;
    for (var i = nums.length - 1; i >= 0; i--) {
      ans[i] *= suffixNum;
      suffixNum *= nums[i];
    }
    return ans;
  }
}

//https://leetcode.com/problems/product-of-array-except-self/submissions/