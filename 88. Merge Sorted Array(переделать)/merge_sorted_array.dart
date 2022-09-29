class Solution {
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


//https://leetcode.com/problems/merge-sorted-array/