class Solution {
  int searchInsert(List<int> nums, int target) {
    int min = 0;
    int max = nums.length - 1;
    return binarySearch(nums, target, min, max);
  }

  int binarySearch(List<int> arr, int userValue, int min, int max) {
    if (max >= min) {
      int mid = ((max + min) / 2).floor();
      if (userValue == arr[mid]) {
        return mid;
      } else if (userValue > arr[mid]) {
        return binarySearch(arr, userValue, mid + 1, max);
      } else {
        return binarySearch(arr, userValue, min, mid - 1);
      }
    }
    return min;
  }
}

// Учитывая отсортированный массив различных целых чисел и целевое значение, 
// верните индекс, если целевое значение найдено. Если нет, верните индекс туда,
//  где он был бы, если бы он был вставлен по порядку.

// Вы должны написать алгоритм с O(log n) сложностью во время выполнения.

// Example 1:

// Input: nums = [1,3,5,6], target = 5
// Output: 2
// Example 2:

// Input: nums = [1,3,5,6], target = 2
// Output: 1
// Example 3:

// Input: nums = [1,3,5,6], target = 7
// Output: 4