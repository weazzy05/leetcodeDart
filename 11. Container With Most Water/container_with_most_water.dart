import 'dart:math';

class Solution {
  int maxArea(List<int> height) {
    int length = height.length;
    int l = 0;
    int r = length - 1;
    int res = min(height[l], height[r]) * (r - l);
    while (l < r) {
      if (height[l] <= height[r]) {
        l++;
      } else {
        r--;
      }
      res = max(res, min(height[l], height[r]) * (r - l));
    }
    return res;
  }
}

// Вам задается целочисленная высота массива длиной n. Существует n вертикальных линий, нарисованных таким образом, что две конечные точки i-й линии равны (i, 0) и (i, высота[i]).

// Найдите две линии, которые вместе с осью x образуют контейнер, такой, чтобы в контейнере было больше всего воды.

// Верните максимальное количество воды, которое может храниться в контейнере.

// Обратите внимание, что вы не можете наклонять контейнер.

// Input: height = [1,8,6,2,5,4,8,3,7]
// Output: 49
// Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.