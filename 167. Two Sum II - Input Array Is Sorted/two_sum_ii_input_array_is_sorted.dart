class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    int l = 0;
    int r = numbers.length - 1;
    while (l <= r) {
      final temp = numbers[l] + numbers[r];
      if (temp == target) {
        return [++l, ++r];
      } else if (temp > target) {
        r--;
      } else
        l++;
    }
    return [];
  }
}
//https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/