void main() {
  //
  print(camelToSnakeCase('myProject'));
  print(camelToSnakeCase('thisIsDart'));
  print(camelToSnakeCase('myProjectNameIsDart'));
}

// 카멜케이스를 입력받아서 스네이크케이스로 변환
// 반환타입 : String
// 함수명 : camelToSnakeCase
// 함수인자 : String camelStr
// 예시1 : myProject => my_project
// 예시2 : thisIsDart => this_is_dart

String camelToSnakeCase(String camelStr) {
  List<int> codUnits = camelStr.codeUnits;
  List<int> newCodeUnits = [];
  for (var i = 0; i < codUnits.length; i++) {
    int charCode = codUnits[i];
    // 대문자일 때 => 언더스코어 + 소문자 변환
    if (65 <= charCode && charCode <= 90) {
      // 대문자인 경우
      newCodeUnits.add(95);
      newCodeUnits.add(charCode + 32);
    } else {
      newCodeUnits.add(charCode);
    }
  }
  return String.fromCharCodes(newCodeUnits);
}

String myCamelToSnakeCase(String camelStr) {
  String result = '';
  List<String> camelStrList = camelStr.split('');
  for (int i = 0; i < camelStrList.length; i++) {
    String str = camelStrList[i];
    if (str == camelStrList[i].toUpperCase() && i != 0) {
      result = result + '_' + camelStrList[i].toLowerCase();
    } else {
      result += camelStrList[i];
    }
  }
  return result;
}
