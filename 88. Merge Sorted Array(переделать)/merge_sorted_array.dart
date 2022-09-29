class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    List<int> cur1 = nums1.sublist(0, m);
    List<int> cur2 = nums2.toList();
    List<int> res = [];
    int i = 0;
    int j = 0;
    while ((i != m) || (j != n)) {
      if (i == m) {
        res.addAll(cur2.sublist(j, n));
        j = n;
      } else if (j == n) {
        res.addAll(cur1.sublist(i, m));
        i = m;
      } else {
        if (cur1[i] <= cur2[j]) {
          res.add(cur1[i]);
          i++;
        } else {
          res.add(cur2[j]);
          j++;
        }
      }
    }
    for (var i = 0; i < res.length; i++) {
      nums1[i] = res[i];
    }
  }
}


//https://leetcode.com/problems/merge-sorted-array/