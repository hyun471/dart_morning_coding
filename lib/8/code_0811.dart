void main() {
  // 12300 => 출력
  // 2300 => 출력
  // 100 => 출력
  // 50 => 출력
  // 15 => 10원짜리 1개
  printCoin2(12300);
  print('-');
  printCoin2(2300);
  printCoin2(100);
  printCoin2(50);
  printCoin2(15);
}

// 거스름돈 최소 동전개수 출력하기
// 입력 => 12,300 => '500원짜리 xx개, 100원짜리 xx개, 50원 짜리 xx개, 10원짜리 xx개'
// 반환 타입 : x
// 함수이름 : printCoin
// 함수인자 : 정수 타입의 money 라는 변수

void printCoin1(int money) {
  // money 를 500으로 나눈 몫 => 500개수 담아두기
  int count500 = money ~/ 500;
  // 나머지 다음 금액으로 나눈 몫 계산
  money -= count500 * 500;

  int count100 = money ~/ 100;
  money -= count100 * 100;
  int count50 = money ~/ 50;
  money -= count50 * 50;
  int count10 = money ~/ 10;
  money -= count10 * 10;
  print(
    '500원짜리 $count500개, 100원짜리 $count100개, 50원짜리 $count50개, 10원짜리 $count10개',
  );
}

// 반복문 버전
void printCoin2(int money) {
  List<int> coins = [500, 100, 50, 10];
  int length = coins
      .length; // 미리 길이를 선언해주면 길이 찾는 로직을 한번만 실행하여 메모리 성능 조금 향상
  // List<int> counts = []; // 빈 리스트로 선언하고 추가하면 메모리를 리스트 크기만 큼 공간을 다시 찾아서 할당하는 방식
  List<int> counts = [
    0,
    0,
    0,
    0,
  ]; // 메모리 공간을 정해진 만큼 미리 차지하여 성능을 조금 향상
  for (var i = 0; i < length; i++) {
    int coin = coins[i];
    counts[i] = money ~/ coin;
    // counts.add(money ~/ coin);
    money = money % coin;
  }
  print(
    '500원짜리 ${counts[0]}개, 100원짜리 ${counts[1]}개, 50원짜리 ${counts[2]}개, 10원짜리 ${counts[3]}개',
  );
}

void myPrintCoin(int money) {
  int coin500 = money ~/ 500;
  int coin500Result = money % 500;
  int coin100 = coin500Result ~/ 100;
  int coin100Result = coin500Result % 100;
  int coin50 = coin100Result ~/ 50;
  int coin50Result = coin100Result % 50;
  int coin10 = coin50Result ~/ 10;
  int coin10Result = coin50Result % 10;
  print(
    '500원짜리 $coin500개, 100원짜리 $coin100개, 50원짜리 $coin50개, 10원짜리 $coin10개',
  );
}
