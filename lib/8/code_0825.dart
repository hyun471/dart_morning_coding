void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print(twoSum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 9));
}

List<int> twoSum(List<int> sortedNums, int target) {
  int left = 0;
  int right = sortedNums.length - 1;
  print("target : $target");
  int count = 0;
  while (left < right) {
    count++;
    print("$count left : $left right : $right");

    int sum = sortedNums[left] + sortedNums[right];
    if (sum == target) {
      return [sortedNums[left], sortedNums[right]];
    }
    if (sum < target) {
      left++;
    } else {
      right--;
    }
  }

  return [];
}

List<int> myTwoSum1(List<int> list, int target) {
  for (int i = 0; i < list.length; i++) {
    for (int j = list.length - 1; j > 0; j--) {
      int num1 = list[i];
      int num2 = list[j];
      int result = num1 + num2;
      if (result == target) {
        return [num1, num2];
      }
    }
  }
  return [];
}


// 두 수의 합!
// 정렬된 배열 내에서
// 합이 정확히 target이 되는 두 원소 찾기

// target : 9
// [1,2,3,4,5,6,7,8,9,10]
// => [1,8]

// 함수명 twoSum
// 인자 : List<int> sortedNums, int target
// 반환타입 List<int>