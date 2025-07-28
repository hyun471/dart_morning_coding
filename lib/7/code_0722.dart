void main() {
  //
  print(snakeToCamel('my_project'));
  print(snakeToCamel('this_is_dart'));
  print(snakeToCamel('my_project_name_is_dart'));
  print(
    mySnakeToCamelCase('this_project_is_snake_to_camel_case_'),
  );
}

// 스네이크케이스를 입력받아서 카멜케이스로 변환
// 반환타입 : String
// 함수명 : snakeToCamel
// 함수인자 : String snakeStr
// 예시1 : my_project => myProject
// 예시2 : this_is_dart => thisIsDart

String snakeToCamel(String camelStr) {
  List<int> codeUnits = camelStr.codeUnits;
  List<int> newCodeUnits = [codeUnits[0]];
  for (var i = 1; i < codeUnits.length; i++) {
    int prevChar = codeUnits[i - 1];
    int currChar = codeUnits[i];
    if (currChar == 95) {
      continue;
    }
    if (prevChar == 95 && 97 <= currChar && currChar <= 122) {
      newCodeUnits.add(currChar - 32);
    } else {
      newCodeUnits.add(currChar);
    }
  }

  return String.fromCharCodes(newCodeUnits);
}

//
String mySnakeToCamelCase(String snakeStr) {
  List<int> unitcode = snakeStr.codeUnits;
  List<int> newUnitCode = [];
  for (int i = 0; i < unitcode.length; i++) {
    if (unitcode[i] == 95 && i != unitcode.length - 1) {
      newUnitCode.add(unitcode[i + 1] - 32);
      i++;
    } else if (unitcode[i] == 95 && i == unitcode.length - 1) {
    } else {
      newUnitCode.add(unitcode[i]);
    }
  }
  return String.fromCharCodes(newUnitCode);
}
