import 'dart:math';

void main() {
  //
  List<int> height = [1, 8, 6, 2, 5, 4, 8, 3, 7];
  print(myResult(height));
}

int myResult(List<int> height) {
  int left = 0;
  int right = height.length - 1;
  int maxArea = 0;

  while (left < right) {
    int area = min(height[left], height[right]) * (right - left);
    maxArea = max(maxArea, area);
    print(maxArea);
    if (height[left] < height[right]) {
      left++;
    } else {
      right--;
    }
  }
  return maxArea;
}

int myResult2(List<int> height) {
  // 1. 높이가 높은거 찾기
  // 2. 높이가 높은거 중 너비가 긴거 찾기
  // 3. 그 두개 곱하기
  return 0;
}
