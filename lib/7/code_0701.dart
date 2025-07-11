void main() {
  final arr = [7, 9, 2, 3, 1];
  print("시작 전 : $arr");
  for (var i = 0; i < arr.length - 1; i++) {
    print("$i번째 라운드");
    for (var j = 0; j < arr.length - 1; j++) {
      print("반복문");
      final a = arr[j];
      final b = arr[j + 1];
      if (a > b) {
        arr[j] = b;
        arr[j + 1] = a;
      }
    }
  }
  print("시작 후 : $arr");
}

void bubbleSort(List<int> arr) {
  for (var i = 0; i < arr.length - 1; i++) {
    for (var j = 0; j < arr.length - 1; j++) {
      final a = arr[j];
      final b = arr[j + 1];
      if (a > b) {
        arr[j] = b;
        arr[j + 1] = a;
      }
    }
  }
}

  //버블정렬
  // [7, 9, 2, 3, 1]
  // 첫번째 라운드
  // 0번째, 1번째 비교 후 교환 [7, 9, 2, 3, 1]
  // 1번째, 2번째 비교 후 교환 [7, 2, 9, 3, 1]
  // 2번째, 3번째 비교 후 교환 [7, 2, 3, 9, 1]
  // 3번째, 4번째 비교 후 교환 [7, 2, 3, 1, 9]
  // [7, 2, 3, 1, 9]
  // 두번째 라운드
  // 0번째, 1번째 비교 후 교환 [2, 7, 3, 1, 9]
  // 1번째, 2번째 비교 후 교환 [2, 3, 7, 1, 9]
  // 2번째, 3번째 비교 후 교환 [2, 3, 1, 7, 9]
  // [2, 3, 1, 7, 9]
  // 세번째 라운드
  // 0번째, 1번째 비교 후 교환 [2, 3, 1, 7, 9]
  // 1번째, 2번째 비교 후 교환 [2, 1, 3, 7, 9]
  // 2번째, 3번째 비교 후 교환 [1, 2, 3, 7, 9]
  // [2, 3, 1, 7, 9]




  /* List<int> bubble = [7, 9, 2, 3, 1];
  for (int j = 5; j == 0; j -= 1) {
    for (int i = 0; i; i++) {
      if (bubble[i] < bubble[i + 1]) {
        int number = bubble[i];
        bubble[i] = bubble[i + 1];
        bubble[i + 1] = number;
        print("$bubble");
      }
    }
  }
*/
  