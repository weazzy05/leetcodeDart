class Solution {
  int search(List<int> nums, int target) {
    int l = 0;
    int r = nums.length - 1;
    while (l <= r) {
      int mid = (r + l) ~/ 2;
      if (nums[mid] == target) return mid;
      if (nums[mid] >= nums[l]) {
        if (nums[mid] < target || nums[l] > target) {
          l = mid + 1;
        } else {
          r = mid - 1;
        }
      } else {
        if (nums[mid] > target || nums[r] < target) {
          r = mid - 1;
        } else {
          l = mid + 1;
        }
      }
    }
    return -1;
  }
}

// Существует целочисленный массив nums, отсортированный в порядке возрастания (с различными значениями).

// Перед передачей в вашу функцию nums, возможно, поворачивается с неизвестным индексом поворота k (1 <= k < nums.длина) так, чтобы результирующий массив был [nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]] (0-индексированный). Например, [0,1,2,4,5,6,7] может быть повернуто в pivotindex 3 и стать [4,5,6,7,0,1,2].

// Учитывая номера массива после возможного поворота и целочисленный целевой объект, верните индекс целевого объекта, если он находится в nums, или -1, если он не находится в nums.
// Вы должны написать алгоритм с O(log n) сложностью во время выполнения.

// Example 1:

// Input: nums = [4,5,6,7,0,1,2], target = 0
// Output: 4
// Example 2:

// Input: nums = [4,5,6,7,0,1,2], target = 3
// Output: -1
// Example 3:

// Input: nums = [1], target = 0
// Output: -1