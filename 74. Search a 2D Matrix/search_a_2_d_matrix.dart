class Solution {
  bool searchMatrix(List<List<int>> matrix, int target) {
    int? rowIndexSearch;
    if (matrix.last.last < target) return false;
    for (var i = 0; i < matrix.length; i++) {
      if (matrix[i].last >= target) {
        rowIndexSearch = i;
        break;
      }
    }
    if (rowIndexSearch == null) {
      return false;
    }
    int min = 0;
    int max = matrix[rowIndexSearch].length - 1;
    if (binarySearch(matrix[rowIndexSearch], target, min, max) != -1)
      return true;
    return false;
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
    return -1;
  }
}

///https://leetcode.com/problems/search-a-2d-matrix/