class Solution {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> res = [];
    nums.sort();
    for (var i = 0; i < nums.length; i++) {
      if (i == 0 || (i > 0 && nums[i] != nums[i - 1])) {
        int l = i + 1;
        int r = nums.length - 1;

        while (l < r) {
          int sum = nums[i] + nums[l] + nums[r];
          if (sum == 0) {
            res.add([nums[i], nums[l], nums[r]]);
            l++;
            r--;
            while (l < r && nums[l] == nums[l - 1]) {
              l++;
            }
          } else if (sum > 0) {
            r--;
          } else {
            l++;
          }
        }
      }
    }

    return res;
  }
} 

// Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

// Notice that the solution set must not contain duplicate triplets.

// Input: nums = [-1,0,1,2,-1,-4]
// Output: [[-1,-1,2],[-1,0,1]]
// Explanation: 
// nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
// nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
// nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
// The distinct triplets are [-1,0,1] and [-1,-1,2].
// Notice that the order of the output and the order of the triplets does not matter.
// Example 2:

// Input: nums = [0,1,1]
// Output: []
// Explanation: The only possible triplet does not sum up to 0.
// Example 3:

// Input: nums = [0,0,0]
// Output: [[0,0,0]]
// Explanation: The only possible triplet sums up to 0.