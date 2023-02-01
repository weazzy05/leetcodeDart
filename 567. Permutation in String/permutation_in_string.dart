class Solution {
  bool checkInclusion2(String s1, String s2) {
    if (s1.length > s2.length) return false;
    List<int> s1map = List.filled(26, 0);
    List<int> s2map = List.filled(26, 0);
    for (int i = 0; i < s1.length; i++) {
      s1map[letterIndex(s1[i])]++;
      s2map[letterIndex(s2[i])]++;
    }

    int count = 0;
    for (int i = 0; i < 26; i++) {
      if (s1map[i] == s2map[i]) count++;
    }

    for (int i = 0; i < s2.length - s1.length; i++) {
      int r = letterIndex(s2[i + s1.length]);
      int l = letterIndex(s2[i]);
      if (count == 26) return true;
      s2map[r]++;
      if (s2map[r] == s1map[r]) {
        count++;
      } else if (s2map[r] == s1map[r] + 1) {
        count--;
      }
      s2map[l]--;
      if (s2map[l] == s1map[l]) {
        count++;
      } else if (s2map[l] == s1map[l] - 1) {
        count--;
      }
    }
    return count == 26;
  }

  int letterIndex(String symbol) {
    final unitCode = unitCodeSym(symbol.codeUnits);
    final firstCode = unitCodeSym('a'.codeUnits);
    return unitCode - firstCode;
  }

  int unitCodeSym(List<int> unitCode) {
    return unitCode.first;
  }

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
