import 'dart:math';

void main() {
  // 로또번호 추첨하는 함수만들기
  // 1. Random 이용해서 6개의 숫자 리스트에 추가하고 정렬
  // 2. 함수로 옮기기
  // 주의사항 : 중복되면 안됨

  print(generateLotto());
  print(generateLotto2());

  // print(myLotto());
}

// 로또번호가 담겨있는 리스트를 반환하는 함수
List<int> generateLotto() {
  List<int> result = [];
  Random random = Random();
  // 조건 result의 아이템 갯수가 6개보다 작을동안!
  while (result.length < 6) {
    int value =
        random.nextInt(45) + 1; // 0 <= x < 45 == 0~44 => 1~45
    // 무작위 숫자 추출 후 result라는 변수에 담겨있는 리스트에 포함되어 있는지 확인
    // 포함되어 있으면 추가 안하기 => 포함되어 있지 않으면 추가하기!
    bool isContain = result.contains(value);
    if (!isContain) {
      result.add(value);
    }
  }

  // 정렬, 버블정렬, 선택정렬에서 한거 기억하기
  result.sort();
  return result;
}

List<int> generateLotto2() {
  // Set은 리스트와 같은 역할로 하나 중복을 허용하지 않음!
  // Set에 중복된 값을 넣으면 안들어감
  // {1, 2, 3} => 1추가 => {1, 2, 3}
  Set<int> result = {};
  Random random = Random();
  // 조건 result의 아이템 갯수가 6개보다 작을동안!
  while (result.length < 6) {
    int value =
        random.nextInt(45) + 1; // 0 <= x < 45 == 0~44 => 1~45
    result.add(value);
  }

  // 다 처리된 Set을 List로 바꿔주고 정렬 (Set은 순서가 없기 때문에 정렬 불가)
  List<int> resultList = result.toList();
  resultList.sort();
  return resultList;
}






/*
List myLotto() {
  List<int> lottoList = [];
  for (int i = 0; i < 6; i++) {
    int randomResult = Random().nextInt(45) + 1;
    bool check = lottoList.any(
      (checkInt) => checkInt == randomResult,
    );
    if (check == true) {
      i -= 1;
    } else {
      lottoList.add(randomResult);
    }
  }
  lottoList.sort();
  return lottoList;
}
*/