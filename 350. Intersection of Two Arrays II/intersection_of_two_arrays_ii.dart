class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    Map<int, int> res = Map<int, int>();
    List<int> resArray = [];
    for (int i = 0; i < nums2.length; i++) {
      if (!res.containsKey(nums2[i])) {
        res[nums2[i]] = 1;
      } else
        res[nums2[i]] = res[nums2[i]]! + 1;
    }
    for (var el in nums1) {
      if (res.containsKey(el) && res[el] != 0) {
        resArray.add(el);
        res[el] = res[el]! - 1;
      }
    }
    return resArray;
  }
}
