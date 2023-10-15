# 동영상 플레이어

#### 각 에뮬레이터별 화면 회전하기

#### 시간 변환 및 String 패딩
* Duration 클래스
```dart
Duration duration = Duration(seconds: 192);
print(duration.toString().split('.')[0]);  // 0:03:12 출력
print(duration.toString().split('.')[0].split(':').sublist(1,3).join(':')); // 03:12 출력

print('${duration.inMinutes.toString().padLeft(2, '0')}
  :${(duration.inSeconds % 60).toString().padLeft(2, '0')}'); // 03:12 출력
```

* padLeft(), padRight()
  * 첫번째 인수 : string의 최소 길이
  * 두번째 인수 : 문자의 길이가 부족할 때 채울 문자 값
```dart
print('23'.padLeft(3, '0'));  // 023
print('233'.padLeft(3, '0')); // 233
```
