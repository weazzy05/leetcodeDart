import 'dart:math';

class Solution {
  int maxSubArray(List<int> nums) {
    int loc = 0;
    int glob = -9223372036854775808;
    for (var inn in nums) {
      loc = max(inn, loc + inn);
      glob = max(glob, loc);
    }
    return glob;
  }
}

// Учитывая целочисленный массив nums, найдите смежный подмассив 
//(содержащий по крайней мере одно число), который имеет наибольшую сумму, и верните его сумму.

// Подмассив - это непрерывная часть массива.

// Example 1:

// Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
// Output: 6
// Explanation: [4,-1,2,1] has the largest sum = 6.
// Example 2:

// Input: nums = [1]
// Output: 1
// Example 3:

// Input: nums = [5,4,-1,7,8]
// Output: 23