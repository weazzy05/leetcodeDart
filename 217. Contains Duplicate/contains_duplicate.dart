class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> res = Set<int>();
    for (var i = 0; i < nums.length; i++) {
      if (res.contains(nums[i])) {
        return true;
      }
      res.add(nums[i]);
    }
    if (res.length == nums.length) {
      return false;
    }
    return true;
  }
}

//https://leetcode.com/problems/contains-duplicate/