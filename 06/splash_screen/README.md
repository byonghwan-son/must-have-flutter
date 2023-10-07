* Stateful
  * 위젯의 내부에서 값이 변경되었을 때 위젯 자체에서 다시 렌더링을 실행시킬수 있는 스테이트 풀(Statefull) 위젯
* Stateless
  * 위젯 내부에서 값이 변경되어도 위젯 자체적으로 다시 렌더링할 수 없는 스테이트리스(Stateless) 위젯
* 이 프로젝트는 Stateless 위젯으로 만든다.

* 사용자 정의 위젯을 정의해서 사용함.
* build()함수가 위젯의 UI를 결정함.

* color : Color(0xFFF99231)
  * 첫번째 FF : 투명도 값(alpha)

* 로딩 Indicator
  * LinearProgressIndicator
    * 일자 형태로 애니메이션 실행
  * CircularProgressIndicator
    * 동그라미 형태로 애니메이션 실행
  * 색상
    * backgroundColor : 배경색
    * valueColor : 움직이는 대상의 색상
      * AlwaysStoppedAnimation(Color)


* 복수의 위젯을 담기 위한 컨테이너는?
  * Column
    * 가로 : 최소 (포함된 위젯의 크기에 따라 Column의 Width도 변경됨)
    * 세로 : 최대
  * Row
    * 가로 : 최대
    * 세로 : 최소



