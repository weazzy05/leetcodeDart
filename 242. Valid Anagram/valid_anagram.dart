class Solution {
  bool isAnagram(String s, String t) {
    Map<String, int> sNoteMap = {};
    Map<String, int> tMap = {};
    for (var i = 0; i < s.length; i++) {
      if (sNoteMap.containsKey(s[i])) {
        sNoteMap[s[i]] = sNoteMap[s[i]]! + 1;
      } else
        sNoteMap[s[i]] = 1;
    }
    for (var i = 0; i < t.length; i++) {
      if (tMap.containsKey(t[i])) {
        tMap[t[i]] = tMap[t[i]]! + 1;
      } else
        tMap[t[i]] = 1;
    }
    bool res = true;
    if (s.length != t.length) return false;
    sNoteMap.forEach((key, value) {
      if (!tMap.containsKey(key) || tMap[key] != value) {
        res = false;
      }
    });
    return res;
  }
}

//https://leetcode.com/problems/valid-anagram/