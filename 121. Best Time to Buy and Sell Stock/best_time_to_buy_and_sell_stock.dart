import 'dart:math';

class Solution {
  int maxProfit(List<int> prices) {
    int diff = 0;
    int l = 0;
    int r = 1;

    while (r < prices.length) {
      if (prices[r] > prices[l]) {
        diff = max(diff, prices[r] - prices[l]);
      } else {
        l = r;
      }
      r++;
    }
    return diff;
  }
}

//https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
