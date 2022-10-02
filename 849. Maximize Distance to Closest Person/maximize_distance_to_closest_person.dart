import 'dart:math';

class Solution {
  int maxDistToClosest(List<int> seats) {
    int range = 0;
    int l = -1;

    for (var i = 0; i < seats.length; i++) {
      if (seats[i] == 1) {
        if (l == -1) {
          range = max(range, i);
        } else {
          range = max(range, (i - l) ~/ 2);
        }
        l = i;
      }
    }
    if (seats[seats.length - 1] == 0) {
      range = max(range, (seats.length - 1 - l));
    }
    return range;
  }
}

//https://leetcode.com/problems/maximize-distance-to-closest-person/submissions/