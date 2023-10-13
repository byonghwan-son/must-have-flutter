# 전자 액자

## 위젯 생명주기

* 위젯이 화면에 그려지는 순간부터 삭제되는 순간까지의 주기
* StatelessWidget과 StatefulWidget

### StatelessWidget
* 상태가 없는 위젯
* 상태가 없기 때문에 생명주기도 굉장히 간단하다.
* 생성자 실행 → override build() 함수 실행 → build() 함수에서 반환한 위젯이 화면에 렌더링됨
* widget 클래스는 불변의 특성을 가짐. 불편이란 클래스를 생성 후에 해당 인스턴스의 속성을 변경할 수 없음.
* 속성 변경을 위해서는 인스턴스를 다시 만들어서 화면에 반영함.


### StatefulWidget
* 시작은 StatelessWidget과 같음.
* 위젯 내부에서 자체적으로 build() 함수를 재 실행하기 위해서 필요함.
* 위젯 클래스와 스테이트 클래스 2개로 구성되며 생명주기도 복잡함.

1. 상태 변경이 없는 생명주기
2. StatefulWidget 생성자의 매개 변수가 변경되었을 때의 생명주기
3. State 자체적으로 build()를 재실행할 때의 생명주기


#### 상태 변경이 없는 생명주기
* 위젯이 화면에 나타나며 생성되고 화면에서 사라지며 삭제되는 과정을 의미
* 중간에 위젯의 상태가 변경되지 않음.
* StatefulWidget 생성자 실행 → createState()
* State 클래스 내부
  * initState() → didChangeDependencies() → dirty 상태 → build() : UI 반영 → clean 상태 → deactivate() → dispose()

#### StatefulWidget 생성자의 매개변수가 변경됐을 때 생명주기
* StatefulWidget 생성자 실행
* State 클래스 내부
  * didUpdateWidget() → dirty 상태 → build() → clean 상태

#### State 자체적으로 build()를 재실행할 때 생명주기
* State클래스는 setState() 함수를 실행해서 build() 함수를 자체적으로 재실행
* State 클래스 내부
  * setState() → dirty 상태 → build() → clean 상태 

## Timer
* 특정 시간이 지난 후에 일회성 또는 주기적으로 함수를 실행함
* Timer.periodic() : 주기적으로 콜백 함수를 실행
```dart
Timer.periodic(
  Duration(seconds: 3),  // 콜백 함수를 실행할 주기를 지정
  (Timer timer) {}       // 콜백 함수 지정
);

// Timer()
// 3초 후에 hello 라는 문자열 출력
Timer(Duration(seconds: 3), (Timer timer) { print('hello') });

// Timer.periodic()
// 3초마다 hello 라는 문자열 출력
Timer.periodic(Duration(seconds: 3), (Timer timer) { print('hello') });
```

