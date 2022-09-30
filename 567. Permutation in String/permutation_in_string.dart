class Solution {
  bool checkInclusion(String s1, String s2) {
    Map<String, int> countS1 = Map();

    for (var i = 0; i < s1.length; i++) {
      if (!countS1.containsKey(s1[i])) {
        countS1[s1[i]] = 1;
      } else {
        countS1[s1[i]] = countS1[s1[i]]! + 1;
      }
    }
    for (var i = 0; i < s2.length - s1.length + 1; i++) {
      Map<String, int> countS2 = Map();
      for (var j = i; j < i + s1.length; j++) {
        if (!countS2.containsKey(s2[j])) {
          countS2[s2[j]] = 1;
        } else {
          countS2[s2[j]] = countS2[s2[j]]! + 1;
        }
      }
      if (equalMap(countS2, countS1)) return true;
    }
    return false;
  }

  bool equalMap(Map<String, int> map1, Map<String, int> map2) {
    bool res = true;
    if (map1.length >= map2.length) {
      map1.forEach((key, value) {
        if (!map2.containsKey(key) || map2[key] != value) {
          res = false;
        }
      });
    } else {
      map2.forEach((key, value) {
        if (!map1.containsKey(key) || map1[key] != value) {
          res = false;
        }
      });
    }

    return res;
  }
}

//https://leetcode.com/problems/permutation-in-string/
