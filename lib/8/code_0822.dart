void main() {
  List<List<int>> data1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  List<List<int>> data2 = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 10, 11, 12],
  ];

  List<List<int>> data3 = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 10, 11, 12],
    [13, 14, 15, 16],
  ];

  print(spiralOrder(data3));
}

// 함수 타입 List<int>
// 함수 이름 spriralOrder()
// 함수 인자 List<List<int>> matrix

// 출력값을 좌표로 표현해보기 (행, 열)
// (0, 0) (0, 1) (0, 2) => 열 인덱스 증가
// (1, 2) (2, 2)        => 행 인덱스 증가
// (2, 1) (2, 0)        => 열 인덱스 감소
// (1, 0)               => 행 인덱스 감소
// (1, 1)               => 열 인덱스 증가

List<int> spiralOrder(List<List<int>> matrix) {
  List<int> result = [];
  int top = 0;
  int bottom = matrix.length - 1;
  int left = 0;
  int right = matrix.first.length - 1;

  while (top <= bottom && left <= right) {
    // 왼쪽 -> 오른쪽
    for (var i = left; i <= right; i++) {
      final value = matrix[top][i];
      result.add(value);
    }
    top++;

    // 위 -> 아래
    for (var i = top; i <= bottom; i++) {
      final value = matrix[i][right];
      result.add(value);
    }
    right--;

    // 오른쪽 -> 왼쪽
    for (var i = right; i >= left; i--) {
      final value = matrix[bottom][i];
      result.add(value);
    }
    bottom--;

    // 아래 -> 위
    for (var i = bottom; i >= top; i--) {
      final value = matrix[i][left];
      result.add(value);
    }
    left++;
  }

  return result;
}

List<int> mySpiralOrder(List<List<int>> matrix) {
  int top = matrix[0].length;
  int right = matrix.length;
  int bottom = matrix[matrix.length - 1].length;
  int left = matrix.length;
  List<int> result = [];
  for (var i = 0; i < 3; i++) {
    for (var t = 0; t < top; t++) {
      List<int> top1 = matrix[i];
      result.add(top1[t]);
    }
    for (var r = 1; r < right; r++) {
      List<int> right1 = matrix[r];
      result.add(right1[right1.length - 1 - i]);
    }
    for (var b = bottom - 1; b < 0; b--) {
      List<int> bottom1 = matrix[bottom - 1 - i];
      result.add(bottom1[b - 1]);
    }
  }
  return result;
}
