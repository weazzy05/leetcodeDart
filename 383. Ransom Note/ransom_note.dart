class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    Map<String, int> ransomNoteMap = {};
    Map<String, int> magazineMap = {};
    for (var i = 0; i < ransomNote.length; i++) {
      if (ransomNoteMap.containsKey(ransomNote[i])) {
        ransomNoteMap[ransomNote[i]] = ransomNoteMap[ransomNote[i]]! + 1;
      } else
        ransomNoteMap[ransomNote[i]] = 1;
    }
    for (var i = 0; i < magazine.length; i++) {
      if (magazineMap.containsKey(magazine[i])) {
        magazineMap[magazine[i]] = magazineMap[magazine[i]]! + 1;
      } else
        magazineMap[magazine[i]] = 1;
    }
    bool res = true;
    ransomNoteMap.forEach((key, value) {
      if (magazineMap.containsKey(key) && magazineMap[key]! < value)
        res = false;
      if (!magazineMap.containsKey(key)) res = false;
    });
    return res;
  }
}
