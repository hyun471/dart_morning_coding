void main() {
  String a = "abcdefg";
  String b = "def";
  /*
  final result = findIndex(a, b);
  print(result);
  //쉽게 해주는 함수
  final result2 = a.indexOf(b);
  print(result2);
*/

  final myResult = findIndex1(a, b);
  print(myResult);
}
//

/// 문자열 a에서 b가 등장하는 위치의 인덱스 찾기
/// 만약 a내에서 b가 존재하지 않으면 -1 반환

int findIndex(String a, String b) {
  List<String> aSplited = a.split('');
  List<String> bSplited = b.split('');
  for (var i = 0; i < aSplited.length - b.length + 1; i++) {
    bool ismatched = true;
    for (var j = 0; j < bSplited.length; j++) {
      if (aSplited[i + j] != bSplited[j]) {
        ismatched = false;
      }
      if (ismatched) {
        return i;
      }
    }
  }
  return -1;
}

int findIndex1(String a, String b) {
  for (int i = 0; i < a.length; i++) {
    bool isMatched = true;
    for (int j = 0; j < b.length; j++) {
      if (a[i] == b[j]) {
        print(i);
        isMatched = false;
      }
    }
  }
  return -1;
}
