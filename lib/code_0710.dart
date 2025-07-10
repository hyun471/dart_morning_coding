void main() {
  // 1234 => 1235
  // [1, 2, 3, 4] => [1, 2, 3, 5]
  List<int> digits = [1, 2, 3, 4];

  // 1239 => 1240
  // [1, 2, 3, 9] => [1, 2, 4, 0]
  List<int> digits2 = [1, 2, 3, 9];

  // 9999 => 10000
  // [9, 9, 9, 9] => [1, 0, 0, 0, 0]
  List<int> digits3 = [9, 9, 9, 9];

  print(addOne(digits));

  /*
  print(myAddOne(digits));
  print(myAddOne(digits2));
  print(myAddOne(digits3));
  */
}

/// 1더하기
///
/// digits => 하나의 숫자로 합치기
/// => 1 더하기 => List로 분리하기
List<int> addOne(List<int> digits) {
  // 더하기
  List<String> strList = [];
  // ['1', '2', '3']
  for (var i = 0; i < digits.length; i++) {
    strList.add('${digits[i]}');
  }
  String numberStr = strList.join('');
  print(numberStr);
  int addedValue = int.parse(numberStr) + 1;
  print(addedValue);
  // 문자열로 변경
  String addedValueStr = '$addedValue';
  // => split 이용해서 분리
  List<String> addedValueList = addedValueStr.split('');

  List<int> result = [];
  // => int List로 변경
  for (var i = 0; i < addedValueList.length; i++) {
    result.add(int.parse(addedValueList[i]));
  }
  return result;
}

/// 1 더하기
///
/// 리스트 순회하면서 직접 계산하기
List<int> addOne2(List<int> digits) {
  for (var i = digits.length - 1; i >= 0; i--) {
    digits[i] += 1;
    if (digits[i] < 10) {
      return digits;
    }
    digits[i] = 0;
  }

  digits.insert(0, 1);
  // 1 더하기
  return digits;
}

/*
List myAddOne(List<int> digits) {
  int digitsAddOne = int.parse(digits.join()) + 1;
  List<String> a = digitsAddOne.toString().split('');
  List<int> myResult = [];
  for (int i = 0; i < a.length; i++) {
    myResult.add(int.parse(a[i]));
  }
  return myResult;
}
*/
