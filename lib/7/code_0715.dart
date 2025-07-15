void main() {
  String text = 'ZDasdfZDFqfd';

  print('AbcaBc : ${swapCase("AbcaBc")}');

  print(mySwapCase(text));
}

// 문자열을 반환하는 함수
// 문자열을 함수의 인자로 전달받아서
// 문자열 내의 소문자를 대문자로, 대문자를 소문자로 변경한 뒤 새로운 문자열 반환
// 함수 이름은 swapCase
// 아스키 코드표
// AbcaBc => aBCAbC

String swapCase(String str) {
  // str을 글자단위로 나누어서
  // 한글자씩 소문자인지, 대문자인지 판별
  // 소문자면 => 대문자 : 글자가 가지고 있는 고유한 코드 - 32
  // 대문자면 => 소문자 : 글자가 가지고 있는 고유한 코드 + 32
  // 하나로 합쳐서 반환
  List<int> codeUnits = str.codeUnits;
  List<int> swapCodeUnits = [];
  int length = codeUnits.length;
  for (var i = 0; i < length; i++) {
    int codeUnit = codeUnits[i];
    if (65 <= codeUnit && codeUnit <= 90) {
      // 대문자ㅏ => 소문자 : + 32
      codeUnit += 32;
    } else if (97 <= codeUnit && codeUnit <= 122) {
      // 소문자 => 대문자 : - 32
      codeUnit -= 32;
    }
    swapCodeUnits.add(codeUnit);
  }

  return String.fromCharCodes(swapCodeUnits);
}

String mySwapCase(String text) {
  String myResult = '';
  for (int i = 0; i < text.length; i++) {
    int toIntCode = text.codeUnitAt(i);
    if (65 <= toIntCode && toIntCode <= 90) {
      toIntCode += 32;
    } else if (97 <= toIntCode && toIntCode <= 122) {
      toIntCode -= 32;
    }
    myResult += String.fromCharCode(toIntCode);
  }
  return myResult;
}
