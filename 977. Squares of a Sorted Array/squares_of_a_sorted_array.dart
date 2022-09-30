class Solution {
  List<int> sortedSquares(List<int> nums) {
    List<int> negativeArray = [];
    // List<int> res = [];
    int i = 0;
    while (nums.length > i && nums[i] < 0) {
      negativeArray.add(nums[i]);
      i++;
    }
    List<int> posArray = nums.sublist(i, nums.length);
    List<int> sortedList = negativeArray.reversed.toList();
    int n = sortedList.length;
    for (var i = 0; i < n + posArray.length; i++) {
      if (i < sortedList.length) {
        sortedList[i] *= -1;
      } else {
        sortedList.add(0);
      }
    }
    merge(sortedList, n, posArray, posArray.length);
    for (var i = 0; i < sortedList.length; i++) {
      sortedList[i] = sortedList[i] * sortedList[i];
    }
    return sortedList;
  }

  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    m = m - 1;
    n = n - 1;
    int length = nums1.length - 1;
    while (m >= 0 || n >= 0) {
      if (m < 0 || n < 0) {
        if (m < 0) {
          nums1[length] = nums2[n];
          n--;
        } else {
          nums1[length] = nums1[m];
          m--;
        }
      } else {
        if (nums1[m] >= nums2[n]) {
          nums1[length] = nums1[m];
          m--;
        } else {
          nums1[length] = nums2[n];
          n--;
        }
      }

      length--;
    }
  }
}

//https://leetcode.com/problems/squares-of-a-sorted-array/