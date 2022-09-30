class Solution {
  int search(List<int> nums, int target) {
    int min = 0;
    int max = nums.length - 1;
    return binarySearch(nums, target, min, max);
  }

  int binarySearch(List<int> arr, int userValue, int min, int max) {
    if (max >= min) {
      int mid = ((max + min) / 2).floor();
      if (userValue == arr[mid]) {
        return mid;
      }
      // it can only be present in right subarray
      else if (userValue > arr[mid]) {
        return binarySearch(arr, userValue, mid + 1, max);
      } else {
        return binarySearch(arr, userValue, min, mid - 1);
      }
    }
    return -1;
  }
}

//https://leetcode.com/problems/binary-search/