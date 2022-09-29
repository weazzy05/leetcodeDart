class Solution {
  List<int> searchRange(List<int> nums, int target) {
    if (nums.isEmpty) return [-1, -1];
    int l = 0;
    int r = nums.length - 1;
    int leftTargetIndex = -1;
    int rigthTargetIndex = -1;

    while (l <= r) {
      int mid = (l + r) ~/ 2;
      if (mid == 0 && nums[mid] == target) {
        leftTargetIndex = mid;
        break;
      }

      if (nums[mid] == target && nums[mid - 1] == target) {
        r = mid - 1;
      } else if (nums[mid] == target) {
        leftTargetIndex = mid;
        break;
      } else {
        if (nums[mid] < target) {
          l = mid + 1;
        } else {
          r = mid - 1;
        }
      }
    }

    l = 0;
    r = nums.length - 1;
    while (l <= r) {
      int mid = (l + r) ~/ 2;
      if (mid == nums.length - 1 && nums[mid] == target) {
        rigthTargetIndex = mid;
        break;
      }

      if (nums[mid] == target && nums[mid + 1] == target) {
        l = mid + 1;
      } else if (nums[mid] == target) {
        rigthTargetIndex = mid;
        break;
      } else {
        if (nums[mid] < target) {
          l = mid + 1;
        } else {
          r = mid - 1;
        }
      }
    }
    if (leftTargetIndex != -1 && rigthTargetIndex != -1)
      return [leftTargetIndex, rigthTargetIndex];
    if (leftTargetIndex != -1) return [leftTargetIndex, leftTargetIndex];
    if (rigthTargetIndex != -1) return [rigthTargetIndex, rigthTargetIndex];
    return [-1, -1];
  }
}

// Учитывая массив целых чисел, отсортированных в порядке неубывания, 
//найдите начальную и конечную позиции заданного целевого значения.

// Если цель не найдена в массиве, верните [-1, -1].

// Вы должны написать алгоритм с O(log n) сложностью во время выполнения.

// Example 1:

// Input: nums = [5,7,7,8,8,10], target = 8
// Output: [3,4]
// Example 2:

// Input: nums = [5,7,7,8,8,10], target = 6
// Output: [-1,-1]
// Example 3:

// Input: nums = [], target = 0
// Output: [-1,-1]