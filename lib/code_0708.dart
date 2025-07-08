void main() {
  //
  // String s = "abcabc"
  String s = "abcabc";
  // 반복되는 문자열로만 이루어져 있으면 true
  // 반복되는 문자를 지워봤을 때 남은 글자가 없으면 false
  print(isRepeated(s));

  /*
  final myResult1 = pattern1(s);
  print(myResult1);
  */
}

bool isRepeated(String s) {
  int sLength = s.length;
  // 자르기 시작할 인덱스, 몇글자 자를건지
  for (var i = 1; i <= sLength ~/ 2; i++) {
    // 전체 문자열의 길이를
    // 자른 문자열의 길이로 나누었을 때
    // 나머지가 0일때만
    // 맞아떨어지는 글자!
    if (sLength % i == 0) {
      String ss = s.substring(0, i);
      String target = ss * (sLength ~/ i);
      if (target == s) {
        return true;
      }
    }
  }

  return false;
}

/*
bool pattern1(s) {
  bool check = false;
  for (int i = 1; s[0] != s[i]; i++) {
    if (s.length % (i + 1) == 0) {
      check = true;
    } else {
      check = false;
    }
  }
  return check;
}
*/
