class Solution {
  void rotate(List<int> nums, int k) {
    k %= nums.length;
    reverse(nums, 0, nums.length - 1);
    reverse(nums, 0, k - 1);
    reverse(nums, k, nums.length - 1);
    print(nums);
  }

  void reverse(List<int> nums, int begin, int end) {
    var temp = nums.sublist(begin, end + 1);
    var rev = temp.reversed.toList();
    int j = 0;
    for (var i = begin; i < end + 1; i++) {
      nums[i] = rev[j];
      j++;
    }
  }
}

//https://leetcode.com/problems/rotate-array/