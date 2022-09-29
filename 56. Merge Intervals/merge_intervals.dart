import 'dart:math';

class Solution {
  List<List<int>> merge(List<List<int>> intervals) {
    intervals.sort((a, b) => a[0] - b[0]);

    final res = <List<int>>[];

    for (int i = 0; i < intervals.length; i++) {
      final interval = intervals[i];
      if (i == 0) {
        res.add(interval);
      } else {
        final prev = res.last;
        if (interval[0] <= prev[1]) {
          prev[1] = max(interval[1], prev[1]);
        } else {
          res.add(interval);
        }
      }
    }

    return res;
  }
}

///https://leetcode.com/problems/merge-intervals/