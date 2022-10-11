class Solution {
  int numJewelsInStones(String jewels, String stones) {
    Set<String> jewelsSet = {};
    int sum = 0;
    for (int i = 0; i < jewels.length; i++) {
      jewelsSet.add(jewels[i]);
    }
    for (int i = 0; i < stones.length; i++) {
      if (jewelsSet.contains(stones[i])) sum++;
    }
    return sum;
  }
}
//https://leetcode.com/problems/jewels-and-stones/