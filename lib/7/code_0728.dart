void main() {
  //
  DateTime target1 = DateTime(2025, 07, 28, 09, 30);
  print(formatDate(target1));
  DateTime target2 = DateTime(2025, 07, 28, 08, 30);
  print(formatDate(target2));
  DateTime target3 = DateTime(2025, 07, 28, 01, 30);
  print(formatDate(target3));
  DateTime target4 = DateTime(2025, 07, 27, 01, 30);
  print(formatDate(target4));
  DateTime target5 = DateTime(2025, 07, 01, 01, 30);
  print(formatDate(target5));
}

/// 날짜를 문자열로 변환
/// 한시간 이내라면 00분전,
/// 24시간 이내라면 00시간 전,
/// 7일 이내라면 00일 전,
/// 아니라면 0000년 00월 00일
String formatDate(DateTime target) {
  DateTime now = DateTime.now();
  final gapSecond =
      (now.millisecondsSinceEpoch -
          target.millisecondsSinceEpoch) ~/
      1000;
  // int hour = 60 * 60;
  if (gapSecond <= 3600) {
    //00분전
    return "${(gapSecond ~/ 60)}분 전";
  } else if (gapSecond <= 86400) {
    // 24시간 => 3600초(60초 * 60분) * 24
    // 00 시간 전
    return "${(gapSecond ~/ 60) ~/ 60}시간 전";
  } else if (gapSecond <= 604800) {
    return "${(gapSecond ~/ 60) ~/ 60 ~/ 24}일 전";
  }
  return "${target.year}년 ${target.month}월 ${target.day}일";
}

String myFormatDate(DateTime target) {
  DateTime now = DateTime.now();
  double result =
      ((now.millisecondsSinceEpoch -
              target.millisecondsSinceEpoch) /
          1000) *
      -1;
  if (result < 3600) {
    return '${(result / 60)} 분 전';
  } else if (result < 86400) {
    return '${(result / 24)} 시간 전';
  } else if (result < 604800) {
    return '${(result / 7)} 일 전';
  } else if (result >= 604800) {
    return '${target}';
  } else {
    return "";
  }
}
