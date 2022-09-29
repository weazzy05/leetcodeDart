class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> hashMap = Map<int, int>();
    for (int i = 0; i < nums.length; i++) {
      hashMap[nums[i]] = i;
    }
    for (int i = 0; i < nums.length; i++) {
      final int fIndex = i;
      final int finder = target - nums[fIndex];
      if (hashMap.containsKey(finder) && hashMap[finder]! != fIndex) {
        return [fIndex, hashMap[finder]!];
      }
    }
    return [0];
  }
}

// Учитывая массив целых чисел nums и целочисленное целевое значение, верните 
//индексы двух чисел таким образом, чтобы они складывались в target.

// Вы можете предположить, что каждый входной сигнал будет иметь ровно одно 
//решение, и вы не можете использовать один и тот же элемент дважды.

// Вы можете вернуть ответ в любом порядке.

// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].