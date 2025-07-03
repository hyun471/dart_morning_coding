// 1~10000 더하기

void main() {
  /// [1] 1~10000 더하기

  /// 방법1.
  int result11 = getSum(10000);
  print(result11);

  /// 방법2. 가우스 공식
  int result22 = getSumVer2(10000);
  print(result22);

  /// [2] 리스트 뒤집기
  ///     [1, 2, 3, 4, 5] => [5, 4, 3, 2, 1]
  List<int> before = [7, 2, 3, 4, 5];

  /// 방법1. List가 가지고 있는 reversed 메서드 사용 => 간단
  final result1 = before.reversed.toList();
  print(result1);
  print(before);

  /// 방법2. 새로운 리스트 만들어서 List의 길이만큼 반복하면서 반대값 넣어주기 => 0번에서 99번, 1번에 98번 ... 99번에 0번
  /// 장점 : 원본 리스트를 수정하지 않는다.
  /// 단점 : 리스트의 길이 만큼 반복한다.
  reverse1(before);
  print(before);

  /// 방법3. 기존 리스트에서 리스트의 길이의 반만 반복하면서 끝값과 첫값 바꿔주기
  /// 장점 : 반만 반복해도 되어서 성능적으로 빨라보임
  /// 단점 : 원본 리스트의 변경이 일어남
  // List<int> before = [1, 2, 3, 4, 5];
  // List<int> before = [1, 2, 3, 4, 5, 6];
  // 리스트의 길이를 2로 나눈 몫만큼만 순회
  reverse2(before);
  print(before);
}

/// 더하기 방법 1
/// 1부터 num까지의 합을 반환
int getSum(int num) {
  int sum = 0;
  for (var i = 1; i <= 10000; i++) {
    sum += i;
  }
  return sum;
}

/// 더하기 방법 2
/// 가우스 공식을 이용한 계산
/// 1 ~ 100 => (100 * (100 + 1)) / 2
/// 1, 2, 3, 4, ... 100;
int getSumVer2(int num) {
  int num = 10000;
  int sum = (num * (num + 1)) ~/ 2;
  return sum;
}

/// 리스트 뒤집기 방법 2.
void reverse1(List<int> before) {
  List<int> result2 = [];
  for (var i = 0; i < before.length; i++) {
    result2.add(before[before.length - 1 - i]);
  }
  print(result2);
}

/// 리스트 뒤집기 방법 3.
void reverse2(List<int> list) {
  // int half = (before.length / 2).floor(); // 소수점 버리기
  int half = list.length ~/ 2;
  // [1, 2, 3, 4, 5];
  for (var i = 0; i < half; i++) {
    int temp = list[list.length - 1 - i];
    list[list.length - 1 - i] = list[i];
    list[i] = temp;
  }
}
 /* [1]
 for (int i = 1; i <= 10000; i++) {
    int sum1 = 0;
    sum1 += i;
    print("$sum1");
  }

   [2]
  List<int> number = [1, 2, 3, 4, 5];
  for (int i = 0; i < number.length; i++) {

  } 
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  a = number[0];
  b = number[1];
  c = number[2];
  d = number[3];
  number[0] = number[4];
  number[1] = number[3];
  number[2] = number[2];
  number[3] = b;
  number[4] = a;
  print(number);
  */