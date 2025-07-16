void main() {
  String str = 'aaabbc';

  print(compression(str));

  print(myCompresion(str));
}

String compression(String str) {
  if (str.isEmpty) {
    return "";
  }
  // 1. 문자열 한글자씩 분리하기
  // aaabbc => [a, a, a, b, b, c]
  List<String> splited = str.split('');
  // 2. 반복문 이용해서 처리하기
  // [a, a, a, b, b, c]
  int count = 1;
  List<String> newStr = [];
  for (var i = 1; i < splited.length; i++) {
    String prevChar = splited[i - 1];
    String currChar = splited[i];
    // 만일 이전 글자와 현재 글자가 같다면 => count 증가
    // 다르다면 => 이전문자열 + count를 newStr에 추가 & count를 1로 초기화
    if (prevChar == currChar) {
      count++;
    } else {
      newStr.add('$prevChar$count');
      count = 1;
    }
  }
  newStr.add('${splited[splited.length - 1]}$count');
  return newStr.join();
}

String myCompresion(String str) {
  String myResult = '';
  int count = 1;
  for (int i = 1; i < str.length; i++) {
    if (str[i - 1] == str[i]) {
      count++;
    } else if (str[i - 1] != str[i]) {
      myResult += (str[i - 1] + count.toString());
      count = 1;
    }
  }
  myResult += (str[str.length - 1] + count.toString());
  return myResult;
}

// 문자열 압축하기
// aaabbc => a3b2c1
// aaabbbbbccccaaasss => a3b5c4a3s3
// 반환타입 : 문자열
// 함수이름 : compresion
// 함수인자 : 문자열 str
// 한글자씩 분리 후 반복문을 이용해서 문자열 처리
