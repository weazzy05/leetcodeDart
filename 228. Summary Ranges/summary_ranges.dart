class Solution {
  List<String> summaryRanges(List<int> nums) {
    int z = nums.length;
    List<String> res = [];
    for (int i = 0; i < z; i++) {
      int start = nums[i];
      int end = nums[i];
      while (i < z - 1 && nums[i] + 1 == nums[i + 1]) {
        end = nums[i + 1];
        i++;
      }
      if (start == end) {
        res.add(start.toString());
      } else {
        res.add('$start->$end');
      }
    }
    return res;
  }
}

//https://leetcode.com/problems/summary-ranges/