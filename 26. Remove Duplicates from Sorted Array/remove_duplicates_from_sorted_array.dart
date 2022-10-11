class Solution {
  int removeDuplicates(List<int> nums) {
    int insetIndex = 1;
    for (var i = 1; i < nums.length; i++) {
      if (nums[i] != nums[i - 1]) {
        nums[insetIndex] = nums[i];
        insetIndex++;
      }
    }
    return insetIndex;
  }
}

// Учитывая целочисленный массив nums, отсортированный в порядке неубывания, удалите дубликаты на месте таким образом, чтобы каждый уникальный элемент появлялся только один раз. Относительный порядок элементов должен быть сохранен неизменным.

// Поскольку в некоторых языках невозможно изменить длину массива, вместо этого вы должны поместить результат в первую часть массива nums. Более формально, если после удаления дубликатов осталось k элементов, то первые k элементов nums должны содержать конечный результат. Не имеет значения, что вы оставляете за пределами первых k элементов.

// Верните k после размещения конечного результата в первых k слотах nums.

// Не выделяйте дополнительное пространство для другого массива. Вы должны сделать это, изменив входной массив на месте с помощью O (1) дополнительной памяти.

// Судья по обычаю:

// Судья протестирует ваше решение с помощью следующего кода:

// int[] nums = [...]; // Входной массив
// int[] expectedNums = [...]; // Ожидаемый ответ правильной длины

// int k = removeDuplicates(nums); // Вызывает вашу реализацию

// утверждать k == Ожидаемые значения.длина;
// для (int i = 0; i < k; i++) {
//     утверждать числа[i] == Ожидаемые числа[i];
// }
// Если все утверждения пройдут, то ваше решение будет принято.

// Example 1:

// Input: nums = [1,1,2]
// Output: 2, nums = [1,2,_]
// Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
// It does not matter what you leave beyond the returned k (hence they are underscores).
// Example 2:

// Input: nums = [0,0,1,1,1,2,2,3,3,4]
// Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
// Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
// It does not matter what you leave beyond the returned k (hence they are underscores).