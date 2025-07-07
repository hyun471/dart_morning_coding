void main() {
  String s = "abc";
  String t = "acd";
  inAnagram(s, t);
}

bool inAnagram(String s, String t) {
  // 1. 글자들을 각각 한글잤기 나누기 => List
  List<String> sSplited = s.split('');
  List<String> tSplited = t.split('');

  // 2. 각각 정렬 하기
  sSplited.sort();
  tSplited.sort();

  // 3. 비교
  // 첫 번째. for 문 돌면서 비교하기
  // for (var i = 0; i < sSplited.length; i++) {
  //   if (sSplited[i] != tSplited[i]) {
  //      return false;
  //    }
  //  }
  //  return ture

  // 두번째, 글자 다시 하나의 문자열로 변환한 뒤 비교
  return sSplited.join() == tSplited.join();

  // 로직 구현
}



/* 
  if (s.length != t.length) {
    return false;
  } else if (s.length == t.length) {
    List ss = s.split('');
    List tt = t.split('');
    ss.sort();
    tt.sort();
    ss.join;
    tt.join;
    
    for (int i = 0; i < ss.length - 1; i++) {
      for (int j = 0; j < ss.length; j++) {
        if (ss[i] == tt[j]) {
          true;
        } else {
          false;
        }
      }
    }
  }
  */