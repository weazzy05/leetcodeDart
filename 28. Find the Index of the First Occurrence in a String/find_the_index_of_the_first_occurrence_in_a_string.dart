class Solution {
  int strStr(String haystack, String needle) {
    for (int i = 0; i < haystack.length - needle.length + 1; i++) {
      for (int j = 0; j < needle.length; j++) {
        if (haystack[i + j] != needle[j]) break;
        if (j == needle.length - 1) return i;
      }
    }
    return -1;
  }
}

// Учитывая две строки needle и haystack, верните индекс первого появления иглы в стоге сена или -1, если игла не является частью стога сена.

// Input: haystack = "sadbutsad", needle = "sad"
// Output: 0
// Explanation: "sad" occurs at index 0 and 6.
// The first occurrence is at index 0, so we return 0.
// Example 2:

// Input: haystack = "leetcode", needle = "leeto"
// Output: -1
// Explanation: "leeto" did not occur in "leetcode", so we return -1.