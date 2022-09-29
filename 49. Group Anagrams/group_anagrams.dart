class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    final List<List<String>> res = [];
    final Map<String, List<String>> map = {};
    for (int i = 0; i < strs.length; i++) {
      final zz = strs[i].split('');
      zz.sort();
      final string = zz.join('');
      if (map.containsKey(string)) {
        map[string]!.add(strs[i]);
      } else {
        map[string] = [strs[i]];
      }
    }
    map.forEach((key, value) {
      res.add(value);
    });
    return res;
  }
}

// Учитывая массив строк strs, сгруппируйте анаграммы вместе. Вы можете вернуть ответ в любом порядке.

// Анаграмма - это слово или фраза, образованные путем перестановки букв другого слова или фразы, обычно используя все исходные буквы ровно один раз.

// Example 1:

// Input: strs = ["eat","tea","tan","ate","nat","bat"]
// Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
// Example 2:

// Input: strs = [""]
// Output: [[""]]
// Example 3:

// Input: strs = ["a"]
// Output: [["a"]]