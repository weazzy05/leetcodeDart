class Solution {
  List<List<int>> matrixReshape(List<List<int>> mat, int r, int c) {
    int m = mat.length;
    int n = mat.first.length;
    if (m * n == r * c) {
      List<int> array1 = [];
      for (int i = 0; i < mat.length; i++) {
        for (var j = 0; j < mat.first.length; j++) {
          array1.insert(i * n + j, mat[i][j]);
        }
      }
      List<List<int>> array2 = [];
      for (var i = 0, j = 0; i < array1.length; i += c, j++) {
        var temp = array1.sublist(i, i + c);
        array2.insert(j, temp);
      }
      return array2;
    } else {
      return mat;
    }
  }
}

///https://leetcode.com/problems/reshape-the-matrix/