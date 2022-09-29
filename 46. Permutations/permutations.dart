class Solution {
  List<List<int>> permute(List<int> nums) {
    List<List<int>> resz = [];
    backTracking3([], nums, resz);
    return resz;
  }

  void backTracking3(List<int> temp, List<int> nums, List<List<int>> resz) {
    if (nums.length == temp.length) {
      resz.add(temp.toList());
    } else {
      for (var i = 0; i < nums.length; i++) {
        if (temp.contains(nums[i])) continue;
        temp.add(nums[i]);
        backTracking3(temp, nums, resz);
        temp.removeLast();
      }
    }
  }
}

// Учитывая массив nums различных целых чисел, верните все возможные перестановки. 
// Вы можете вернуть ответ в любом порядке.

// Example 1:

// Input: nums = [1,2,3]
// Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
// Example 2:

// Input: nums = [0,1]
// Output: [[0,1],[1,0]]
// Example 3:

// Input: nums = [1]
// Output: [[1]]