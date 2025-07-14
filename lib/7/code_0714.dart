void main() {
  // 위에서 호출
  print('2 ${isPrime(2)}'); // true
  print('4 ${isPrime(4)}'); // false, 1,2,4
  print('6 ${isPrime(6)}'); // false, 1,2,3,6
  print('7 ${isPrime(7)}'); // true
  print('9 ${isPrime(9)}'); // false, 1,3,9
  print('13 ${isPrime(13)}'); // true

  // print('3417 ${myIsPrime(3417)}');
  // print('317 ${myIsPrime(317)}');
}

// 소수인지 판별하는 함수
// 1과 자기자신으로만 나누어지는 수면 true 리턴
// 아니라면 false 리턴
// 함수 반환타입 bool
// 함수 이름 isPrime
// 함수 인자 int number
// 방법1 : 2부터 ~ number -1 까지 차례대로 나누어서 나머지가 0이면 false 리턴
// 방법2 : 2부터 ~ number/2 까지 나누어서 나머지가 0이면 false 리턴
// 방법1 : 2부터 ~ number의 제곱근까지 차례대로 나누어서 나머지가 0이면 false 리턴

bool isPrime(int number) {
  // number : 10
  // 10 을 2로 나누어 보고 나머지가 0이면 => 소수가 아님 => 리턴 false
  // 7을 2로 나누기 => 나머지 0이 아님
  // 7을 3로 나누기 => 나머지 0이 아님
  // 7을 4로 나누기 => 나머지 0이 아님
  // 7을 5로 나누기 => 나머지 0이 아님
  // 7을 6로 나누기 => 나머지 0이 아님
  // 7을 7로 나누기 => 나머지 0이 아님
  //
  // 13을 입력받게 된다면 2~12까지 반복
  // 약수는 숫자의 절반보다 클 수 없음
  final half = number ~/ 2;
  // 더 코드를 줄이고 싶다면
  // 입력받은 number의 제곱근을 구해서 제곱근까지만 반복문 돌기 => 조금더 성능적으로 좋음
  // 숫자가 작을 대, (예: 13, 17) 오히려 제곱근을 구하기 위해서 더 많은 연산이 필요할 수 있음
  for (var i = 2; i < half; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

// bool myIsPrime(int number) {
//   List<int> primeList = [];
//   for (int i = 1; i <= number; i++) {
//     if (number % i == 0) {
//       primeList.add(i);
//     }
//   }
//   if (primeList.length == 2) {
//     return true;
//   } else {
//     print(primeList);
//     return false;
//   }
// }
