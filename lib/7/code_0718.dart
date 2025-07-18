void main() {
  //
  String str = "hello world";

  print(
    "hello world"
    '${example("hello world")}',
  );

  // myExample(str);
}

// 문자열 str을 전달받아서
// 각 글자가 몇번 포함되어 있는지 맵에 저장 후 변환
// "hello world" => {"h" : 1, "e" : 1, "l" : 3, "o" :2, "d" : 1, " " : 1}
// 반환타입 Map<String, int>
// 함수 이름 example
// 함수 인자 String str
Map<String, int> example(String str) {
  List<String> chars = str.split('');
  Map<String, int> result = {};
  for (var i = 0; i < chars.length; i++) {
    String char = chars[i];

    int prevValue = result[char] ?? 0;
    result[char] = prevValue + 1;
  }
  return result;
}

Map<String, int> myExample(String str) {
  Map<String, int> myResult = {};
  List<String> splited = str.split('');
  int count = 1;
  for (var i = 0; i < splited.length; i++) {
    for (var j = 1; j < splited.length - 1; j++) {
      if (splited[i] == splited[j]) {
        String insert = splited[j];
        splited.removeAt(j);
        splited.insert(i, insert);
      }
    }
  }
  print(splited);
  return myResult;
}
