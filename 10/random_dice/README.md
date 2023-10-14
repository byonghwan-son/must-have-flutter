# 디지털 주사위

## 가속도계
* 3개의 축으로 가속도를 측정할 수 있음.
* 핸드폰을 정면으로 보았을 때
  * ← x 축 → : 좌, 우로 움직이는 방향
  * ↑ y 축 ↓ : 위, 아래로 움직이는 방향
  * ↙ z 축 ↗ : 앞, 뒤로 움직이는 방향
* 가속도계를 이용해서 움직임 이벤트를 받으면 x, y, z축의 측정 결과가 모두 double 값으로 반환됨.

## 자이로스코프
* 3개의 축으로 회전속도들 측정할 수 있음
* 핸드폰을 정면으로 보았을 때
  * x 축 기준 : 위, 아래로 회전
  * y 축 기준 : 좌, 우로 회전
  * z 축 기준 : 시계, 반시계로 회전

## Sensor_Plus 패키지
* 가속도계와 자이로스코프 센서 사용 가능
* 흔들리는 범위가 다양하기 때문에 수치를 정규화 해야 함.
  * shake 패키지를 이용해서 정규화 처리

```dart
// 중력을 반영한 가속도계 값
accelerometerEvents.listen((AccelerometerEvent event) {
  print(event.x);
  print(event.y);
  print(event.z);
});

// 중력을 반영하지 않은 순수 사용자의 힘에 의한 가속도계 값
userAccelerometerEvents.listen((UserAccelerometerEvent event) {
  print(event.x);
  print(event.y);
  print(event.z);
})

gyroscopeEvents.listen((GyroscopeEvent event) {
  print(event.x);
  print(event.y);
  print(event.z);
})
```

## 구조
* RootScreen
  * TabBarView
  * BottomNavigationBar
* HomeScreen
* SettingsScreen

## TabBarView 위젯
* 각종 Tab 위젯과 쉽게 연동할 수 있는 UI를 구현
* PageView와 비슷한 기본 애니메이션이 제공됨

## TickerProviderMixin과 vsync
* TickerProviderMixin은 애니메이션 효율을 극대화 함.
* 정확한 한 틱(1FPS)마다 애니메이션을 실행