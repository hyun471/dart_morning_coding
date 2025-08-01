void main() {
  print(factorial1(10));
  print(factorial2(10));

  // int n = 5;
  // myFactorial2(n);
}

/// 팩토리얼 계산 함수
/// n 입력받았을 때 n * (n-1) * (n-2) * ... * 1
/// 10 => 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
/// 반환타입 int
/// 함수이름 factorial
/// 함수 인자 int n
/// 방법 두가지
/// 1. 반복문 -> 함수 이름 factorial 1
int factorial1(int n) {
  if (n <= 0) {
    return 0;
  }
  if (n == 1) {
    return 1;
  }
  int result = 1;
  for (var i = 2; i <= n; i++) {
    result = result * i;
  }
  return result;
}

/// 2. 재귀함수 => 함수 내에서 자기자신을 호출 -> factorial 2
// void re(int n) {
//   특정한 조건이 도달하면 호출 X
//   re(n);
// }
int factorial2(int n) {
  if (n <= 0) {
    return 0;
  }

  if (n == 1) {
    return 1;
  }

  return n * factorial2(n - 1);
}

//
//

void myFactorial1() {}

int myFactorial2(int n) {
  int result = n;
  print(result);
  if (n > 0) {
    result = result * (n - 1);
    int nn = n - 1;
    myFactorial2(nn);
  } else {
    print('에러');
  }
  return result;
}
