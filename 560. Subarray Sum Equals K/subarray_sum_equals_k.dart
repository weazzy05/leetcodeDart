class Solution {
  int subarraySum(List<int> nums, int k) {
    int res = 0;
    Map<int, int> mp = {0: 1};
    int sum = 0;
    for (var el in nums) {
      sum += el;
      int diff = sum - k;
      if (mp.containsKey(diff)) {
        res += mp[diff]!;
      }
      if (mp.containsKey(sum)) {
        mp[sum] = 1 + mp[sum]!;
      } else {
        mp[sum] = 1;
      }
    }
    return res;
  }
}

void main(List<String> args) {
  print(Solution().subarraySum([1, 0, 1, 0], 1));
}
