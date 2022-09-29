class Solution {
  List<List<String>> pairsInt(String s) {
    final List<List<String>> pairs = [];
    String char = s[0];
    int count = 1;
    for (var i = 1; i < s.length; i++) {
      if (char == s[i]) {
        count++;
      } else {
        pairs.add([count.toString(), s[i - 1]]);
        count = 1;
        char = s[i];
      }
    }
    pairs.add([count.toString(), s[s.length - 1]]);
    return pairs;
  }

  String counSay(List<List<String>> list) {
    String res = '';
    for (var i = 0; i < list.length; i++) {
      res += list[i][0] + list[i][1];
    }
    return res;
  }

  String countAndSay(int n) {
    String go = '1';
    for (var i = 1; i < n; i++) {
      final zz = pairsInt(go);
      go = counSay(zz);
    }
    return go;
  }
}

// Последовательность "посчитай и скажи" - это последовательность строк цифр, 
// определяемая рекурсивной формулой:

// count And Say(1) = "1"
// countAndSay(n) - это способ, которым вы бы "произнесли" строку цифр из countAndSay(n-1), 
// которая затем преобразуется в другую строку цифр.
// Чтобы определить, как вы "произносите" строку цифр, разделите ее на минимальное 
// количество подстрок таким образом, чтобы каждая подстрока содержала ровно одну уникальную цифру. 
// Затем для каждой подстроки произнесите количество цифр, затем произнесите цифру. 
// Наконец, объедините каждую указанную цифру.

// Например, высказывание и преобразование для цифровой строки "3322251":


// Учитывая положительное целое число n, верните n-й член последовательности "посчитай и скажи".

// Example 1:

// Input: n = 1
// Output: "1"
// Explanation: This is the base case.
// Example 2:

// Input: n = 4
// Output: "1211"
// Explanation:
// countAndSay(1) = "1"
// countAndSay(2) = say "1" = one 1 = "11"
// countAndSay(3) = say "11" = two 1's = "21"
// countAndSay(4) = say "21" = one 2 + one 1 = "12" + "11" = "1211"