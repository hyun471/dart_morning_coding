void main() {
  //
  int result = add(2148201489201, 42819401809428019);
  int result2 = add(result, 10000);
  // 클래스 생성한다는 건 => 설계도 대로 사용할 수 있게 실제값을 만드는 것
  
  Marine(100, 200);
  Marine m1 = Marine(100, 200);
  Marine m2 = Marine(100, 200);
  Marine m3 = Marine(100, 200);
  m1.talk();
}

// 함수의 변환 타입
// 숫자 두개를 입력받아서 더한값을 구하는 함수
// 함수의 반환타입 적는 이유 : 함수의 결과를 변수에 담아서 쓰려고!!!
int add(int a, int b) {
  return a + b;
}

// 클래스 및 객체
class Marine {
  int hp;
  int mp;
  // 클래스를 객체화 해주는 특별한 함수
  Marine(this.hp, this.mp);
  void talk() {
    print("You wanna piece of me boy");
  }
}

class Scv{
  // 생성자를 개발자가 정의하지 않으면 기본 생성자가 생김(Scv())
}


// 객체 생성 