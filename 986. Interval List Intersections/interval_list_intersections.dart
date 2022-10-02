import 'dart:math';

class Solution {
  List<List<int>> intervalIntersection(
      List<List<int>> firstList, List<List<int>> secondList) {
    List<List<int>> ans = [];
    int l1 = 0;
    int l2 = 0;
    while (l1 < firstList.length && l2 < secondList.length) {
      int maxA = max(firstList[l1][0], secondList[l2][0]);
      int minB = min(firstList[l1][1], secondList[l2][1]);
      int maxB = max(firstList[l1][1], secondList[l2][1]);
      if (maxA <= minB) {
        ans.add([maxA, minB]);
      }
      if (maxB == firstList[l1][1]) {
        l2++;
      } else {
        l1++;
      }
    }
    return ans;
  }
}

void main(List<String> args) {
  print(Solution().intervalIntersection([
    [0, 25],
  ], [
    [1, 5],
    [8, 12],
    [15, 24],
    [25, 26]
  ]));
}
