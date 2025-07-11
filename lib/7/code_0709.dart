void main() {
  List<int> nums = [0, 1, 0, 3, 12];
  moveZeroToEnd(nums);
  print(nums);

  List<int> nums2 = [1, 1, 2, 2, 0, 2, 3, 0, 30, 3, 12];
  moveZeroToEnd(nums2);
  print(nums2);

  /*
  final myresult = findZero(nums);
  print(myresult);
  */
}

void moveZeroToEnd(List<int> nums) {
  // 0을 제일 뒤로 보내고
  // 0이 아닌 숫자들은 기존 순서를 유지하고 앞으로 이동
  // [1, 3, 12, 0, 0]

  // 배열의 첫번째요소가 0이 아니라면 0번 인덱스로 이동
  // [0, 1, 0, 3, 12]
  // 배열의 두번째 요소가 0이 아니라면 0번 인덱스로 이동
  // [1, 1, 0, 3, 12]
  // 배열의 세번째 요소가 0이 아니라면 1번 인덱스로 이동
  // [1, 1, 0, 3, 12]
  // 배열의 다섯번째 요소가 0이 아니라면 1번 인덱스로 이동
  // [1, 3, 12, 3, 12]
  // 3번 인덱스에 0 채우기
  // [1, 3, 12, 0, 12]
  // 4번 인덱스에 0 채우기
  // [1, 3, 12, 0, 0]
  int index = 0;
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      nums[index] = nums[i];
      index++;
    }
  }
  for (var i = index; i < nums.length; i++) {
    nums[i] = 0;
  }
}



/*
List findZero(List nums) {
  List<int> nums1 = [];
  int i = 0;
  for (i = 0; i != nums.length; i++) {
    if (nums[i] == 0) {
      print(i);
      nums1.add(i);
      print(nums1);
    }
  }
  for (int j = nums1.length - 1; j == 0; j--) {
    nums.removeAt(nums1[j]);
    print(nums);
    nums.add(0);
    print(nums);
  }
  return nums;
}
*/