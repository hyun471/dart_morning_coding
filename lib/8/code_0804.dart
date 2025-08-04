void main() {
  //
  List<int> a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print(binarySearch([1, 2, 3, 4, 5], 4));
  print(binarySearch([1, 2, 3, 4, 5], 10));
  print(binarySearch([1, 2, 3, 4, 5, 6, 7, 8], 7));
  print(binarySearch([1, 2, 3, 4, 5, 6, 7, 8], 2));
  print(binarySearch([1, 2, 3, 4, 5, 6, 7, 8], 1));
  print(binarySearch([1, 2, 3, 4, 5, 6, 7, 8], 10));
}

// 이진 탐색
// 이미 정렬되어 있는 리스트 : sortedList
// 찾을 숫자 : target
// [1,2,3,4,5]
// 함수 반환타입 : int (리스트에서 target의 index)
// 함수 이름 : binarySearch
// 함수 인자 : List<int> sortedList, int target
// => sortedList에서 target이 이취한 index 변환
// => 단, target이 sortedList 안에 없을 때 -1 반환
// 1. [1,2,3,4,5] => 중간 3과 target 비교
// 중간값이 target보다 작다면 중간 index 3 ~ index 끝 중 가운데 값 가져와서 비교
// 무한반복
// for(i=0;i<sortedList.lenxt;i++) => 순차적으로 순회
// while
// int low = 0;
// int high = sortedList.lengh - 1;
// while(low <= high)
//    가운데인덱스 =>

int binarySearch(List<int> sortedList, int target) {
  int low = 0;
  int high = sortedList.length - 1;
  while (low <= high) {
    int midIndex = low + (high - low) ~/ 2;
    int midValue = sortedList[midIndex];
    if (midValue == target) {
      return midIndex;
    } else if (midValue < target) {
      low = midIndex + 1;
    } else {
      high = midIndex - 1;
    }
  }
  return -1;
}

// int myBinarySearch(List<int> arg, int target) {
//   int low = 0;
//   int high = arg.length - 1;
//   int result = 0;
//   while (low <= high) {
//     int compare = target - arg[low + (high - low) ~/ 2];
//     if (compare < 0) {
//       high = low + (high - low) ~/ 2 + 1;
//       print(high);
//     } else if (compare > 0) {
//       low = low + (high - low) ~/ 2 - 1;
//       print(low);
//     } else {
//       result = 1 + low + (high - low) ~/ 2;
//       return result;
//     }
//   }
//   return -1;
// }
