class Solution {
  List<String> res = [];

  Map<String, String> map = {
    '2': 'abc',
    '3': 'def',
    '4': 'ghi',
    '5': 'jkl',
    '6': 'mno',
    '7': 'pqrs',
    '8': 'tuv',
    '9': 'wxyz'
  };
  List<String> letterCombinations(String digits) {
    backTracking(0, '', digits);
    for (int i = 0; i < res.length; i++) {
      if (res[i] == '') res.removeAt(i);
    }
    return res;
  }

  void backTracking(int index, String str, String digits) {
    if (str.length == digits.length) {
      res.add(str);
      return;
    }
    for (int j = 0; j < map[digits[index]]!.length; j++) {
      backTracking(index + 1, str + map[digits[index]]![j], digits);
    }
  }
}

// Учитывая строку, содержащую цифры от 2-9 включительно, верните все возможные комбинации букв, которые может представлять число. Верните ответ в любом порядке.

// Ниже приведено преобразование цифр в буквы (точно так же, как на кнопках телефона). Обратите внимание, что 1 не соответствует никаким буквам.


// Input: digits = "23"
// Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
// Example 2:

// Input: digits = ""
// Output: []
// Example 3:

// Input: digits = "2"
// Output: ["a","b","c"]