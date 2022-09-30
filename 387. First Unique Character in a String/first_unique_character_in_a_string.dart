class Solution {
  int firstUniqChar(String s) {
    Map<String, int> ansMap = {};
    for (var i = 0; i < s.length; i++) {
      if (ansMap.containsKey(s[i])) {
        ansMap[s[i]] = ansMap[s[i]]! + 1;
      } else
        ansMap[s[i]] = 1;
    }
    String ansStr = '';
    bool isChecked = false;
    ansMap.forEach((key, value) {
      if (value == 1 && !isChecked) {
        ansStr = key;
        isChecked = true;
      }
    });
    if (ansStr.isNotEmpty) return s.indexOf(ansStr);
    return -1;
  }
}
